package br.com.execucao.paymentexternal.gui;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;

import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;

import br.com.execucao.paymentexternal.R;
import br.com.execucao.posmp_api.SmartPosHelper;
import br.com.execucao.posmp_api.connection.Connectivity;

public class NetActivity extends BaseActivity {

    private static final String TAG = "NetActivity";

    private CheckBox checkboxAutoProxy;
    private CheckBox checkboxProxy;
    private Button btTest;

    private Connectivity connectivity;

    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_net);

        connectivity = SmartPosHelper.getInstance().getConnectivity();
        connectivity.setListener(new Connectivity.OnConnectivityChanged() {
            @Override
            public void onChange() {
                NetActivity.this.runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        checkboxProxy.setChecked(connectivity.isUsingProxy());
                    }
                });
            }
        });

        checkboxAutoProxy = findViewById(R.id.checkboxAutoProxy);
        checkboxAutoProxy.setChecked(connectivity.isAutomaticProxy());
        checkboxAutoProxy.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton compoundButton, boolean checked) {
                connectivity.setAutomaticProxy(checked);
                if (checked) {
                    connectivity.checkProxy();
                    checkboxProxy.setChecked(connectivity.isUsingProxy());
                }
                checkboxProxy.setEnabled(!checked);
            }
        });

        checkboxProxy = findViewById(R.id.checkboxProxy);
        checkboxProxy.setChecked(connectivity.isUsingProxy());
        checkboxProxy.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton compoundButton, boolean checked) {
                connectivity.setProxy(checked);
            }
        });

        btTest = findViewById(R.id.btTest);

        connectivity.enable();
    }

    public void btTestConnection(View view) {

        btTest.setEnabled(false);
        showBlockingDialog("Conectando, aguarde...");

        new Thread(new Runnable() {
            @Override
            public void run() {

                URLConnection urlConnection = null;

                try {
                    URL url = new URL("https://www.google.com.br");

                    urlConnection = url.openConnection();
                    HttpURLConnection httpConn = (HttpURLConnection) urlConnection;
                    httpConn.setRequestMethod("GET");
                    httpConn.setConnectTimeout(10000);
                    int statusCode = httpConn.getResponseCode();
                    onFinish("Conexão retornou " + statusCode);

                } catch (Exception e) {
                    onFinish("Erro: " + e.getMessage());
                }
            }

            private void onFinish(String msg) {

                NetActivity.this.runOnUiThread(new Runnable() {
                    @Override
                    public void run() {

                        NetActivity.this.dismissBlockingDialog();
                        NetActivity.this.showAlert("Teste de conexão", msg);
                        NetActivity.this.btTest.setEnabled(true);

                    }
                });
            }
        }).start();
    }

    @Override
    protected void onDestroy() {
        connectivity.disable();
        super.onDestroy();
    }
}
