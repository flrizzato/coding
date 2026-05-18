package br.com.embarcadero.getnetcamera;

import android.os.RemoteException;
import com.getnet.posdigital.camera.ICameraCallback;

public class CameraCallbackInstance {
    public static ICameraCallback getInstance(final CameraCallback callback) {
        return new ICameraCallback.Stub() {
            @Override
            public void onSuccess(String s) throws RemoteException {
                callback.onSuccess(s);
            }

            @Override
            public void onTimeout() throws RemoteException {
                callback.onTimeout();

            }

            @Override
            public void onCancel() throws RemoteException {
                callback.onCancel();

            }

            @Override
            public void onError(String s) throws RemoteException {
                callback.onError(s);

            }
        };
    }

}
