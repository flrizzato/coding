package br.com.execucao.paymentexternal;

import android.app.Application;

import br.com.execucao.posmp_api.SmartPosHelper;
import br.com.execucao.posmp_api.store.AppStatus;
import br.com.execucao.posmp_api.util.DeviceInfo;

public class App extends Application {

    public static DeviceInfo deviceInfo;

    @Override
    public void onCreate() {

        super.onCreate();

        SmartPosHelper.init(this, AppStatus.ACTIVE);
        SmartPosHelper.getInstance().setDeviceInfoListener(new DeviceInfo.DeviceInfoListener() {
            @Override
            public void OnDeviceInfoReceived(DeviceInfo deviceInfo) {
                App.deviceInfo = deviceInfo;
            }
        });
    }
}
