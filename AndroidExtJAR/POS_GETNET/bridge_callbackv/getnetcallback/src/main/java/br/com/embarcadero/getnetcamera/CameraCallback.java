package br.com.embarcadero.getnetcamera;

import android.os.RemoteException;

public interface CameraCallback {
    void onSuccess(String var1) throws RemoteException;

    void onTimeout() throws RemoteException;

    void onCancel() throws RemoteException;

    void onError(String var1) throws RemoteException;

}
