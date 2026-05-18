unit jid.classes;

interface

uses
  Androidapi.JNIBridge, Androidapi.JNI.JavaTypes, Androidapi.JNI.Os, Androidapi.JNI.GraphicsContentViewText, Androidapi.JNI.Location, Androidapi.JNI.App;

type
  JAppStatus = interface;
  JBatteryInfo = interface;
  JConnectivity = interface;
  JConnectivity_OnConnectivityChanged = interface;
  JDeviceInfo = interface;
  JDeviceInfo_DeviceInfoListener = interface;
  JIOnMifareDetected = interface;
  JIOnPrintFinished = interface;
  JIProxy = interface;
  JMifareService = interface;
  JPreferencesService = interface;
  JPrinter = interface;
  JPrinterListener = interface;
  JPrinterService = interface;
  JProxy = interface;
  JProxy_Type = interface;
  JSmartPosHelper = interface;

  JIOnPrintFinishedClass = interface(JIInterfaceClass)
    ['{A3BBE284-9098-4F92-ACB0-92535210DF4D}']
  end;

  [JavaSignature('br/com/execucao/smartPOSService/printer/IOnPrintFinished')]
  JIOnPrintFinished = interface(JIInterface)
    ['{5C563DFE-532D-4BE8-BFDF-B3EE2560AA20}']
    procedure onFailed(int: Integer; string_1: JString); cdecl;
    procedure onSuccess; cdecl;
  end;
  TJIOnPrintFinished = class(TJavaGenericImport<JIOnPrintFinishedClass, JIOnPrintFinished>) end;

  JIProxyClass = interface(JObjectClass)
    ['{5D5DE48A-D075-4EC0-AA4C-B0B6B51EA72D}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init: JIProxy; cdecl;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('br/com/execucao/smartPOSService/preferences/IProxy')]
  JIProxy = interface(JObject)
    ['{32A77F11-88C6-4BFC-AFB4-3C868E741A3F}']
    function _Getip: JString; cdecl;
    function _Getport: Integer; cdecl;
    function describeContents: Integer; cdecl;
    procedure readFromParcel(parcel: JParcel); cdecl;
    procedure writeToParcel(parcel: JParcel; int: Integer); cdecl;
    property ip: JString read _Getip;
    property port: Integer read _Getport;
  end;
  TJIProxy = class(TJavaGenericImport<JIProxyClass, JIProxy>) end;

  JIOnMifareDetectedClass = interface(JIInterfaceClass)
    ['{18876641-10DC-41EC-ACFF-7FD12AD1AD25}']
  end;

  [JavaSignature('br/com/execucao/smartPOSService/mifare/IOnMifareDetected')]
  JIOnMifareDetected = interface(JIInterface)
    ['{D86E7313-4FB7-4C6B-AB66-BF47D640B7AB}']
    procedure onDetect(bytes: TJavaArray<Byte>); cdecl;
    procedure onFail(string_1: JString); cdecl;
  end;
  TJIOnMifareDetected = class(TJavaGenericImport<JIOnMifareDetectedClass, JIOnMifareDetected>) end;

  JDeviceInfoClass = interface(JObjectClass)
    ['{13B0476F-4FAE-4C3C-9D68-8233A0904531}']
    {class} function init(string_1: JString; string_2: JString; string_3: JString; string_4: JString): JDeviceInfo; cdecl;
  end;

  [JavaSignature('br/com/execucao/posmp_api/util/DeviceInfo')]
  JDeviceInfo = interface(JObject)
    ['{BC9F73DE-5A9C-4B86-B262-CA015414F32E}']
    function equals(object_1: JObject): Boolean; cdecl;
    function getLogicNumber: JString; cdecl;
    function getMerchantDocumentNumber: JString; cdecl;
    function getMerchantName: JString; cdecl;
    function getPlatform: JString; cdecl;
    function getSerialNumber: JString; cdecl;
    function isActive: Boolean; cdecl;
  end;
  TJDeviceInfo = class(TJavaGenericImport<JDeviceInfoClass, JDeviceInfo>) end;

  JDeviceInfo_DeviceInfoListenerClass = interface(IJavaClass)
    ['{DF34076B-71FB-44CA-9EC5-60BC4D9E624B}']
  end;

  [JavaSignature('br/com/execucao/posmp_api/util/DeviceInfo$DeviceInfoListener')]
  JDeviceInfo_DeviceInfoListener = interface(IJavaInstance)
    ['{849D32BE-8F87-4E43-960B-529D1F3A24FF}']
    procedure OnDeviceInfoReceived(deviceInfo: JDeviceInfo); cdecl;
  end;
  TJDeviceInfo_DeviceInfoListener = class(TJavaGenericImport<JDeviceInfo_DeviceInfoListenerClass, JDeviceInfo_DeviceInfoListener>) end;

  JBatteryInfoClass = interface(JObjectClass)
    ['{7F5CEA7A-8982-43ED-8E29-60A0421FB614}']
    {class} function getPercentage(intent: JIntent): Integer; overload; cdecl;
    {class} function init(context: JContext): JBatteryInfo; cdecl;
    {class} function isCharging(intent: JIntent): Boolean; overload; cdecl;
  end;

  [JavaSignature('br/com/execucao/posmp_api/util/BatteryInfo')]
  JBatteryInfo = interface(JObject)
    ['{3E1614FA-0C0B-491E-8CA8-CF308400C9AC}']
    function getPercentage: Integer; overload; cdecl;
    function isCharging: Boolean; overload; cdecl;
  end;
  TJBatteryInfo = class(TJavaGenericImport<JBatteryInfoClass, JBatteryInfo>) end;

  JAppStatusClass = interface(JEnumClass)
    ['{802EFD99-8A9F-46F7-97D4-8D73BB0E9079}']
    {class} function _GetACTIVE: JAppStatus; cdecl;
    {class} function _GetDEMO: JAppStatus; cdecl;
    {class} function _GetINACTIVE: JAppStatus; cdecl;
    {class} function valueOf(string_1: JString): JAppStatus; cdecl;
    {class} function values: TJavaObjectArray<JAppStatus>; cdecl;
    {class} property ACTIVE: JAppStatus read _GetACTIVE;
    {class} property DEMO: JAppStatus read _GetDEMO;
    {class} property INACTIVE: JAppStatus read _GetINACTIVE;
  end;

  [JavaSignature('br/com/execucao/posmp_api/store/AppStatus')]
  JAppStatus = interface(JEnum)
    ['{767E981C-F23F-4603-86B2-8644403BEF9B}']
    function getStatus: JString; cdecl;
  end;
  TJAppStatus = class(TJavaGenericImport<JAppStatusClass, JAppStatus>) end;

  JPrinterServiceClass = interface(JObjectClass)
    ['{07428D72-D727-4119-87C8-68B08BC38335}']
    {class} function init(context: JContext): JPrinterService; cdecl;
  end;

  [JavaSignature('br/com/execucao/posmp_api/printer/PrinterService')]
  JPrinterService = interface(JObject)
    ['{FE1171DF-6442-40D0-A84D-569A3A0817AC}']
    procedure close; cdecl;
    procedure eject(iOnPrintFinished: JIOnPrintFinished); cdecl;
    function getPrinterWidth: Integer; cdecl;
    function isConnected: Boolean; cdecl;
    procedure open; cdecl;
    procedure printImage(bitmap: JBitmap; iOnPrintFinished: JIOnPrintFinished); cdecl;
    procedure printText(string_1: JString; iOnPrintFinished: JIOnPrintFinished); cdecl;
    procedure setEnableAutoEject(boolean: Boolean); cdecl;
  end;
  TJPrinterService = class(TJavaGenericImport<JPrinterServiceClass, JPrinterService>) end;

  JPrinterListenerClass = interface(JIInterfaceClass)
    ['{05FAACE2-D47F-407C-A84D-29C4FE433986}']
  end;

  [JavaSignature('br/com/execucao/posmp_api/printer/PrinterListener')]
  JPrinterListener = interface(JIInterface)
    ['{61C74593-A438-4C33-B8A8-5720DCB65C4B}']
    procedure onError(int: Integer); cdecl;
    procedure onFinish; cdecl;
  end;
  TJPrinterListener = class(TJavaGenericImport<JPrinterListenerClass, JPrinterListener>) end;

  JPrinterClass = interface(JObjectClass)
    ['{8147CB7E-D305-466B-8DE7-F955B9657F71}']
    {class} function _GetACTION_APOS8: JString; cdecl;
    {class} function _GetACTION_VX990: JString; cdecl;
    {class} function _GetERRO_DESCONHECIDO: Integer; cdecl;
    {class} function _GetERRO_SEM_PAPEL: Integer; cdecl;
    {class} function _GetMODELO_CARBON_10: JString; cdecl;
    {class} function _GetMODELO_CARBON_8: JString; cdecl;
    {class} function _GetMODELO_CLOVER_C305: JString; cdecl;
    {class} function _GetMODELO_CLOVER_C405: JString; cdecl;
    {class} function _GetMODELO_ELGIN: JString; cdecl;
    {class} function _GetMODELO_GERTEC_700: JString; cdecl;
    {class} function _GetMODELO_GERTEC_720: JString; cdecl;
    {class} function _GetMODELO_GERTEC_760: JString; cdecl;
    {class} function _GetMODELO_INGENICO_A8: JString; cdecl;
    {class} function _GetMODELO_INGENICO_DX4000: JString; cdecl;
    {class} function _GetMODELO_INGENICO_DX8000: JString; cdecl;
    {class} function _GetMODELO_N910: JString; cdecl;
    {class} function _GetMODELO_PAX_A910: JString; cdecl;
    {class} function _GetMODELO_PAX_A920: JString; cdecl;
    {class} function _GetMODELO_POSITIVO_L3: JString; cdecl;
    {class} function _GetMODELO_POSITIVO_L400: JString; cdecl;
    {class} function _GetMODELO_SUNMI_D2MINI: JString; cdecl;
    {class} function _GetMODELO_SUNMI_P2: JString; cdecl;
    {class} function _GetMODELO_SUNMI_P2A11: JString; cdecl;
    {class} function _GetMODELO_TECTOY_T19: JString; cdecl;
    {class} function _GetMODELO_TECTOY_T8: JString; cdecl;
    {class} function _GetMODELO_VSP: JString; cdecl;
    {class} function _GetMODELO_X990: JString; cdecl;
    {class} function _GetPACKAGE_APOS8: JString; cdecl;
    {class} function _GetPACKAGE_VX990: JString; cdecl;
    {class} function _Getinstance: JPrinter; cdecl;
    {class} function getInstance(context: JContext): JPrinter; cdecl;
    {class} function init: JPrinter; cdecl;
    {class} property ACTION_APOS8: JString read _GetACTION_APOS8;
    {class} property ACTION_VX990: JString read _GetACTION_VX990;
    {class} property ERRO_DESCONHECIDO: Integer read _GetERRO_DESCONHECIDO;
    {class} property ERRO_SEM_PAPEL: Integer read _GetERRO_SEM_PAPEL;
    {class} property MODELO_CARBON_10: JString read _GetMODELO_CARBON_10;
    {class} property MODELO_CARBON_8: JString read _GetMODELO_CARBON_8;
    {class} property MODELO_CLOVER_C305: JString read _GetMODELO_CLOVER_C305;
    {class} property MODELO_CLOVER_C405: JString read _GetMODELO_CLOVER_C405;
    {class} property MODELO_ELGIN: JString read _GetMODELO_ELGIN;
    {class} property MODELO_GERTEC_700: JString read _GetMODELO_GERTEC_700;
    {class} property MODELO_GERTEC_720: JString read _GetMODELO_GERTEC_720;
    {class} property MODELO_GERTEC_760: JString read _GetMODELO_GERTEC_760;
    {class} property MODELO_INGENICO_A8: JString read _GetMODELO_INGENICO_A8;
    {class} property MODELO_INGENICO_DX4000: JString read _GetMODELO_INGENICO_DX4000;
    {class} property MODELO_INGENICO_DX8000: JString read _GetMODELO_INGENICO_DX8000;
    {class} property MODELO_N910: JString read _GetMODELO_N910;
    {class} property MODELO_PAX_A910: JString read _GetMODELO_PAX_A910;
    {class} property MODELO_PAX_A920: JString read _GetMODELO_PAX_A920;
    {class} property MODELO_POSITIVO_L3: JString read _GetMODELO_POSITIVO_L3;
    {class} property MODELO_POSITIVO_L400: JString read _GetMODELO_POSITIVO_L400;
    {class} property MODELO_SUNMI_D2MINI: JString read _GetMODELO_SUNMI_D2MINI;
    {class} property MODELO_SUNMI_P2: JString read _GetMODELO_SUNMI_P2;
    {class} property MODELO_SUNMI_P2A11: JString read _GetMODELO_SUNMI_P2A11;
    {class} property MODELO_TECTOY_T19: JString read _GetMODELO_TECTOY_T19;
    {class} property MODELO_TECTOY_T8: JString read _GetMODELO_TECTOY_T8;
    {class} property MODELO_VSP: JString read _GetMODELO_VSP;
    {class} property MODELO_X990: JString read _GetMODELO_X990;
    {class} property PACKAGE_APOS8: JString read _GetPACKAGE_APOS8;
    {class} property PACKAGE_VX990: JString read _GetPACKAGE_VX990;
    {class} property instance: JPrinter read _Getinstance;
  end;

  [JavaSignature('br/com/execucao/posmp_api/printer/Printer')]
  JPrinter = interface(JObject)
    ['{1AB22DF8-E1EA-4E39-B116-AA47788E7DF9}']
    procedure close; cdecl;
    procedure eject; cdecl;
    procedure open; cdecl;
    procedure print(bitmap: JBitmap; string_1: JString; int: Integer); overload; cdecl;
    procedure print(bitmap: JBitmap); overload; cdecl;
    procedure print(bitmap: JBitmap; printerListener: JPrinterListener); overload; cdecl;
    procedure print(string_1: JString); overload; cdecl;
    procedure print(string_1: JString; printerListener: JPrinterListener); overload; cdecl;
    procedure printServiceConnection; cdecl;
    procedure setFeedLineAuto(boolean: Boolean); cdecl;
  end;
  TJPrinter = class(TJavaGenericImport<JPrinterClass, JPrinter>) end;

  JPreferencesServiceClass = interface(JObjectClass)
    ['{8DEFC2EF-F8EA-4270-AEEE-EA34F134162E}']
    {class} function init(context: JContext): JPreferencesService; cdecl;
  end;

  [JavaSignature('br/com/execucao/posmp_api/preferences/PreferencesService')]
  JPreferencesService = interface(JObject)
    ['{9D8FFDDE-9987-4E4B-8450-A11C58B99AA2}']
    procedure close; cdecl;
    function getProxy: JIProxy; cdecl;
    function getProxyByType(string_1: JString): JIProxy; cdecl;
    function isConnected: Boolean; cdecl;
    procedure open; cdecl;
  end;
  TJPreferencesService = class(TJavaGenericImport<JPreferencesServiceClass, JPreferencesService>) end;

  JMifareServiceClass = interface(JObjectClass)
    ['{2CE32C94-53EF-4D47-A89F-9F5C616CAA27}']
    {class} function init(context: JContext): JMifareService; cdecl;
  end;

  [JavaSignature('br/com/execucao/posmp_api/mifare/MifareService')]
  JMifareService = interface(JObject)
    ['{B177EE5A-BFFA-492C-8C76-9A760A66DC08}']
    function authenticate(int: Integer; int_1: Integer; bytes: TJavaArray<Byte>): Integer; cdecl;
    procedure close; cdecl;
    function detectCard(iOnMifareDetected: JIOnMifareDetected; int: Integer): Boolean; cdecl;
    function isConnected: Boolean; cdecl;
    procedure open; cdecl;
    function read(int: Integer; bytes: TJavaArray<Byte>): Integer; cdecl;
    function transceiveAPDU(bytes: TJavaArray<Byte>; bytes_1: TJavaArray<Byte>): Integer; cdecl;
    function write(int: Integer; bytes: TJavaArray<Byte>): Integer; cdecl;
  end;
  TJMifareService = class(TJavaGenericImport<JMifareServiceClass, JMifareService>) end;

  JProxyClass = interface(JObjectClass)
    ['{70D11A7D-CFA5-4E51-8652-B4D6CCFE6A29}']
    {class} function init(type_1: JProxy_Type; string_1: JString; int: Integer): JProxy; cdecl;
  end;

  [JavaSignature('br/com/execucao/posmp_api/connection/Proxy')]
  JProxy = interface(JObject)
    ['{55D57A5B-9958-44C5-B295-200EF8EAAF92}']
    function getHost: JString; cdecl;
    function getPort: Integer; cdecl;
    function getType: JProxy_Type; cdecl;
  end;
  TJProxy = class(TJavaGenericImport<JProxyClass, JProxy>) end;

  JProxy_TypeClass = interface(JEnumClass)
    ['{6B4F037F-8F34-45E2-B8D4-B17AC638D2DE}']
    {class} function _GetHTTP: JProxy_Type; cdecl;
    {class} function _GetHTTPS: JProxy_Type; cdecl;
    {class} function valueOf(string_1: JString): JProxy_Type; cdecl;
    {class} function values: TJavaObjectArray<JProxy_Type>; cdecl;
    {class} property HTTP: JProxy_Type read _GetHTTP;
    {class} property HTTPS: JProxy_Type read _GetHTTPS;
  end;

  [JavaSignature('br/com/execucao/posmp_api/connection/Proxy$Type')]
  JProxy_Type = interface(JEnum)
    ['{080D9FDE-63C9-4EE6-BA50-C119E9F181D2}']
    function getType: JString; cdecl;
  end;
  TJProxy_Type = class(TJavaGenericImport<JProxy_TypeClass, JProxy_Type>) end;

  JConnectivityClass = interface(JObjectClass)
    ['{603AB668-44D1-47A1-86EB-829C01D3AB13}']
    {class} function init(context: JContext): JConnectivity; cdecl;
  end;

  [JavaSignature('br/com/execucao/posmp_api/connection/Connectivity')]
  JConnectivity = interface(JObject)
    ['{DEE88C8D-B34F-4EA0-92A1-8FBF1DD3ABD5}']
    procedure checkProxy; cdecl;
    procedure disable; cdecl;
    procedure disableProxy(types: TJavaObjectArray<JProxy_Type>); overload; cdecl;
    procedure disableProxy(type_1: JProxy_Type); overload; cdecl;
    procedure enable; cdecl;
    procedure enableProxy(types: TJavaObjectArray<JProxy_Type>); overload; cdecl;
    procedure enableProxy(proxy: JProxy); overload; cdecl;
    function getApnInfo: JString; cdecl;
    function getBluetoothState: JString; cdecl;
    function getBondedDevices: JJSONArray; cdecl;
    function getCellInfo: JJSONObject; cdecl;
    function getConfiguredWifiNetworks: JJSONArray; cdecl;
    function getConnectionTypeName: JString; cdecl;
    function getGsmBaseband: JString; cdecl;
    function getGsmSignalStrength: Integer; cdecl;
    function getLastMobileConnection: JDate; cdecl;
    function getMobileNetworkType: JString; cdecl;
    function getMobileState: JString; cdecl;
    function getPrivateProxy(type_1: JProxy_Type): JProxy; overload; cdecl;
    function getPrivateProxy: JProxy; overload; cdecl;
    function getSimCardState: JString; cdecl;
    function getSimOperator: JString; cdecl;
    function getSimSerial: JString; cdecl;
    function getWifiIpAddress: JString; cdecl;
    function getWifiSSID: JString; cdecl;
    function getWifiSecurityType: JString; cdecl;
    function getWifiSignalStrength: Integer; cdecl;
    function getWifiState: JString; cdecl;
    function isAutomaticProxy: Boolean; cdecl;
    function isBluetoothAvailable: Boolean; cdecl;
    function isBluetoothDiscovering: Boolean; cdecl;
    function isBluetoothEnabled: Boolean; cdecl;
    function isConnected: Boolean; cdecl;
    function isConnectedMobile: Boolean; cdecl;
    function isConnectedWifi: Boolean; cdecl;
    function isEnabled: Boolean; cdecl;
    function isMobileDataAvailable: Boolean; cdecl;
    function isMobileEnabled: Boolean; cdecl;
    function isUsingProxy(type_1: JProxy_Type): Boolean; overload; cdecl;
    function isUsingProxy: Boolean; overload; cdecl;
    function isWifiEnabled: Boolean; cdecl;
    procedure setAutomaticProxy(boolean: Boolean); cdecl;
    procedure setListener(onConnectivityChanged: JConnectivity_OnConnectivityChanged); cdecl;
    procedure setProxy(boolean: Boolean); cdecl;
    function shouldUseProxy: Boolean; cdecl;
  end;
  TJConnectivity = class(TJavaGenericImport<JConnectivityClass, JConnectivity>) end;

  JConnectivity_OnConnectivityChangedClass = interface(IJavaClass)
    ['{430DB759-DE8D-468E-80B3-97DAFEA637E9}']
  end;

  [JavaSignature('br/com/execucao/posmp_api/connection/Connectivity$OnConnectivityChanged')]
  JConnectivity_OnConnectivityChanged = interface(IJavaInstance)
    ['{E7899FD5-88F8-4018-BC76-D1E5A241FB7E}']
    procedure onChange; cdecl;
  end;
  TJConnectivity_OnConnectivityChanged = class(TJavaGenericImport<JConnectivity_OnConnectivityChangedClass, JConnectivity_OnConnectivityChanged>) end;

  JSmartPosHelperClass = interface(JObjectClass)
    ['{D7408C09-610D-4C12-8B00-06F22CADC4D4}']
    {class} function getInstance: JSmartPosHelper; cdecl;
    {class} procedure init(context: JContext; appStatus: JAppStatus); cdecl;
  end;

  [JavaSignature('br/com/execucao/posmp_api/SmartPosHelper')]
  JSmartPosHelper = interface(JObject)
    ['{CFEF9ED7-60F1-4A30-934B-AB4CBEB18BAE}']
    function getBatteryInfo: JBatteryInfo; cdecl;
    function getConnectivity: JConnectivity; cdecl;
    function getCurrentActivity: JActivity; cdecl;
    //function getLocationInfo: Jutil_d; cdecl;
    function getMifare: JMifareService; cdecl;
    function getPreferences: JPreferencesService; cdecl;
    function getPrinter: JPrinterService; cdecl;
    procedure setAppStatus(appStatus: JAppStatus); cdecl;
    procedure setDeviceInfoListener(deviceInfoListener: JDeviceInfo_DeviceInfoListener); cdecl;
  end;
  TJSmartPosHelper = class(TJavaGenericImport<JSmartPosHelperClass, JSmartPosHelper>) end;

implementation

end.
