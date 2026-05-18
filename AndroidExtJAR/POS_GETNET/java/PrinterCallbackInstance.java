package br.com.embarcadero.getnetprinter;

import android.os.RemoteException;
import com.getnet.posdigital.printer.IPrinterCallback;

public class PrinterCallbackInstance {
    public static IPrinterCallback getInstance(final PrinterCallback callback) {
        return new IPrinterCallback.Stub() {
            @Override
            public void onSuccess() throws RemoteException {
                callback.onSuccess();
            }

            @Override
            public void onError(int i) throws RemoteException {
                callback.onError(i);
            }
        };
    }
}
