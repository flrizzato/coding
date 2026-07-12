package br.com.execucao.paymentexternal.gui;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;

import br.com.execucao.paymentexternal.R;
import br.com.execucao.posmp_api.printer.Printer;
import br.com.execucao.posmp_api.printer.PrinterListener;

public class PrinterActivity extends BaseActivity {

    private static final String TAG = "PrinterActivity";

    private CheckBox checkboxEject;
    private Button btPrintText;
    private Button btPrintLogo;
    private Printer printer;

    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_printer);

        checkboxEject = findViewById(R.id.checkboxEject);
        btPrintText = findViewById(R.id.btPrintText);
        btPrintLogo = findViewById(R.id.btPrintLogo);

        if (supportsPrinter()) {
            printer = Printer.getInstance(this);
            printer.open();

        } else {
            checkboxEject.setEnabled(false);
            btPrintText.setEnabled(false);
            btPrintLogo.setEnabled(false);
            showToast("Printer not supported");
        }

        checkboxEject.setChecked(true);
        checkboxEject.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton compoundButton, boolean checked) {
                printer.setFeedLineAuto(checked);
            }
        });
    }

    private boolean supportsPrinter() {

        String[] models = new String[]{"GPOS700", "P2-B", "L3", "N950" ,"N950K","N950S"};

        for (String model : models) {
            if (model.equals(Build.MODEL))
                return true;
        }
        return false;
    }

    public void btPrintText(View view) {

        printer.print("Teste de impressão", new PrinterListener.Stub() {
            @Override
            public void onFinish() throws RemoteException {
                showAlertOnUi("PrintText", "Print onFinish");
            }

            @Override
            public void onError(int i) throws RemoteException {
                showAlertOnUi("PrintText", "Print onError " + (i == Printer.ERRO_SEM_PAPEL ? "Sem papel" : String.valueOf(i)));
            }
        });
    }

    public void btPrintLogo(View view) {

        Bitmap logo = BitmapFactory.decodeResource(getResources(), R.drawable.logo_vero);

        printer.print(logo, new PrinterListener.Stub() {
            @Override
            public void onFinish() throws RemoteException {
                showAlertOnUi("PrintBitmap", "Print onFinish");
            }

            @Override
            public void onError(int i) throws RemoteException {
                // provavelmente sem papel
                showAlertOnUi("PrintBitmap", "Print onError " + (i == Printer.ERRO_SEM_PAPEL ? "Sem papel" : String.valueOf(i)));
            }
        });
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
        printer.close();
        super.onDestroy();
    }
}
