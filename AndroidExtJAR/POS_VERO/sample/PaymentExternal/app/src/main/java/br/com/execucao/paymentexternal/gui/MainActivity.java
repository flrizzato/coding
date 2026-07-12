package br.com.execucao.paymentexternal.gui;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;

import br.com.execucao.paymentexternal.R;

public class MainActivity extends BaseActivity {

    private static final String TAG = "MainActivity";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void btPayment(View view) {
        Intent intent = new Intent(this, PaymentActivity.class);
        startActivity(intent);
    }

    public void btStore(View view) {
        Intent intent = new Intent(this, StoreActivity.class);
        startActivity(intent);
    }

    public void btPrinter(View view) {
        Intent intent = new Intent(this, PrinterActivity.class);
        startActivity(intent);
    }

    public void btNet(View view) {
        Intent intent = new Intent(this, NetActivity.class);
        startActivity(intent);
    }

    public void btMifare(View view) {
        Intent intent = new Intent(this, MifareActivity.class);
        startActivity(intent);
    }
}
