package br.com.embarcadero.getnetprinter;

import android.os.RemoteException;

public interface PrinterCallback {
    void onSuccess() throws RemoteException;

    void onError(int i) throws RemoteException;

}





