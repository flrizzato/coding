package br.com.execucao.paymentexternal.gui;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.Spinner;

import java.io.BufferedInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.ArrayList;

import br.com.execucao.paymentexternal.R;

public class PaymentActivity extends BaseActivity {

    private static final String TAG = "PaymentActivity";

    private static final int REQUEST_CODE_PAY = 1;
    private static final int REQUEST_CODE_REPRINT = 2;
    private static final int REQUEST_CODE_CANCEL = 3;
    private static final int REQUEST_CODE_QUERY = 4;

    // Ações
    private static final String INTENT_PAGAR = "br.com.execucao.PAGAR";
    private static final String INTENT_ESTORNAR = "br.com.execucao.ESTORNAR";
    private static final String INTENT_QUERY = "br.com.execucao.action.QUERY_TRANSACTION_STATUS";

    // Extras da solicitação
    public static final String REQUEST_TRANSACAO = "br.com.execucao.extra.REQUEST_CODE";
    public static final String IMPRIMIR_COMPROVANTE = "IMPRIMIR_COMPROVANTE";
    public static final String AGUARDAR_CONFIRMA = "br.com.execucao.extra.WAIT_USER_CONFIRMATION";

    public static final String VALOR_TRANSACAO = "VALOR";
    public static final String TRANSACAO = "TRANSACAO";
    public static final String NUMERO_PARCELAS = "NUMPARCELAS";
    public static final String PRAZO = "PRAZO";
    public static final String DIA = "DIA";

    public static final String LISTA_NSU = "LIST_NSU";

    // Extras de retorno
//    public static final String VALOR_TRANSACAO = "VALOR";
//    public static final String TRANSACAO = "TRANSACAO";
    public static final String PARCELAS = "PARCELAS";
    public static final String SERIAL = "SERIAL";
    public static final String BANDEIRA = "BANDEIRA";
    public static final String NUMCARTAO = "NUMCARTAO";
    public static final String AUTORIZACAO = "AUTORIZACAO";
    public static final String NSU = "NSU";
    public static final String CNPJ_ADQUIRENTE = "CNPJ_ADQUIRENTE";
    public static final String NOME_ADQUIRENTE = "NOME_ADQUIRENTE";
    public static final String CNPJ_ESTABELECIMENTO = "CNPJ_ESTABELECIMENTO";
    public static final String NOME_ESTABELECIMENTO = "NOME_ESTABELECIMENTO";
    public static final String COMPROVANTE_TXT_LOJISTA = "COMPROVANTE";
    public static final String COMPROVANTE_TXT_CLIENTE = "COMPROVANTE_CLIENTE_TXT";
    public static final String COMPROVANTE_IMG_LOJISTA = "COMPROVANTE_LOJISTA";
    public static final String COMPROVANTE_IMG_CLIENTE = "COMPROVANTE_CLIENTE";
    public static final String ERRO = "ERRO";

    // Extras de configuração de tipo de transação
    private static final String TRANSACAO_CREDITO = "CREDITO_GENERICO";
    private static final String TRANSACAO_CREDITO_VISTA = "CREDITO";
    private static final String TRANSACAO_CREDITO_PARCELADO_LOJISTA = "PARCELADO_LOJISTA";
    private static final String TRANSACAO_CRETIDO_PARCELADO_EMISSOR = "PARCELADO_EMISSOR";
    private static final String TRANSACAO_CREDITO_REPAY = "REPAY";

    private static final String TRANSACAO_DEBITO = "DEBITO";
    public static final String TRANSACAO_DEBITO_VISTA = "DEBITO_VISTA";
    public static final String TRANSACAO_BANRICOMPRAS_VISTA = "BANRICOMPRAS";
    private static final String TRANSACAO_BANRICOMPRAS_PREDATADO = "PREDATADO";
    private static final String TRANSACAO_BANRICOMPRAS_PARCELADO = "DEBITO_PARCELADO";
    private static final String TRANSACAO_BANRICOMPRAS_CREDITO_1_MINUTO = "CREDITO1M";

    private static final String TRANSACAO_VOUCHER = "VOUCHER";

    private static final String TRANSACAO_WALLET = "WALLET";
    private static final String TRANSACAO_PIX = "PIX";

    public static final String TRANSACAO_DIGITADA = "DIGITADA";
    public static final String TRANSACAO_DIGITADA_VEROPAY = "VEROPAY";

    private CheckBox checkboxAmount;
    private EditText editAmount;
    private CheckBox checkboxPaymentType;
    private Spinner spinnerPaymentType;
    private CheckBox checkboxPaymentMethod;
    private Spinner spinnerPaymentMethod;
    private CheckBox checkboxPrint;
    private CheckBox checkboxWaitUser;
    private Button btReprint;
    private Button btCancel;
    private Button btQuery;

    private String type;
    private String method;
    private boolean printReceipt;

    private String lastTransactionNsu;
    private int lastTransactionRequest;

    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_payment);

        checkboxAmount = findViewById(R.id.checkboxAmount);
        editAmount = findViewById(R.id.editAmount);
        checkboxPaymentType = findViewById(R.id.checkboxPaymentType);
        spinnerPaymentType = findViewById(R.id.spinnerPaymentType);
        checkboxPaymentMethod = findViewById(R.id.checkboxPaymentMethod);
        spinnerPaymentMethod = findViewById(R.id.spinnerPaymentMethod);
        checkboxPrint = findViewById(R.id.checkboxPrint);
        checkboxWaitUser = findViewById(R.id.checkboxWaitUser);
        btReprint = findViewById(R.id.btReprint);
        btCancel = findViewById(R.id.btCancel);
        btQuery = findViewById(R.id.btQuery);

        checkboxAmount.setChecked(false);
        checkboxAmount.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton compoundButton, boolean checked) {

                editAmount.setEnabled(checked);
                checkboxPaymentType.setEnabled(checked);

                if (!checked) {
                    checkboxPaymentType.setChecked(false);
                    spinnerPaymentType.setSelection(0);
                    spinnerPaymentType.setEnabled(false);
                    checkboxPaymentMethod.setChecked(false);
                    checkboxPaymentMethod.setEnabled(false);
                    spinnerPaymentMethod.setSelection(0);
                    spinnerPaymentMethod.setEnabled(false);
                }
            }
        });

        checkboxPaymentType.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton compoundButton, boolean checked) {

                spinnerPaymentType.setEnabled(checked);

                if (checked)
                    spinnerPaymentType.performClick();
                else {
                    spinnerPaymentType.setSelection(0);
                    checkboxPaymentMethod.setChecked(false);
                    checkboxPaymentMethod.setEnabled(false);
                    spinnerPaymentMethod.setSelection(0);
                    spinnerPaymentMethod.setEnabled(false);
                }
            }
        });

        final String[] paymentTypes = new String[]{"", "Banricompras", "Crédito", "Débito", "Vero X", "Vero Wallet", "Digitada", "Vero Pay"};
        final String[] paymentMethodsBanri = new String[]{"", "A vista", "Parcelado", "Predatado", "Crédito 1 Minuto"};
        final String[] paymentMethodsCredit = new String[]{"", "A vista", "Parcelado Emissor", "Parcelado Lojista", "Repay"};
        final String[] paymentMethodsDebit = new String[]{"", "A vista"};

        spinnerPaymentType.setEnabled(false);
        ArrayAdapter<String> arrayPaymentTypes = new ArrayAdapter<String>(this, android.R.layout.simple_spinner_item, paymentTypes);
        spinnerPaymentType.setAdapter(arrayPaymentTypes);
        spinnerPaymentType.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long l) {

                type = i > 0 ? paymentTypes[i] : null;

                if ("Banricompras".equals(type)) {
                    ArrayAdapter<String> arrayPaymentMethod = new ArrayAdapter<String>(PaymentActivity.this, android.R.layout.simple_spinner_item, paymentMethodsBanri);
                    spinnerPaymentMethod.setAdapter(arrayPaymentMethod);
                    arrayPaymentTypes.notifyDataSetChanged();
                    checkboxPaymentMethod.setEnabled(true);

                } else if ("Crédito".equals(type)) {
                    ArrayAdapter<String> arrayPaymentMethod = new ArrayAdapter<String>(PaymentActivity.this, android.R.layout.simple_spinner_item, paymentMethodsCredit);
                    spinnerPaymentMethod.setAdapter(arrayPaymentMethod);
                    arrayPaymentTypes.notifyDataSetChanged();
                    checkboxPaymentMethod.setEnabled(true);

                } else if ("Débito".equals(type)) {
                    ArrayAdapter<String> arrayPaymentMethod = new ArrayAdapter<String>(PaymentActivity.this, android.R.layout.simple_spinner_item, paymentMethodsDebit);
                    spinnerPaymentMethod.setAdapter(arrayPaymentMethod);
                    arrayPaymentTypes.notifyDataSetChanged();
                    checkboxPaymentMethod.setEnabled(true);

                } else {
                    checkboxPaymentMethod.setEnabled(false);
                    spinnerPaymentMethod.setEnabled(false);
                }
            }

            @Override
            public void onNothingSelected(AdapterView<?> adapterView) {
                type = null;
            }
        });

        checkboxPaymentMethod.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton compoundButton, boolean checked) {
                spinnerPaymentMethod.setEnabled(checked);

                if (checked)
                    spinnerPaymentMethod.performClick();
                else
                    spinnerPaymentMethod.setSelection(0);
            }
        });

        spinnerPaymentMethod.setEnabled(false);
        spinnerPaymentMethod.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long l) {

                if ("Banricompras".equals(type))
                    method = i > 0 ? paymentMethodsBanri[i] : null;
                else if ("Crédito".equals(type))
                    method = i > 0 ? paymentMethodsCredit[i] : null;
                else if ("Débito".equals(type))
                    method = i > 0 ? paymentMethodsDebit[i] : null;
            }

            @Override
            public void onNothingSelected(AdapterView<?> adapterView) {
                method = null;
            }
        });


        if (supportsPrinter()) {
            printReceipt = true;
            checkboxPrint.setChecked(true);
        } else {
            printReceipt = false;
            checkboxPrint.setChecked(false);
            checkboxPrint.setEnabled(false);
            btReprint.setEnabled(false);
        }

        checkboxWaitUser.setChecked(true);

        lastTransactionNsu = null;
    }

    private boolean supportsPrinter() {

        String[] models = new String[]{"GPOS700", "P2-B", "L3"};

        for (String model : models) {
            if (model.equals(Build.MODEL))
                return true;
        }
        return false;
    }

    public void btPay(View view) {

        Intent intent = new Intent(INTENT_PAGAR);
        intent.putExtra(IMPRIMIR_COMPROVANTE, printReceipt);

        int amount = -1;
        if (checkboxAmount.isChecked()) {
            try {
                amount = Integer.parseInt(editAmount.getText().toString().replace(",", "").replace(".", ""));
            } catch (Exception ignored) {
            }
        }

        if (amount > 0) {
            intent.putExtra(VALOR_TRANSACAO, amount);

            if (checkboxPaymentType.isEnabled() && type != null) {

                switch (type) {

                    case "Banricompras": {

                        if (checkboxPaymentMethod.isEnabled() && method != null) {

                            switch (method) {
                                case "A vista": {
                                    intent.putExtra(TRANSACAO, TRANSACAO_BANRICOMPRAS_VISTA);
                                    break;
                                }
                                case "Parcelado": {
                                    intent.putExtra(TRANSACAO, TRANSACAO_BANRICOMPRAS_PARCELADO);
                                    intent.putExtra(NUMERO_PARCELAS, 4);
                                    break;
                                }
                                case "Predatado": {
                                    intent.putExtra(TRANSACAO, TRANSACAO_BANRICOMPRAS_PREDATADO);
                                    intent.putExtra(PRAZO, 30);
                                    break;
                                }
                                case "Crédito 1 Minuto": {
                                    intent.putExtra(TRANSACAO, TRANSACAO_BANRICOMPRAS_CREDITO_1_MINUTO);
                                    intent.putExtra(NUMERO_PARCELAS, 6);
                                    break;
                                }
                            }
                            break;

                        } else {
                            intent.putExtra(TRANSACAO, TRANSACAO_DEBITO);
                            break;
                        }
                    }
                    case "Crédito": {

                        if (checkboxPaymentMethod.isEnabled() && method != null) {

                            switch (method) {
                                case "A vista": {
                                    intent.putExtra(TRANSACAO, TRANSACAO_CREDITO_VISTA);
                                    break;
                                }
                                case "Parcelado Emissor": {
                                    intent.putExtra(TRANSACAO, TRANSACAO_CRETIDO_PARCELADO_EMISSOR);
                                    intent.putExtra(NUMERO_PARCELAS, 4);
                                    break;
                                }
                                case "Parcelado Lojista": {
                                    intent.putExtra(TRANSACAO, TRANSACAO_CREDITO_PARCELADO_LOJISTA);
                                    intent.putExtra(NUMERO_PARCELAS, 2);
                                    break;
                                }
                                case "Repay": {
                                    intent.putExtra(TRANSACAO, TRANSACAO_CREDITO_REPAY);
                                    intent.putExtra(PRAZO, 30);
                                    intent.putExtra(DIA, 12);
                                    break;
                                }
                            }
                            break;

                        } else {
                            intent.putExtra(TRANSACAO, TRANSACAO_CREDITO);
                            break;
                        }
                    }
                    case "Débito": {

                        if (checkboxPaymentMethod.isEnabled() && method != null) {
                            intent.putExtra(TRANSACAO, TRANSACAO_DEBITO_VISTA);
                            break;
                        } else {
                            intent.putExtra(TRANSACAO, TRANSACAO_DEBITO);
                            break;
                        }
                    }
                    case "Vero X": {
                        intent.putExtra(TRANSACAO, TRANSACAO_PIX);
                        break;
                    }
                    case "Vero Wallet": {
                        intent.putExtra(TRANSACAO, TRANSACAO_WALLET);
                        break;
                    }
                    case "Digitada": {
                        intent.putExtra(TRANSACAO, TRANSACAO_DIGITADA);
                        break;
                    }
                    case "Vero Pay": {
                        intent.putExtra(TRANSACAO, TRANSACAO_DIGITADA_VEROPAY);
                        break;
                    }
                }
            }
        }

        if (checkboxPrint.isEnabled())
            intent.putExtra(IMPRIMIR_COMPROVANTE, checkboxPrint.isChecked());

        intent.putExtra(AGUARDAR_CONFIRMA, checkboxWaitUser.isChecked());

        lastTransactionRequest++;
        intent.putExtra(REQUEST_TRANSACAO, lastTransactionRequest);
        if (callApi(intent, REQUEST_CODE_PAY))
            btQuery.setEnabled(true);
    }

    private boolean callApi(Intent intent, int requestCode) {
        try {
            startActivityForResult(intent, requestCode);
            return true;
        } catch (Exception e) {
            showToast("Não localizamos aplicativo de pagamento neste terminal.");
            return false;
        }
    }

    public void btReprint(View view) {

        if (supportsPrinter()) {

            if (lastTransactionNsu != null) {

                Intent intent = new Intent(INTENT_PAGAR);
                ArrayList<String> listNsu = new ArrayList<>();
                listNsu.add(lastTransactionNsu);
                intent.putExtra(LISTA_NSU, listNsu);

                callApi(intent, REQUEST_CODE_REPRINT);
            }
        } else
            showToast("Modelo não suporta impressão de comprovantes.");
    }

    public void btCancel(View view) {

        if (lastTransactionNsu != null) {

            Intent intent = new Intent(INTENT_ESTORNAR);
            intent.putExtra(NSU, lastTransactionNsu);
            callApi(intent, REQUEST_CODE_CANCEL);
        }
    }

    public void btQuery(View view) {

        if (lastTransactionRequest > 0) {

            Intent intent = new Intent(INTENT_QUERY);
            intent.putExtra(REQUEST_TRANSACAO, lastTransactionRequest);
            callApi(intent, REQUEST_CODE_CANCEL);
        }
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {

        if (requestCode == REQUEST_CODE_PAY || requestCode == REQUEST_CODE_CANCEL || requestCode == REQUEST_CODE_QUERY) {

            if (resultCode == RESULT_OK) {

                if (data == null) {
                    showToast("Transação rejeitada!");
                    btReprint.setEnabled(false);
                    btCancel.setEnabled(false);

                } else if (data.hasExtra(AUTORIZACAO) && !data.getStringExtra(AUTORIZACAO).isEmpty()) {

                    Bundle extras = data.getExtras();
                    StringBuilder retorno = new StringBuilder();

                    for (String key : extras.keySet()) {

                        Object value = extras.get(key);

                        if (retorno.length() > 0)
                            retorno.append("\n");

                        switch (key) {

                            case VALOR_TRANSACAO:
                                retorno.append(VALOR_TRANSACAO).append(": ").append((String) value);
                                break;

                            case TRANSACAO:
                                retorno.append(TRANSACAO).append(": ").append((String) value);
                                break;

                            case PARCELAS:
                                retorno.append(PARCELAS).append(": ").append((String) value);
                                break;

                            case SERIAL:
                                retorno.append(SERIAL).append(": ").append((String) value);
                                break;

                            case BANDEIRA:
                                retorno.append(BANDEIRA).append(": ").append((String) value);
                                break;

                            case NUMCARTAO:
                                retorno.append(NUMCARTAO).append(": ").append((String) value);
                                break;

                            case AUTORIZACAO:
                                retorno.append(AUTORIZACAO).append(": ").append((String) value);
                                break;

                            case NSU:
                                this.lastTransactionNsu = (String) value;
                                retorno.append(NSU).append(": ").append((String) value);
                                break;

                            case CNPJ_ADQUIRENTE:
                                retorno.append(CNPJ_ADQUIRENTE).append(": ").append((String) value);
                                break;

                            case NOME_ADQUIRENTE:
                                retorno.append(NOME_ADQUIRENTE).append(": ").append((String) value);
                                break;

                            case CNPJ_ESTABELECIMENTO:
                                retorno.append(CNPJ_ESTABELECIMENTO).append(": ").append((String) value);
                                break;

                            case NOME_ESTABELECIMENTO:
                                retorno.append(NOME_ESTABELECIMENTO).append(": ").append((String) value);
                                break;

                            case COMPROVANTE_TXT_LOJISTA:
                                retorno.append(COMPROVANTE_TXT_LOJISTA).append(": ").append((String) value);
                                break;

                            case COMPROVANTE_TXT_CLIENTE:
                                retorno.append(COMPROVANTE_TXT_CLIENTE).append(": ").append((String) value);
                                break;

                            case COMPROVANTE_IMG_LOJISTA:
                                try {
                                    InputStream inputStream = getContentResolver().openInputStream((Uri) value);
                                    BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
                                    Bitmap bitmapLojista = BitmapFactory.decodeStream(bufferedInputStream);
                                    bitmapLojista.recycle();
                                } catch (FileNotFoundException e) {
                                    e.printStackTrace();
                                }
                                break;

                            case COMPROVANTE_IMG_CLIENTE:
                                try {
                                    InputStream inputStream = getContentResolver().openInputStream((Uri) value);
                                    BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
                                    Bitmap bitmapCliente = BitmapFactory.decodeStream(bufferedInputStream);
                                    bitmapCliente.recycle();
                                } catch (FileNotFoundException e) {
                                    e.printStackTrace();
                                }
                                break;

                            default:
                                try {
                                    retorno.append(key).append(key).append(": ").append(value);
                                } catch (Exception ignored) {
                                }
                                break;
                        }
                    }
                    showAlert("Transação Aprovada!", retorno.toString());
                    btReprint.setEnabled(true);
                    btCancel.setEnabled(true);

                } else if (data.hasExtra(ERRO)) {
                    showAlert("Transação rejeitada!", data.getStringExtra(ERRO));
                    btReprint.setEnabled(false);
                    btCancel.setEnabled(false);
                }

            } else if (resultCode == RESULT_CANCELED) {
                showToast("Transação cancelada!");
                btReprint.setEnabled(false);
                btCancel.setEnabled(false);
            }
        }
    }
}
