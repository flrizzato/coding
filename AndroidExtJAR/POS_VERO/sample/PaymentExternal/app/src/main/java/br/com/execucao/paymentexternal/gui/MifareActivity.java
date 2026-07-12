package br.com.execucao.paymentexternal.gui;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import android.view.View;
import android.widget.Button;

import java.util.Arrays;
import java.util.Random;

import br.com.execucao.paymentexternal.R;
import br.com.execucao.paymentexternal.util.Utils;
import br.com.execucao.posmp_api.SmartPosHelper;
import br.com.execucao.posmp_api.mifare.MifareService;
import br.com.execucao.smartPOSService.mifare.IOnMifareDetected;

public class MifareActivity extends BaseActivity {

    private static final String TAG = "MifareActivity";

    private Button btDetect;

    private MifareService mifareService;

    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_mifare);

        mifareService = SmartPosHelper.getInstance().getMifare();
        btDetect = findViewById(R.id.btDetect);

        if (supportsMifare()) {
            mifareService.open();
            waitForService();

        } else {
            btDetect.setEnabled(false);
            showToast("Mifare not supported");
        }
    }

    private boolean supportsMifare() {

        String paymentAppPackageName;
        if (Build.MODEL.equals("GPOS700"))
            paymentAppPackageName = "br.com.execucao.veromobile";
        else if (Build.MODEL.equals("P2-B"))
            paymentAppPackageName = "br.com.execucao.veromobile.sunmiP2";
        else if (Build.MODEL.equals("L3"))
            paymentAppPackageName = "br.com.execucao.veromobile.positivol3";
        else
            return false;

        PackageManager packageManager = getPackageManager();
        try {
            PackageInfo appInfo = packageManager.getPackageInfo(paymentAppPackageName, 0);
            return appInfo.versionCode >= 682;

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    private void waitForService() {

        showBlockingDialog("Conectando ao serviço");
        new Thread(new Runnable() {
            @Override
            public void run() {

                while (true) {
                    if (mifareService.isConnected())
                        break;

                    try {
                        Thread.sleep(1000);
                    } catch (InterruptedException e) {
                        throw new RuntimeException(e);
                    }
                }

                MifareActivity.this.runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        dismissBlockingDialog();
                    }
                });
            }
        }).start();
    }

    public void btDetect(View view) {

        showBlockingDialog("Aproxime o cartão Mifare");

        try {
            mifareService.detectCard(new IOnMifareDetected.Stub() {
                @Override
                public void onDetect(byte[] uuid) throws RemoteException {

                    try {
                        Log.i(TAG, "onDetect, UUID: " + Utils.bin2hex(uuid));

                        final int block = 12;
                        int keyType = 0; // A = 0; B = 1
                        final byte[] key = Utils.hex2bin("FFFFFFFFFFFF");

                        int res = mifareService.authenticate(block, keyType, key);
                        if (res != 0) {
                            Log.i(TAG, "authenticate failed: " + res);
                            return;
                        }

                        byte[] write = new byte[16];
                        new Random().nextBytes(write);
                        Log.i(TAG, "writing " + Utils.bin2hex(write));

                        res = mifareService.write(block, write);
                        if (res < 0) {
                            Log.i(TAG, "write failed: " + res);
                            showAlertOnUi("Mifare", "[" + Utils.bin2hex(uuid) + "] write failed: " + res);
                            return;
                        }

                        res = mifareService.authenticate(block, keyType, key);
                        if (res != 0) {
                            Log.i(TAG, "authenticate failed: " + res);
                            showAlertOnUi("Mifare", "[" + Utils.bin2hex(uuid) + "] authenticate failed: " + res);
                            return;
                        }

                        byte[] read = new byte[16];
                        res = mifareService.read(block, read);

                        if (res > 0) {
                            Log.i(TAG, "read: " + Utils.bin2hex(read));
                            if (Arrays.equals(write, read)) {
                                Log.i(TAG, "Write and read successful");
                                showAlertOnUi("Mifare", "[" + Utils.bin2hex(uuid) + "] Write and read successful");
                            } else {
                                Log.i(TAG, "Write and read failed");
                                showAlertOnUi("Mifare", "[" + Utils.bin2hex(uuid) + "] Write and read failed");
                            }
                        } else {
                            Log.i(TAG, "read failed: " + res);
                            showAlertOnUi("Mifare", "[" + Utils.bin2hex(uuid) + "] read failed: " + res);
                        }

                    } finally {
                        MifareActivity.this.runOnUiThread(new Runnable() {
                            @Override
                            public void run() {
                                MifareActivity.this.dismissBlockingDialog();
                            }
                        });
                    }
                }

                @Override
                public void onFail(String s) throws RemoteException {

                    Log.i(TAG, "onFail, error: " + s);
                    showAlertOnUi("Mifare", "onFail, error: " + s);

                    MifareActivity.this.runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            MifareActivity.this.dismissBlockingDialog();
                        }
                    });
                }
            }, 10);

        } catch (IllegalStateException e) {
            e.printStackTrace();
        }
    }


    private void showAlertOnUi(String title, String msg) {
        runOnUiThread(new Runnable() {
            @Override
            public void run() {
                showAlert(title, msg);
            }
        });
    }

    @Override
    protected void onDestroy() {
        mifareService.close();
        super.onDestroy();
    }
}
