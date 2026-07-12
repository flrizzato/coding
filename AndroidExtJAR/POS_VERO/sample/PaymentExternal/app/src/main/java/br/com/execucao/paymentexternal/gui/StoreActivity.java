package br.com.execucao.paymentexternal.gui;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import android.view.View;

import org.json.JSONObject;

import br.com.execucao.paymentexternal.App;
import br.com.execucao.paymentexternal.R;
import br.com.execucao.posmp_api.SmartPosHelper;
import br.com.execucao.posmp_api.socket.SituationsEnum;
import br.com.execucao.posmp_api.socket.SocketInformation;
import br.com.execucao.posmp_api.store.AppStatus;

public class StoreActivity extends BaseActivity {

    private static final String TAG = "StoreActivity";

    private boolean supportsBroadcast;

    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_store);
    }

    @Override
    protected void onResume() {
        super.onResume();
        supportsBroadcast = supportsBroadcast();
    }

    public void btSend(View view) {

        if (supportsBroadcast)
            SmartPosHelper.getInstance().setAppStatus(AppStatus.ACTIVE); // pode ser usado o status que desejar
        else
            SocketInformation.sendInformation(SituationsEnum.ATV, this);
    }

    public void btSendAndReceive(View view) {

        if (supportsBroadcast) {
            // informações obtidas na classe App
            if (App.deviceInfo != null) {
                showAlert("DeviceInfo", App.deviceInfo.getPlatform()
                        + "\n" + App.deviceInfo.getMerchantName()
                        + "\n" + App.deviceInfo.getMerchantDocumentNumber()
                        + "\n" + App.deviceInfo.getSerialNumber()
                        + "\n" + App.deviceInfo.getLogicNumber()
                );
            }
        } else
            new Thread(new Runnable() {
                @Override
                public void run() {
                    JSONObject resp = SocketInformation.sendAndReceiveInformation(StoreActivity.this, SituationsEnum.ATV);
                    Log.i(TAG, "sendAndReceiveInformation: " + (resp != null ? resp.toString() : "null"));
                }
            }).start();
    }

    private boolean supportsBroadcast() {

        PackageManager packageManager = getPackageManager();
        try {
            PackageInfo appInfo = packageManager.getPackageInfo("br.com.veroStore", 0);
            return appInfo.versionCode >= 1000081;

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
