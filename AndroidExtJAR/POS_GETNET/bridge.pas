{*******************************************************}
{                                                       }
{           CodeGear Delphi Runtime Library             }
{ Copyright(c) 2014 Embarcadero Technologies, Inc.      }
{                                                       }
{*******************************************************}

unit bridge;

interface

uses
  Androidapi.JNIBridge,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.Util,
  Androidapi.JNI.Os,
  Androidapi.JNI.Net;

type
// ===== Forward declarations =====

  Jposdigital_BuildConfig = interface;//com.getnet.posdigital.BuildConfig
  JIMainService = interface;//com.getnet.posdigital.IMainService
  JIMainService_Stub = interface;//com.getnet.posdigital.IMainService$Stub
  JIMainService_Stub_Proxy = interface;//com.getnet.posdigital.IMainService$Stub$Proxy
  JPosDigital = interface;//com.getnet.posdigital.PosDigital
  JPosDigital_1 = interface;//com.getnet.posdigital.PosDigital$1
  JPosDigital_2 = interface;//com.getnet.posdigital.PosDigital$2
  JPosDigital_3 = interface;//com.getnet.posdigital.PosDigital$3
  JPosDigital_BindCallback = interface;//com.getnet.posdigital.PosDigital$BindCallback
  JIBeeperService = interface;//com.getnet.posdigital.beeper.IBeeperService
  JIBeeperService_Stub = interface;//com.getnet.posdigital.beeper.IBeeperService$Stub
  JIBeeperService_Stub_Proxy = interface;//com.getnet.posdigital.beeper.IBeeperService$Stub$Proxy
  JICameraCallback = interface;//com.getnet.posdigital.camera.ICameraCallback
  JICameraCallback_Stub = interface;//com.getnet.posdigital.camera.ICameraCallback$Stub
  JICameraCallback_Stub_Proxy = interface;//com.getnet.posdigital.camera.ICameraCallback$Stub$Proxy
  JICameraService = interface;//com.getnet.posdigital.camera.ICameraService
  JICameraService_Stub = interface;//com.getnet.posdigital.camera.ICameraService$Stub
  JICameraService_Stub_Proxy = interface;//com.getnet.posdigital.camera.ICameraService$Stub$Proxy
  JCardResponse = interface;//com.getnet.posdigital.card.CardResponse
  JCardResponse_1 = interface;//com.getnet.posdigital.card.CardResponse$1
  JICardCallback = interface;//com.getnet.posdigital.card.ICardCallback
  JICardCallback_Stub = interface;//com.getnet.posdigital.card.ICardCallback$Stub
  JICardCallback_Stub_Proxy = interface;//com.getnet.posdigital.card.ICardCallback$Stub$Proxy
  JICardService = interface;//com.getnet.posdigital.card.ICardService
  JICardService_Stub = interface;//com.getnet.posdigital.card.ICardService$Stub
  JICardService_Stub_Proxy = interface;//com.getnet.posdigital.card.ICardService$Stub$Proxy
  JSearchType = interface;//com.getnet.posdigital.card.SearchType
  JBitmapUtils = interface;//com.getnet.posdigital.extension.BitmapUtils
  JViewUtils = interface;//com.getnet.posdigital.extension.ViewUtils
  JIInfoCallback = interface;//com.getnet.posdigital.info.IInfoCallback
  JIInfoCallback_Stub = interface;//com.getnet.posdigital.info.IInfoCallback$Stub
  JIInfoCallback_Stub_Proxy = interface;//com.getnet.posdigital.info.IInfoCallback$Stub$Proxy
  JIInfoService = interface;//com.getnet.posdigital.info.IInfoService
  JIInfoService_Stub = interface;//com.getnet.posdigital.info.IInfoService$Stub
  JIInfoService_Stub_Proxy = interface;//com.getnet.posdigital.info.IInfoService$Stub$Proxy
  JInfoResponse = interface;//com.getnet.posdigital.info.InfoResponse
  JInfoResponse_1 = interface;//com.getnet.posdigital.info.InfoResponse$1
  JILedService = interface;//com.getnet.posdigital.led.ILedService
  JILedService_Stub = interface;//com.getnet.posdigital.led.ILedService$Stub
  JILedService_Stub_Proxy = interface;//com.getnet.posdigital.led.ILedService$Stub$Proxy
  JIMifareActivateCallback = interface;//com.getnet.posdigital.mifare.IMifareActivateCallback
  JIMifareActivateCallback_Stub = interface;//com.getnet.posdigital.mifare.IMifareActivateCallback$Stub
  JIMifareActivateCallback_Stub_Proxy = interface;//com.getnet.posdigital.mifare.IMifareActivateCallback$Stub$Proxy
  JIMifareCallback = interface;//com.getnet.posdigital.mifare.IMifareCallback
  JIMifareCallback_Stub = interface;//com.getnet.posdigital.mifare.IMifareCallback$Stub
  JIMifareCallback_Stub_Proxy = interface;//com.getnet.posdigital.mifare.IMifareCallback$Stub$Proxy
  JIMifareService = interface;//com.getnet.posdigital.mifare.IMifareService
  JIMifareService_Stub = interface;//com.getnet.posdigital.mifare.IMifareService$Stub
  JIMifareService_Stub_Proxy = interface;//com.getnet.posdigital.mifare.IMifareService$Stub$Proxy
  JMifareStatus = interface;//com.getnet.posdigital.mifare.MifareStatus
  JAlignMode = interface;//com.getnet.posdigital.printer.AlignMode
  JFontFormat = interface;//com.getnet.posdigital.printer.FontFormat
  JIPrinterCallback = interface;//com.getnet.posdigital.printer.IPrinterCallback
  JIPrinterCallback_Stub = interface;//com.getnet.posdigital.printer.IPrinterCallback$Stub
  JIPrinterCallback_Stub_Proxy = interface;//com.getnet.posdigital.printer.IPrinterCallback$Stub$Proxy
  JIPrinterService = interface;//com.getnet.posdigital.printer.IPrinterService
  JIPrinterService_Stub = interface;//com.getnet.posdigital.printer.IPrinterService$Stub
  JIPrinterService_Stub_Proxy = interface;//com.getnet.posdigital.printer.IPrinterService$Stub$Proxy
  JPrinterStatus = interface;//com.getnet.posdigital.printer.PrinterStatus
  JIStatCallback = interface;//com.getnet.posdigital.stat.IStatCallback
  JIStatCallback_Stub = interface;//com.getnet.posdigital.stat.IStatCallback$Stub
  JIStatCallback_Stub_Proxy = interface;//com.getnet.posdigital.stat.IStatCallback$Stub$Proxy
  JIStatService = interface;//com.getnet.posdigital.stat.IStatService
  JIStatService_Stub = interface;//com.getnet.posdigital.stat.IStatService$Stub
  JIStatService_Stub_Proxy = interface;//com.getnet.posdigital.stat.IStatService$Stub$Proxy
  JStatResponse = interface;//com.getnet.posdigital.stat.StatResponse
  JStatResponse_1 = interface;//com.getnet.posdigital.stat.StatResponse$1

// ===== Interface declarations =====

  Jposdigital_BuildConfigClass = interface(JObjectClass)
    ['{D04615DF-54D1-412B-95B8-D3F45F4F847A}']
    {class} function _GetAPPLICATION_ID: JString;
    {class} function _GetBUILD_TYPE: JString;
    {class} function _GetDEBUG: Boolean;
    {class} function _GetFLAVOR: JString;
    {class} function _GetVERSION_CODE: Integer;
    {class} function _GetVERSION_NAME: JString;
    {class} function init: Jposdigital_BuildConfig; cdecl;
    {class} property APPLICATION_ID: JString read _GetAPPLICATION_ID;
    {class} property BUILD_TYPE: JString read _GetBUILD_TYPE;
    {class} property DEBUG: Boolean read _GetDEBUG;
    {class} property FLAVOR: JString read _GetFLAVOR;
    {class} property VERSION_CODE: Integer read _GetVERSION_CODE;
    {class} property VERSION_NAME: JString read _GetVERSION_NAME;
  end;

  [JavaSignature('com/getnet/posdigital/BuildConfig')]
  Jposdigital_BuildConfig = interface(JObject)
    ['{8586DFFE-8DA4-4F7B-A6BC-AB7E30E9F569}']
  end;
  TJposdigital_BuildConfig = class(TJavaGenericImport<Jposdigital_BuildConfigClass, Jposdigital_BuildConfig>) end;

  JIMainServiceClass = interface(JIInterfaceClass)
    ['{4B97F091-DC2E-4045-8B5B-5058B5E7CF0D}']
  end;

  [JavaSignature('com/getnet/posdigital/IMainService')]
  JIMainService = interface(JIInterface)
    ['{DE80CC85-87C9-4DA8-8558-B851D0F82648}']
    function getBeeper: JIBeeperService; cdecl;
    function getCamera: JICameraService; cdecl;
    function getCard: JICardService; cdecl;
    function getInfo: JIInfoService; cdecl;
    function getLed: JILedService; cdecl;
    function getMifare: JIMifareService; cdecl;
    function getPrinter: JIPrinterService; cdecl;
    function getStatistic: JIStatService; cdecl;
  end;
  TJIMainService = class(TJavaGenericImport<JIMainServiceClass, JIMainService>) end;

  JIMainService_StubClass = interface(JBinderClass)
    ['{1B4F7369-8637-4B6E-A604-56BAE62D86F0}']
    {class} function asInterface(P1: JIBinder): JIMainService; cdecl;
    {class} function init: JIMainService_Stub; cdecl;
  end;

  [JavaSignature('com/getnet/posdigital/IMainService$Stub')]
  JIMainService_Stub = interface(JBinder)
    ['{56DCE72C-6436-4290-A415-59F275A892E7}']
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;
  end;
  TJIMainService_Stub = class(TJavaGenericImport<JIMainService_StubClass, JIMainService_Stub>) end;

  JIMainService_Stub_ProxyClass = interface(JObjectClass)
    ['{C97BB76F-1532-4974-A561-548E8AA52923}']
  end;

  [JavaSignature('com/getnet/posdigital/IMainService$Stub$Proxy')]
  JIMainService_Stub_Proxy = interface(JObject)
    ['{981FD18C-AC9A-4B71-B767-7E8036CFC0E8}']
    function asBinder: JIBinder; cdecl;
    function getBeeper: JIBeeperService; cdecl;
    function getCamera: JICameraService; cdecl;
    function getCard: JICardService; cdecl;
    function getInfo: JIInfoService; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function getLed: JILedService; cdecl;
    function getMifare: JIMifareService; cdecl;
    function getPrinter: JIPrinterService; cdecl;
    function getStatistic: JIStatService; cdecl;
  end;
  TJIMainService_Stub_Proxy = class(TJavaGenericImport<JIMainService_Stub_ProxyClass, JIMainService_Stub_Proxy>) end;

  JPosDigitalClass = interface(JObjectClass)
    ['{5AA1AB63-C8E4-4EE3-BACE-3E4CFD77876C}']
    {class} function getInstance: JPosDigital; cdecl;
    {class} function init: JPosDigital; cdecl;
    {class} procedure register(P1: JContext; P2: JPosDigital_BindCallback); cdecl;
    {class} procedure unregister(P1: JContext); cdecl;
  end;

  [JavaSignature('com/getnet/posdigital/PosDigital')]
  JPosDigital = interface(JObject)
    ['{8D051D9E-99CC-431C-A8A2-DEBC5B3CCDAF}']
    function getBeeper: JIBeeperService; cdecl;
    function getCamera: JICameraService; cdecl;
    function getCard: JICardService; cdecl;
    function getInfo: JIInfoService; cdecl;
    function getLed: JILedService; cdecl;
    function getMifare: JIMifareService; cdecl;
    function getPrinter: JIPrinterService; cdecl;
    function getStatistic: JIStatService; cdecl;
    function isInitiated: Boolean; cdecl;
  end;
  TJPosDigital = class(TJavaGenericImport<JPosDigitalClass, JPosDigital>) end;

  JPosDigital_1Class = interface(JBroadcastReceiverClass)
    ['{F857AF94-4934-4AEF-A354-6088454A9097}']
  end;

  [JavaSignature('com/getnet/posdigital/PosDigital$1')]
  JPosDigital_1 = interface(JBroadcastReceiver)
    ['{3439C037-F76D-4165-A4DB-FC1B69031DEF}']
    procedure onReceive(P1: JContext; P2: JIntent); cdecl;
  end;
  TJPosDigital_1 = class(TJavaGenericImport<JPosDigital_1Class, JPosDigital_1>) end;

  JPosDigital_2Class = interface(JBroadcastReceiverClass)
    ['{5A474253-E362-4F2B-BA39-1A7E21DF11CF}']
  end;

  [JavaSignature('com/getnet/posdigital/PosDigital$2')]
  JPosDigital_2 = interface(JBroadcastReceiver)
    ['{E268A9D8-D186-4F3D-A489-BFB1C09B7969}']
    procedure onReceive(P1: JContext; P2: JIntent); cdecl;
  end;
  TJPosDigital_2 = class(TJavaGenericImport<JPosDigital_2Class, JPosDigital_2>) end;

  JPosDigital_3Class = interface(JObjectClass)
    ['{AC0069F9-08A0-4FDE-8929-655BA64F1727}']
  end;

  [JavaSignature('com/getnet/posdigital/PosDigital$3')]
  JPosDigital_3 = interface(JObject)
    ['{97DA1748-8796-4004-BBFB-8008178375FE}']
    procedure onServiceConnected(P1: JComponentName; P2: JIBinder); cdecl;
    procedure onServiceDisconnected(P1: JComponentName); cdecl;
  end;
  TJPosDigital_3 = class(TJavaGenericImport<JPosDigital_3Class, JPosDigital_3>) end;

  JPosDigital_BindCallbackClass = interface(IJavaClass)
    ['{AFA28CA3-906A-4159-B6A0-F4EEBA68BE2B}']
  end;

  [JavaSignature('com/getnet/posdigital/PosDigital$BindCallback')]
  JPosDigital_BindCallback = interface(IJavaInstance)
    ['{2F830DE8-B300-45BC-B343-F7AA51C4B3E1}']
    procedure onConnected; cdecl;
    procedure onDisconnected; cdecl;
    procedure onError(P1: JException); cdecl;
  end;
  TJPosDigital_BindCallback = class(TJavaGenericImport<JPosDigital_BindCallbackClass, JPosDigital_BindCallback>) end;

  JIBeeperServiceClass = interface(JIInterfaceClass)
    ['{8451FA39-14C6-40F5-85BC-089F967BA6BE}']
  end;

  [JavaSignature('com/getnet/posdigital/beeper/IBeeperService')]
  JIBeeperService = interface(JIInterface)
    ['{78D35A33-6224-49C5-B098-EA51FAAEA853}']
    procedure custom(P1: Integer); cdecl;
    procedure digit; cdecl;
    procedure error; cdecl;
    procedure nfc; cdecl;
    procedure success; cdecl;
  end;
  TJIBeeperService = class(TJavaGenericImport<JIBeeperServiceClass, JIBeeperService>) end;

  JIBeeperService_StubClass = interface(JBinderClass)
    ['{7862C7F2-85DC-49FE-BB92-0C40BAC3A846}']
    {class} function asInterface(P1: JIBinder): JIBeeperService; cdecl;
    {class} function init: JIBeeperService_Stub; cdecl;
  end;

  [JavaSignature('com/getnet/posdigital/beeper/IBeeperService$Stub')]
  JIBeeperService_Stub = interface(JBinder)
    ['{3DB95F04-C7EF-4A32-B5EA-CC28C5A92F52}']
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;
  end;
  TJIBeeperService_Stub = class(TJavaGenericImport<JIBeeperService_StubClass, JIBeeperService_Stub>) end;

  JIBeeperService_Stub_ProxyClass = interface(JObjectClass)
    ['{95DB1BC5-F914-48B5-BDCF-604AAC645F7F}']
  end;

  [JavaSignature('com/getnet/posdigital/beeper/IBeeperService$Stub$Proxy')]
  JIBeeperService_Stub_Proxy = interface(JObject)
    ['{30F8E54B-7807-47DB-B90E-D41314BAEB66}']
    function asBinder: JIBinder; cdecl;
    procedure custom(P1: Integer); cdecl;
    procedure digit; cdecl;
    procedure error; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure nfc; cdecl;
    procedure success; cdecl;
  end;
  TJIBeeperService_Stub_Proxy = class(TJavaGenericImport<JIBeeperService_Stub_ProxyClass, JIBeeperService_Stub_Proxy>) end;

  JICameraCallbackClass = interface(JIInterfaceClass)
    ['{92EBBB2D-BFF9-413F-9D7C-35CF880647B2}']
  end;

  [JavaSignature('com/getnet/posdigital/camera/ICameraCallback')]
  JICameraCallback = interface(JIInterface)
    ['{BC6CF135-D727-4514-9387-97B24B94D49A}']
    procedure onCancel; cdecl;
    procedure onError(P1: JString); cdecl;
    procedure onSuccess(P1: JString); cdecl;
    procedure onTimeout; cdecl;
  end;
  TJICameraCallback = class(TJavaGenericImport<JICameraCallbackClass, JICameraCallback>) end;

  JICameraCallback_StubClass = interface(JBinderClass)
    ['{5400B5C7-BEF2-4345-BFEA-C531AAA87EC6}']
    {class} function asInterface(P1: JIBinder): JICameraCallback; cdecl;
    {class} function init: JICameraCallback_Stub; cdecl;
  end;

  [JavaSignature('com/getnet/posdigital/camera/ICameraCallback$Stub')]
  JICameraCallback_Stub = interface(JBinder)
    ['{88C3C8F3-83CF-4650-A5DE-8EAC77D5DBC7}']
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;
  end;
  TJICameraCallback_Stub = class(TJavaGenericImport<JICameraCallback_StubClass, JICameraCallback_Stub>) end;

  JICameraCallback_Stub_ProxyClass = interface(JObjectClass)
    ['{C57098CA-EA6F-4FFE-83D1-670F3142F8E1}']
  end;

  [JavaSignature('com/getnet/posdigital/camera/ICameraCallback$Stub$Proxy')]
  JICameraCallback_Stub_Proxy = interface(JObject)
    ['{3D65E521-E9E5-41E1-A925-BFC6C5D8DBF9}']
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure onCancel; cdecl;
    procedure onError(P1: JString); cdecl;
    procedure onSuccess(P1: JString); cdecl;
    procedure onTimeout; cdecl;
  end;
  TJICameraCallback_Stub_Proxy = class(TJavaGenericImport<JICameraCallback_Stub_ProxyClass, JICameraCallback_Stub_Proxy>) end;

  JICameraServiceClass = interface(JIInterfaceClass)
    ['{6D70A8B1-EB93-472B-BA87-FCC9FE889E2A}']
  end;

  [JavaSignature('com/getnet/posdigital/camera/ICameraService')]
  JICameraService = interface(JIInterface)
    ['{167D538A-A065-41E1-A979-E882857A580A}']
    procedure readBack(P1: Integer; P2: JICameraCallback); cdecl;
    procedure readFront(P1: Integer; P2: JICameraCallback); cdecl;
  end;
  TJICameraService = class(TJavaGenericImport<JICameraServiceClass, JICameraService>) end;

  JICameraService_StubClass = interface(JBinderClass)
    ['{40A756B2-BD83-4756-A024-847F1AF71D89}']
    {class} function asInterface(P1: JIBinder): JICameraService; cdecl;
    {class} function init: JICameraService_Stub; cdecl;
  end;

  [JavaSignature('com/getnet/posdigital/camera/ICameraService$Stub')]
  JICameraService_Stub = interface(JBinder)
    ['{9F790B4C-FF88-40CE-AE83-89F45CF8854B}']
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;
  end;
  TJICameraService_Stub = class(TJavaGenericImport<JICameraService_StubClass, JICameraService_Stub>) end;

  JICameraService_Stub_ProxyClass = interface(JObjectClass)
    ['{89CB43DE-BEB7-45C1-B65D-62E4F62D9BA0}']
  end;

  [JavaSignature('com/getnet/posdigital/camera/ICameraService$Stub$Proxy')]
  JICameraService_Stub_Proxy = interface(JObject)
    ['{B16A9A40-8DF1-4174-853F-BECC1091DCF5}']
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure readBack(P1: Integer; P2: JICameraCallback); cdecl;
    procedure readFront(P1: Integer; P2: JICameraCallback); cdecl;
  end;
  TJICameraService_Stub_Proxy = class(TJavaGenericImport<JICameraService_Stub_ProxyClass, JICameraService_Stub_Proxy>) end;

  JCardResponseClass = interface(JObjectClass)
    ['{FEADD53B-5E2C-4DA9-81DA-CEB977F00918}']
    {class} function _GetCREATOR: JParcelable_Creator;
    {class} function init: JCardResponse; cdecl; overload;
    {class} function init(P1: JParcel): JCardResponse; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/getnet/posdigital/card/CardResponse')]
  JCardResponse = interface(JObject)
    ['{CBA620A6-F66C-4904-86E8-A80C503FFF18}']
    function describeContents: Integer; cdecl;
    function getExpireDate: JString; cdecl;
    function getPan: JString; cdecl;
    function getServiceCode: JString; cdecl;
    function getTrack1: JString; cdecl;
    function getTrack2: JString; cdecl;
    function getTrack3: JString; cdecl;
    function getType: JString; cdecl;
    procedure setExpireDate(P1: JString); cdecl;
    procedure setPan(P1: JString); cdecl;
    procedure setServiceCode(P1: JString); cdecl;
    procedure setTrack1(P1: JString); cdecl;
    procedure setTrack2(P1: JString); cdecl;
    procedure setTrack3(P1: JString); cdecl;
    procedure setType(P1: JString); cdecl;
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;
  end;
  TJCardResponse = class(TJavaGenericImport<JCardResponseClass, JCardResponse>) end;

  JCardResponse_1Class = interface(JObjectClass)
    ['{8F5FBA66-AF3B-4D3A-AF54-7FA4F7FECC09}']
  end;

  [JavaSignature('com/getnet/posdigital/card/CardResponse$1')]
  JCardResponse_1 = interface(JObject)
    ['{B81B5238-2CF4-4802-BAEB-6919468F2DED}']
    function createFromParcel(P1: JParcel): JCardResponse; cdecl;
    function newArray(P1: Integer): TJavaObjectArray<JCardResponse>; cdecl;
  end;
  TJCardResponse_1 = class(TJavaGenericImport<JCardResponse_1Class, JCardResponse_1>) end;

  JICardCallbackClass = interface(JIInterfaceClass)
    ['{30BD1D3D-03D0-48FF-AA8A-8BE9AB9F897A}']
  end;

  [JavaSignature('com/getnet/posdigital/card/ICardCallback')]
  JICardCallback = interface(JIInterface)
    ['{E09AAAB7-10AB-4219-8DA1-9BBD0347CE45}']
    procedure onCard(P1: JCardResponse); cdecl;
    procedure onError(P1: JString); cdecl;
    procedure onMessage(P1: JString); cdecl;
  end;
  TJICardCallback = class(TJavaGenericImport<JICardCallbackClass, JICardCallback>) end;

  JICardCallback_StubClass = interface(JBinderClass)
    ['{FB1180F6-D1B9-47F0-A043-81F65398D7F3}']
    {class} function asInterface(P1: JIBinder): JICardCallback; cdecl;
    {class} function init: JICardCallback_Stub; cdecl;
  end;

  [JavaSignature('com/getnet/posdigital/card/ICardCallback$Stub')]
  JICardCallback_Stub = interface(JBinder)
    ['{1497530A-16F6-4DA8-835B-A5CB722DFAE4}']
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;
  end;
  TJICardCallback_Stub = class(TJavaGenericImport<JICardCallback_StubClass, JICardCallback_Stub>) end;

  JICardCallback_Stub_ProxyClass = interface(JObjectClass)
    ['{99F6F438-3874-49BE-94EC-F908CFDFC824}']
  end;

  [JavaSignature('com/getnet/posdigital/card/ICardCallback$Stub$Proxy')]
  JICardCallback_Stub_Proxy = interface(JObject)
    ['{C2301F0D-08E2-44E5-B637-E5A82CCDD6E1}']
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure onCard(P1: JCardResponse); cdecl;
    procedure onError(P1: JString); cdecl;
    procedure onMessage(P1: JString); cdecl;
  end;
  TJICardCallback_Stub_Proxy = class(TJavaGenericImport<JICardCallback_Stub_ProxyClass, JICardCallback_Stub_Proxy>) end;

  JICardServiceClass = interface(JIInterfaceClass)
    ['{8EA0D1B3-16C0-4D5D-8B2B-B5F02DF55B15}']
  end;

  [JavaSignature('com/getnet/posdigital/card/ICardService')]
  JICardService = interface(JIInterface)
    ['{FAF0A061-F51E-4886-ADBB-A1F169F75B74}']
    procedure search(P1: Int64; P2: TJavaObjectArray<JString>; P3: JICardCallback); cdecl;
    procedure searchChip(P1: Int64; P2: JICardCallback); cdecl;
    procedure searchMag(P1: Int64; P2: JICardCallback); cdecl;
    procedure searchNFC(P1: Int64; P2: JICardCallback); cdecl;
  end;
  TJICardService = class(TJavaGenericImport<JICardServiceClass, JICardService>) end;

  JICardService_StubClass = interface(JBinderClass)
    ['{5247520D-E4A2-4800-B4B2-9E5EE79BABE8}']
    {class} function asInterface(P1: JIBinder): JICardService; cdecl;
    {class} function init: JICardService_Stub; cdecl;
  end;

  [JavaSignature('com/getnet/posdigital/card/ICardService$Stub')]
  JICardService_Stub = interface(JBinder)
    ['{EC462455-7708-4977-A936-BE351A8DA509}']
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;
  end;
  TJICardService_Stub = class(TJavaGenericImport<JICardService_StubClass, JICardService_Stub>) end;

  JICardService_Stub_ProxyClass = interface(JObjectClass)
    ['{9952FB12-E2FE-4E47-A79B-A4E9015270B4}']
  end;

  [JavaSignature('com/getnet/posdigital/card/ICardService$Stub$Proxy')]
  JICardService_Stub_Proxy = interface(JObject)
    ['{85E2872C-CB57-4B27-BF4F-EFE517246143}']
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure search(P1: Int64; P2: TJavaObjectArray<JString>; P3: JICardCallback); cdecl;
    procedure searchChip(P1: Int64; P2: JICardCallback); cdecl;
    procedure searchMag(P1: Int64; P2: JICardCallback); cdecl;
    procedure searchNFC(P1: Int64; P2: JICardCallback); cdecl;
  end;
  TJICardService_Stub_Proxy = class(TJavaGenericImport<JICardService_Stub_ProxyClass, JICardService_Stub_Proxy>) end;

  JSearchTypeClass = interface(JObjectClass)
    ['{D35CCF94-1E2E-4F0F-BFDA-E05D4E090655}']
    {class} function _GetCHIP: JString;
    {class} procedure _SetCHIP(Value: JString);
    {class} function _GetMAG: JString;
    {class} procedure _SetMAG(Value: JString);
    {class} function _GetNFC: JString;
    {class} procedure _SetNFC(Value: JString);
    {class} function init: JSearchType; cdecl;
    {class} property CHIP: JString read _GetCHIP write _SetCHIP;
    {class} property MAG: JString read _GetMAG write _SetMAG;
    {class} property NFC: JString read _GetNFC write _SetNFC;
  end;

  [JavaSignature('com/getnet/posdigital/card/SearchType')]
  JSearchType = interface(JObject)
    ['{93334854-8565-440F-BF16-86F39C1B8F01}']
  end;
  TJSearchType = class(TJavaGenericImport<JSearchTypeClass, JSearchType>) end;

  JBitmapUtilsClass = interface(JObjectClass)
    ['{CBCDC81E-A5E3-4BD6-9A2B-F0117C646BA0}']
    {class} function convertToByteArray(P1: JBitmap): TJavaArray<Byte>; cdecl;
    {class} function init: JBitmapUtils; cdecl;
  end;

  [JavaSignature('com/getnet/posdigital/extension/BitmapUtils')]
  JBitmapUtils = interface(JObject)
    ['{2D328DE9-0E2C-418E-914A-03384377D50E}']
  end;
  TJBitmapUtils = class(TJavaGenericImport<JBitmapUtilsClass, JBitmapUtils>) end;

  JViewUtilsClass = interface(JObjectClass)
    ['{6C1DDEDF-E46B-42E7-AB06-FE004AA19AC9}']
    {class} function convertToBitmap(P1: JView): JBitmap; cdecl;
    {class} function init: JViewUtils; cdecl;
  end;

  [JavaSignature('com/getnet/posdigital/extension/ViewUtils')]
  JViewUtils = interface(JObject)
    ['{93D7CA57-3366-45B8-BF3E-6218914716BD}']
  end;
  TJViewUtils = class(TJavaGenericImport<JViewUtilsClass, JViewUtils>) end;

  JIInfoCallbackClass = interface(JIInterfaceClass)
    ['{6D3CD631-52B5-4411-9D63-F92623BEE7F9}']
  end;

  [JavaSignature('com/getnet/posdigital/info/IInfoCallback')]
  JIInfoCallback = interface(JIInterface)
    ['{430A04E7-E246-4C73-B304-3AEB99EB4F54}']
    procedure onError(P1: JString); cdecl;
    procedure onInfo(P1: JInfoResponse); cdecl;
  end;
  TJIInfoCallback = class(TJavaGenericImport<JIInfoCallbackClass, JIInfoCallback>) end;

  JIInfoCallback_StubClass = interface(JBinderClass)
    ['{E1A8D3B6-01DD-4629-A9E5-A0E8CD06CB6F}']
    {class} function asInterface(P1: JIBinder): JIInfoCallback; cdecl;
    {class} function init: JIInfoCallback_Stub; cdecl;
  end;

  [JavaSignature('com/getnet/posdigital/info/IInfoCallback$Stub')]
  JIInfoCallback_Stub = interface(JBinder)
    ['{3DB06BED-23BE-4C68-BD0A-F189A96568EF}']
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;
  end;
  TJIInfoCallback_Stub = class(TJavaGenericImport<JIInfoCallback_StubClass, JIInfoCallback_Stub>) end;

  JIInfoCallback_Stub_ProxyClass = interface(JObjectClass)
    ['{6ECCC096-72D3-49C0-AF22-7AD9E016D6E3}']
  end;

  [JavaSignature('com/getnet/posdigital/info/IInfoCallback$Stub$Proxy')]
  JIInfoCallback_Stub_Proxy = interface(JObject)
    ['{1E960DB0-AE89-49CE-9B53-F15E57E33A07}']
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure onError(P1: JString); cdecl;
    procedure onInfo(P1: JInfoResponse); cdecl;
  end;
  TJIInfoCallback_Stub_Proxy = class(TJavaGenericImport<JIInfoCallback_Stub_ProxyClass, JIInfoCallback_Stub_Proxy>) end;

  JIInfoServiceClass = interface(JIInterfaceClass)
    ['{EE8D8C44-A757-47C4-82B3-5362E457047B}']
  end;

  [JavaSignature('com/getnet/posdigital/info/IInfoService')]
  JIInfoService = interface(JIInterface)
    ['{09B41896-22D5-48A7-ADDA-BB58762F6E6E}']
    procedure info(P1: JIInfoCallback); cdecl;
  end;
  TJIInfoService = class(TJavaGenericImport<JIInfoServiceClass, JIInfoService>) end;

  JIInfoService_StubClass = interface(JBinderClass)
    ['{E2DBDBA6-FB12-4393-AE50-653FBABF99FC}']
    {class} function asInterface(P1: JIBinder): JIInfoService; cdecl;
    {class} function init: JIInfoService_Stub; cdecl;
  end;

  [JavaSignature('com/getnet/posdigital/info/IInfoService$Stub')]
  JIInfoService_Stub = interface(JBinder)
    ['{B3B0EA15-3118-452B-B52E-DFDE69EEE733}']
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;
  end;
  TJIInfoService_Stub = class(TJavaGenericImport<JIInfoService_StubClass, JIInfoService_Stub>) end;

  JIInfoService_Stub_ProxyClass = interface(JObjectClass)
    ['{9E2C678E-D333-4816-800B-9B8B51CB8BA8}']
  end;

  [JavaSignature('com/getnet/posdigital/info/IInfoService$Stub$Proxy')]
  JIInfoService_Stub_Proxy = interface(JObject)
    ['{943512C6-2E33-4B35-BD80-D953F0FA97FB}']
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure info(P1: JIInfoCallback); cdecl;
  end;
  TJIInfoService_Stub_Proxy = class(TJavaGenericImport<JIInfoService_Stub_ProxyClass, JIInfoService_Stub_Proxy>) end;

  JInfoResponseClass = interface(JObjectClass)
    ['{61190875-E28C-4BCB-B007-F690BFEFAF87}']
    {class} function _GetCREATOR: JParcelable_Creator;
    {class} function init: JInfoResponse; cdecl; overload;
    {class} function init(P1: JParcel): JInfoResponse; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/getnet/posdigital/info/InfoResponse')]
  JInfoResponse = interface(JObject)
    ['{AD90632C-E8A8-4D42-8F72-A44A24BA3AF1}']
    function describeContents: Integer; cdecl;
    function getBcVersion: JString; cdecl;
    function getOsVersion: JString; cdecl;
    function getSdkVersion: JString; cdecl;
    function getSerialNumber: JString; cdecl;
    procedure setBcVersion(P1: JString); cdecl;
    procedure setOsVersion(P1: JString); cdecl;
    procedure setSdkVersion(P1: JString); cdecl;
    procedure setSerialNumber(P1: JString); cdecl;
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;
  end;
  TJInfoResponse = class(TJavaGenericImport<JInfoResponseClass, JInfoResponse>) end;

  JInfoResponse_1Class = interface(JObjectClass)
    ['{340861EB-7627-4480-9808-76492F0B05DC}']
  end;

  [JavaSignature('com/getnet/posdigital/info/InfoResponse$1')]
  JInfoResponse_1 = interface(JObject)
    ['{9DFE84C1-0421-44F9-9755-6D60E347AEA5}']
    function createFromParcel(P1: JParcel): JInfoResponse; cdecl;
    function newArray(P1: Integer): TJavaObjectArray<JInfoResponse>; cdecl;
  end;
  TJInfoResponse_1 = class(TJavaGenericImport<JInfoResponse_1Class, JInfoResponse_1>) end;

  JILedServiceClass = interface(JIInterfaceClass)
    ['{9FA1AACC-434C-4CB3-85D8-741ADAFC68B2}']
  end;

  [JavaSignature('com/getnet/posdigital/led/ILedService')]
  JILedService = interface(JIInterface)
    ['{7B89F3DF-2E7E-4464-9256-068A036D3D9B}']
    procedure turnOffAll; cdecl;
    procedure turnOffBlue; cdecl;
    procedure turnOffGreen; cdecl;
    procedure turnOffRed; cdecl;
    procedure turnOffYellow; cdecl;
    procedure turnOnAll; cdecl;
    procedure turnOnBlue; cdecl;
    procedure turnOnGreen; cdecl;
    procedure turnOnRed; cdecl;
    procedure turnOnYellow; cdecl;
  end;
  TJILedService = class(TJavaGenericImport<JILedServiceClass, JILedService>) end;

  JILedService_StubClass = interface(JBinderClass)
    ['{CE2C881D-2428-4BE9-809F-039FB2089A30}']
    {class} function asInterface(P1: JIBinder): JILedService; cdecl;
    {class} function init: JILedService_Stub; cdecl;
  end;

  [JavaSignature('com/getnet/posdigital/led/ILedService$Stub')]
  JILedService_Stub = interface(JBinder)
    ['{058624EC-7CB3-41B6-A2B4-A1C5C1A929EB}']
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;
  end;
  TJILedService_Stub = class(TJavaGenericImport<JILedService_StubClass, JILedService_Stub>) end;

  JILedService_Stub_ProxyClass = interface(JObjectClass)
    ['{ACDAA010-EDA3-4532-BB1C-CC83EBBDF10C}']
  end;

  [JavaSignature('com/getnet/posdigital/led/ILedService$Stub$Proxy')]
  JILedService_Stub_Proxy = interface(JObject)
    ['{FB5FDE25-9583-4E35-9327-217344B7DF42}']
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure turnOffAll; cdecl;
    procedure turnOffBlue; cdecl;
    procedure turnOffGreen; cdecl;
    procedure turnOffRed; cdecl;
    procedure turnOffYellow; cdecl;
    procedure turnOnAll; cdecl;
    procedure turnOnBlue; cdecl;
    procedure turnOnGreen; cdecl;
    procedure turnOnRed; cdecl;
    procedure turnOnYellow; cdecl;
  end;
  TJILedService_Stub_Proxy = class(TJavaGenericImport<JILedService_Stub_ProxyClass, JILedService_Stub_Proxy>) end;

  JIMifareActivateCallbackClass = interface(JIInterfaceClass)
    ['{AC78266F-C448-4128-B787-1CE5E69A9B92}']
  end;

  [JavaSignature('com/getnet/posdigital/mifare/IMifareActivateCallback')]
  JIMifareActivateCallback = interface(JIInterface)
    ['{27217FC4-E708-4C0F-B0E3-5EBE3F02CFD8}']
    procedure onActivate(P1: TJavaArray<Byte>); cdecl;
    procedure onError(P1: JString); cdecl;
  end;
  TJIMifareActivateCallback = class(TJavaGenericImport<JIMifareActivateCallbackClass, JIMifareActivateCallback>) end;

  JIMifareActivateCallback_StubClass = interface(JBinderClass)
    ['{F5085A74-604B-4363-A8B2-E9BEA11808F7}']
    {class} function asInterface(P1: JIBinder): JIMifareActivateCallback; cdecl;
    {class} function init: JIMifareActivateCallback_Stub; cdecl;
  end;

  [JavaSignature('com/getnet/posdigital/mifare/IMifareActivateCallback$Stub')]
  JIMifareActivateCallback_Stub = interface(JBinder)
    ['{5AACCC4B-5171-4AD7-A81C-9A3F496F21EA}']
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;
  end;
  TJIMifareActivateCallback_Stub = class(TJavaGenericImport<JIMifareActivateCallback_StubClass, JIMifareActivateCallback_Stub>) end;

  JIMifareActivateCallback_Stub_ProxyClass = interface(JObjectClass)
    ['{CA70DAE4-A057-4C95-9DFF-F53373B9B190}']
  end;

  [JavaSignature('com/getnet/posdigital/mifare/IMifareActivateCallback$Stub$Proxy')]
  JIMifareActivateCallback_Stub_Proxy = interface(JObject)
    ['{7826082E-ED2F-47ED-BEE6-B3F470E98BAD}']
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure onActivate(P1: TJavaArray<Byte>); cdecl;
    procedure onError(P1: JString); cdecl;
  end;
  TJIMifareActivateCallback_Stub_Proxy = class(TJavaGenericImport<JIMifareActivateCallback_Stub_ProxyClass, JIMifareActivateCallback_Stub_Proxy>) end;

  JIMifareCallbackClass = interface(JIInterfaceClass)
    ['{987C632B-6631-4FDE-BA93-BB9E14F57254}']
  end;

  [JavaSignature('com/getnet/posdigital/mifare/IMifareCallback')]
  JIMifareCallback = interface(JIInterface)
    ['{4447C1A7-7C62-4D1C-98E1-7C7D638B1E2C}']
    procedure onCard(P1: Integer); cdecl;
    procedure onError(P1: JString); cdecl;
  end;
  TJIMifareCallback = class(TJavaGenericImport<JIMifareCallbackClass, JIMifareCallback>) end;

  JIMifareCallback_StubClass = interface(JBinderClass)
    ['{85197405-BA9C-4332-BDB8-C3385ABC46C0}']
    {class} function asInterface(P1: JIBinder): JIMifareCallback; cdecl;
    {class} function init: JIMifareCallback_Stub; cdecl;
  end;

  [JavaSignature('com/getnet/posdigital/mifare/IMifareCallback$Stub')]
  JIMifareCallback_Stub = interface(JBinder)
    ['{2BD6A820-95FF-433F-AD1F-C391DE7B72D5}']
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;
  end;
  TJIMifareCallback_Stub = class(TJavaGenericImport<JIMifareCallback_StubClass, JIMifareCallback_Stub>) end;

  JIMifareCallback_Stub_ProxyClass = interface(JObjectClass)
    ['{4CB3B6B0-0D30-4783-982E-6A7BE2A043F9}']
  end;

  [JavaSignature('com/getnet/posdigital/mifare/IMifareCallback$Stub$Proxy')]
  JIMifareCallback_Stub_Proxy = interface(JObject)
    ['{29C000AE-0F94-4938-A885-79D60F715752}']
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure onCard(P1: Integer); cdecl;
    procedure onError(P1: JString); cdecl;
  end;
  TJIMifareCallback_Stub_Proxy = class(TJavaGenericImport<JIMifareCallback_Stub_ProxyClass, JIMifareCallback_Stub_Proxy>) end;

  JIMifareServiceClass = interface(JIInterfaceClass)
    ['{A810F439-D251-403F-9BAB-A2D548D3B1DB}']
  end;

  [JavaSignature('com/getnet/posdigital/mifare/IMifareService')]
  JIMifareService = interface(JIInterface)
    ['{930C073D-1D37-4D24-A30C-1DB695789979}']
    function activate(P1: Integer): Integer; cdecl;
    function authenticateBlockWithKeyA(P1: Integer; P2: TJavaArray<Byte>): Integer; cdecl;
    function authenticateBlockWithKeyB(P1: Integer; P2: TJavaArray<Byte>): Integer; cdecl;
    function authenticateSectorWithKeyA(P1: Integer; P2: TJavaArray<Byte>): Integer; cdecl;
    function authenticateSectorWithKeyB(P1: Integer; P2: TJavaArray<Byte>): Integer; cdecl;
    procedure close; cdecl;
    function decrement(P1: Integer; P2: Integer): Integer; cdecl;
    function getCardSerialNo(P1: Integer): JString; cdecl;
    procedure halt; cdecl;
    function increment(P1: Integer; P2: Integer): Integer; cdecl;
    function isExist: Boolean; cdecl;
    function readBlock(P1: Integer): JString; cdecl;
    function restore(P1: Integer): Integer; cdecl;
    procedure searchCard(P1: JIMifareCallback); cdecl;
    procedure searchCardAndActivate(P1: JIMifareActivateCallback); cdecl;
    function transfer(P1: Integer): Integer; cdecl;
    function writeBlock(P1: Integer; P2: JString): Integer; cdecl;
  end;
  TJIMifareService = class(TJavaGenericImport<JIMifareServiceClass, JIMifareService>) end;

  JIMifareService_StubClass = interface(JBinderClass)
    ['{754D097C-AD56-4A3B-B25B-F6DD0B1A46FD}']
    {class} function asInterface(P1: JIBinder): JIMifareService; cdecl;
    {class} function init: JIMifareService_Stub; cdecl;
  end;

  [JavaSignature('com/getnet/posdigital/mifare/IMifareService$Stub')]
  JIMifareService_Stub = interface(JBinder)
    ['{1D92D694-8480-4CFE-AC26-783CD6B74DEF}']
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;
  end;
  TJIMifareService_Stub = class(TJavaGenericImport<JIMifareService_StubClass, JIMifareService_Stub>) end;

  JIMifareService_Stub_ProxyClass = interface(JObjectClass)
    ['{9EAB164F-E888-42C1-8539-020289BEF074}']
  end;

  [JavaSignature('com/getnet/posdigital/mifare/IMifareService$Stub$Proxy')]
  JIMifareService_Stub_Proxy = interface(JObject)
    ['{B65AD2F9-F7CF-4D8C-A8FA-03B7F5FBEF98}']
    function activate(P1: Integer): Integer; cdecl;
    function asBinder: JIBinder; cdecl;
    function authenticateBlockWithKeyA(P1: Integer; P2: TJavaArray<Byte>): Integer; cdecl;
    function authenticateBlockWithKeyB(P1: Integer; P2: TJavaArray<Byte>): Integer; cdecl;
    function authenticateSectorWithKeyA(P1: Integer; P2: TJavaArray<Byte>): Integer; cdecl;
    function authenticateSectorWithKeyB(P1: Integer; P2: TJavaArray<Byte>): Integer; cdecl;
    procedure close; cdecl;
    function decrement(P1: Integer; P2: Integer): Integer; cdecl;
    function getCardSerialNo(P1: Integer): JString; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure halt; cdecl;
    function increment(P1: Integer; P2: Integer): Integer; cdecl;
    function isExist: Boolean; cdecl;
    function readBlock(P1: Integer): JString; cdecl;
    function restore(P1: Integer): Integer; cdecl;
    procedure searchCard(P1: JIMifareCallback); cdecl;
    procedure searchCardAndActivate(P1: JIMifareActivateCallback); cdecl;
    function transfer(P1: Integer): Integer; cdecl;
    function writeBlock(P1: Integer; P2: JString): Integer; cdecl;
  end;
  TJIMifareService_Stub_Proxy = class(TJavaGenericImport<JIMifareService_Stub_ProxyClass, JIMifareService_Stub_Proxy>) end;

  JMifareStatusClass = interface(JObjectClass)
    ['{F5DDA10F-5BB2-4020-B0C7-C6701FD53EB5}']
    {class} function _GetCARDNOACT: Integer;
    {class} procedure _SetCARDNOACT(Value: Integer);
    {class} function _GetERRPARAM: Integer;
    {class} procedure _SetERRPARAM(Value: Integer);
    {class} function _GetHALT: Integer;
    {class} procedure _SetHALT(Value: Integer);
    {class} function _GetIC_SWDIFF: Integer;
    {class} procedure _SetIC_SWDIFF(Value: Integer);
    {class} function _GetINVALID_CALL: Integer;
    {class} procedure _SetINVALID_CALL(Value: Integer);
    {class} function _GetMULTIERR: Integer;
    {class} procedure _SetMULTIERR(Value: Integer);
    {class} function _GetNOTAGERR: Integer;
    {class} procedure _SetNOTAGERR(Value: Integer);
    {class} function _GetNOT_ACTIVATE: Integer;
    {class} procedure _SetNOT_ACTIVATE(Value: Integer);
    {class} function _GetPROTERR: Integer;
    {class} procedure _SetPROTERR(Value: Integer);
    {class} function _GetREQUEST_EXCEPTION: Integer;
    {class} procedure _SetREQUEST_EXCEPTION(Value: Integer);
    {class} function _GetSERVICE_CRASH: Integer;
    {class} procedure _SetSERVICE_CRASH(Value: Integer);
    {class} function _GetSUCCESS: Integer;
    {class} procedure _SetSUCCESS(Value: Integer);
    {class} function _GetTIMEOUT: Integer;
    {class} procedure _SetTIMEOUT(Value: Integer);
    {class} function _GetTRANSERR: Integer;
    {class} procedure _SetTRANSERR(Value: Integer);
    {class} function init: JMifareStatus; cdecl;
    {class} property CARDNOACT: Integer read _GetCARDNOACT write _SetCARDNOACT;
    {class} property ERRPARAM: Integer read _GetERRPARAM write _SetERRPARAM;
    {class} property HALT: Integer read _GetHALT write _SetHALT;
    {class} property IC_SWDIFF: Integer read _GetIC_SWDIFF write _SetIC_SWDIFF;
    {class} property INVALID_CALL: Integer read _GetINVALID_CALL write _SetINVALID_CALL;
    {class} property MULTIERR: Integer read _GetMULTIERR write _SetMULTIERR;
    {class} property NOTAGERR: Integer read _GetNOTAGERR write _SetNOTAGERR;
    {class} property NOT_ACTIVATE: Integer read _GetNOT_ACTIVATE write _SetNOT_ACTIVATE;
    {class} property PROTERR: Integer read _GetPROTERR write _SetPROTERR;
    {class} property REQUEST_EXCEPTION: Integer read _GetREQUEST_EXCEPTION write _SetREQUEST_EXCEPTION;
    {class} property SERVICE_CRASH: Integer read _GetSERVICE_CRASH write _SetSERVICE_CRASH;
    {class} property SUCCESS: Integer read _GetSUCCESS write _SetSUCCESS;
    {class} property TIMEOUT: Integer read _GetTIMEOUT write _SetTIMEOUT;
    {class} property TRANSERR: Integer read _GetTRANSERR write _SetTRANSERR;
  end;

  [JavaSignature('com/getnet/posdigital/mifare/MifareStatus')]
  JMifareStatus = interface(JObject)
    ['{CCEBEACF-A2D8-4047-AE18-9F49946D2E3F}']
  end;
  TJMifareStatus = class(TJavaGenericImport<JMifareStatusClass, JMifareStatus>) end;

  JAlignModeClass = interface(JObjectClass)
    ['{5AFB3D3E-DFA8-483D-B45B-2FEB3D836111}']
    {class} function _GetCENTER: Integer;
    {class} procedure _SetCENTER(Value: Integer);
    {class} function _GetLEFT: Integer;
    {class} procedure _SetLEFT(Value: Integer);
    {class} function _GetRIGHT: Integer;
    {class} procedure _SetRIGHT(Value: Integer);
    {class} function init: JAlignMode; cdecl;
    {class} property CENTER: Integer read _GetCENTER write _SetCENTER;
    {class} property LEFT: Integer read _GetLEFT write _SetLEFT;
    {class} property RIGHT: Integer read _GetRIGHT write _SetRIGHT;
  end;

  [JavaSignature('com/getnet/posdigital/printer/AlignMode')]
  JAlignMode = interface(JObject)
    ['{448541AD-6339-40CF-B921-05D034E205E0}']
  end;
  TJAlignMode = class(TJavaGenericImport<JAlignModeClass, JAlignMode>) end;

  JFontFormatClass = interface(JObjectClass)
    ['{001BF500-85EE-46DC-8DD8-4BE2A1D7039B}']
    {class} function _GetLARGE: Integer;
    {class} procedure _SetLARGE(Value: Integer);
    {class} function _GetMEDIUM: Integer;
    {class} procedure _SetMEDIUM(Value: Integer);
    {class} function _GetSMALL: Integer;
    {class} procedure _SetSMALL(Value: Integer);
    {class} function init: JFontFormat; cdecl;
    {class} property LARGE: Integer read _GetLARGE write _SetLARGE;
    {class} property MEDIUM: Integer read _GetMEDIUM write _SetMEDIUM;
    {class} property SMALL: Integer read _GetSMALL write _SetSMALL;
  end;

  [JavaSignature('com/getnet/posdigital/printer/FontFormat')]
  JFontFormat = interface(JObject)
    ['{59986DA3-25EB-485A-8D5A-289B27538342}']
  end;
  TJFontFormat = class(TJavaGenericImport<JFontFormatClass, JFontFormat>) end;

  JIPrinterCallbackClass = interface(JIInterfaceClass)
    ['{3C33806F-0F72-4316-A9E6-6B59E042B628}']
  end;

  [JavaSignature('com/getnet/posdigital/printer/IPrinterCallback')]
  JIPrinterCallback = interface(JIInterface)
    ['{965E3F37-8BEE-41A5-AC07-A5A1EF4F8230}']
    procedure onError(P1: Integer); cdecl;
    procedure onSuccess; cdecl;
  end;
  TJIPrinterCallback = class(TJavaGenericImport<JIPrinterCallbackClass, JIPrinterCallback>) end;

  JIPrinterCallback_StubClass = interface(JBinderClass)
    ['{FD52394B-8757-4CCB-877C-ABFB72909199}']
    {class} function asInterface(P1: JIBinder): JIPrinterCallback; cdecl;
    {class} function init: JIPrinterCallback_Stub; cdecl;
  end;

  [JavaSignature('com/getnet/posdigital/printer/IPrinterCallback$Stub')]
  JIPrinterCallback_Stub = interface(JBinder)
    ['{2DEE1C63-C9CA-488F-A799-1DE2A14E9916}']
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;
  end;
  TJIPrinterCallback_Stub = class(TJavaGenericImport<JIPrinterCallback_StubClass, JIPrinterCallback_Stub>) end;

  JIPrinterCallback_Stub_ProxyClass = interface(JObjectClass)
    ['{3144B533-9C94-4CA6-9A9C-CFB6126E0F76}']
  end;

  [JavaSignature('com/getnet/posdigital/printer/IPrinterCallback$Stub$Proxy')]
  JIPrinterCallback_Stub_Proxy = interface(JObject)
    ['{24A0BE43-9A19-475A-A1A2-26D5F9BADE61}']
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure onError(P1: Integer); cdecl;
    procedure onSuccess; cdecl;
  end;
  TJIPrinterCallback_Stub_Proxy = class(TJavaGenericImport<JIPrinterCallback_Stub_ProxyClass, JIPrinterCallback_Stub_Proxy>) end;

  JIPrinterServiceClass = interface(JIInterfaceClass)
    ['{5C53606E-DF7B-4838-9A84-47571D996FA0}']
  end;

  [JavaSignature('com/getnet/posdigital/printer/IPrinterService')]
  JIPrinterService = interface(JIInterface)
    ['{35B00615-DFD7-4A81-AE0D-12963E34F652}']
    procedure addBarCode(P1: Integer; P2: JString); cdecl;
    procedure addImageBitmap(P1: Integer; P2: JBitmap); cdecl;
    procedure addImageByteArray(P1: Integer; P2: TJavaArray<Byte>); cdecl;
    procedure addQrCode(P1: Integer; P2: Integer; P3: JString); cdecl;
    procedure addText(P1: Integer; P2: JString); cdecl;
    procedure defineFontFormat(P1: Integer); cdecl;
    function getStatus: Integer; cdecl;
    procedure init; cdecl;
    procedure print(P1: JIPrinterCallback); cdecl;
    procedure setGray(P1: Integer); cdecl;
  end;
  TJIPrinterService = class(TJavaGenericImport<JIPrinterServiceClass, JIPrinterService>) end;

  JIPrinterService_StubClass = interface(JBinderClass)
    ['{14BCB17B-0DAF-4878-B182-2F2E426509CD}']
    {class} function asInterface(P1: JIBinder): JIPrinterService; cdecl;
    {class} function init: JIPrinterService_Stub; cdecl;
  end;

  [JavaSignature('com/getnet/posdigital/printer/IPrinterService$Stub')]
  JIPrinterService_Stub = interface(JBinder)
    ['{630CC83E-0844-4155-9880-327E07F85F9D}']
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;
  end;
  TJIPrinterService_Stub = class(TJavaGenericImport<JIPrinterService_StubClass, JIPrinterService_Stub>) end;

  JIPrinterService_Stub_ProxyClass = interface(JObjectClass)
    ['{709F542B-1F9C-44F2-A259-9C15A20996A0}']
  end;

  [JavaSignature('com/getnet/posdigital/printer/IPrinterService$Stub$Proxy')]
  JIPrinterService_Stub_Proxy = interface(JObject)
    ['{D3005A96-F0A1-4029-AA56-AE4265A0CB5D}']
    procedure addBarCode(P1: Integer; P2: JString); cdecl;
    procedure addImageBitmap(P1: Integer; P2: JBitmap); cdecl;
    procedure addImageByteArray(P1: Integer; P2: TJavaArray<Byte>); cdecl;
    procedure addQrCode(P1: Integer; P2: Integer; P3: JString); cdecl;
    procedure addText(P1: Integer; P2: JString); cdecl;
    function asBinder: JIBinder; cdecl;
    procedure defineFontFormat(P1: Integer); cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function getStatus: Integer; cdecl;
    procedure init; cdecl; overload;
    procedure print(P1: JIPrinterCallback); cdecl;
    procedure setGray(P1: Integer); cdecl;
  end;
  TJIPrinterService_Stub_Proxy = class(TJavaGenericImport<JIPrinterService_Stub_ProxyClass, JIPrinterService_Stub_Proxy>) end;

  JPrinterStatusClass = interface(JObjectClass)
    ['{4947CD0E-05A0-47AD-9F7C-537A7EAA0503}']
    {class} function _GetERROR_BUFOVERFLOW: Integer;
    {class} procedure _SetERROR_BUFOVERFLOW(Value: Integer);
    {class} function _GetERROR_LIFTHEAD: Integer;
    {class} procedure _SetERROR_LIFTHEAD(Value: Integer);
    {class} function _GetERROR_LOWTEMP: Integer;
    {class} procedure _SetERROR_LOWTEMP(Value: Integer);
    {class} function _GetERROR_LOWVOL: Integer;
    {class} procedure _SetERROR_LOWVOL(Value: Integer);
    {class} function _GetERROR_MOTORERR: Integer;
    {class} procedure _SetERROR_MOTORERR(Value: Integer);
    {class} function _GetERROR_NOT_INIT: Integer;
    {class} procedure _SetERROR_NOT_INIT(Value: Integer);
    {class} function _GetERROR_NO_PAPER: Integer;
    {class} procedure _SetERROR_NO_PAPER(Value: Integer);
    {class} function _GetERROR_OVERHEAT: Integer;
    {class} procedure _SetERROR_OVERHEAT(Value: Integer);
    {class} function _GetERROR_PAPERENDING: Integer;
    {class} procedure _SetERROR_PAPERENDING(Value: Integer);
    {class} function _GetERROR_PAPERJAM: Integer;
    {class} procedure _SetERROR_PAPERJAM(Value: Integer);
    {class} function _GetERROR_PARAM: Integer;
    {class} procedure _SetERROR_PARAM(Value: Integer);
    {class} function _GetOK: Integer;
    {class} procedure _SetOK(Value: Integer);
    {class} function _GetPRINTING: Integer;
    {class} procedure _SetPRINTING(Value: Integer);
    {class} function _GetUNKNOW: Integer;
    {class} procedure _SetUNKNOW(Value: Integer);
    {class} function init: JPrinterStatus; cdecl;
    {class} property ERROR_BUFOVERFLOW: Integer read _GetERROR_BUFOVERFLOW write _SetERROR_BUFOVERFLOW;
    {class} property ERROR_LIFTHEAD: Integer read _GetERROR_LIFTHEAD write _SetERROR_LIFTHEAD;
    {class} property ERROR_LOWTEMP: Integer read _GetERROR_LOWTEMP write _SetERROR_LOWTEMP;
    {class} property ERROR_LOWVOL: Integer read _GetERROR_LOWVOL write _SetERROR_LOWVOL;
    {class} property ERROR_MOTORERR: Integer read _GetERROR_MOTORERR write _SetERROR_MOTORERR;
    {class} property ERROR_NOT_INIT: Integer read _GetERROR_NOT_INIT write _SetERROR_NOT_INIT;
    {class} property ERROR_NO_PAPER: Integer read _GetERROR_NO_PAPER write _SetERROR_NO_PAPER;
    {class} property ERROR_OVERHEAT: Integer read _GetERROR_OVERHEAT write _SetERROR_OVERHEAT;
    {class} property ERROR_PAPERENDING: Integer read _GetERROR_PAPERENDING write _SetERROR_PAPERENDING;
    {class} property ERROR_PAPERJAM: Integer read _GetERROR_PAPERJAM write _SetERROR_PAPERJAM;
    {class} property ERROR_PARAM: Integer read _GetERROR_PARAM write _SetERROR_PARAM;
    {class} property OK: Integer read _GetOK write _SetOK;
    {class} property PRINTING: Integer read _GetPRINTING write _SetPRINTING;
    {class} property UNKNOW: Integer read _GetUNKNOW write _SetUNKNOW;
  end;

  [JavaSignature('com/getnet/posdigital/printer/PrinterStatus')]
  JPrinterStatus = interface(JObject)
    ['{7A52F7B7-7489-402E-9ABD-BA3FE512992E}']
  end;
  TJPrinterStatus = class(TJavaGenericImport<JPrinterStatusClass, JPrinterStatus>) end;

  JIStatCallbackClass = interface(JIInterfaceClass)
    ['{1045FBF6-7D6F-4639-B388-F0F1E07159A0}']
  end;

  [JavaSignature('com/getnet/posdigital/stat/IStatCallback')]
  JIStatCallback = interface(JIInterface)
    ['{D5BCC932-4BB9-433D-9CDC-4FC741879442}']
    procedure onError(P1: JString); cdecl;
    procedure onStatistic(P1: JStatResponse); cdecl;
  end;
  TJIStatCallback = class(TJavaGenericImport<JIStatCallbackClass, JIStatCallback>) end;

  JIStatCallback_StubClass = interface(JBinderClass)
    ['{C4321764-2B58-46B4-883B-81FE4D2AA4FB}']
    {class} function asInterface(P1: JIBinder): JIStatCallback; cdecl;
    {class} function init: JIStatCallback_Stub; cdecl;
  end;

  [JavaSignature('com/getnet/posdigital/stat/IStatCallback$Stub')]
  JIStatCallback_Stub = interface(JBinder)
    ['{0567BCCC-2947-40CD-B342-39233893B28D}']
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;
  end;
  TJIStatCallback_Stub = class(TJavaGenericImport<JIStatCallback_StubClass, JIStatCallback_Stub>) end;

  JIStatCallback_Stub_ProxyClass = interface(JObjectClass)
    ['{E634C973-2D52-478B-935D-455FA889296C}']
  end;

  [JavaSignature('com/getnet/posdigital/stat/IStatCallback$Stub$Proxy')]
  JIStatCallback_Stub_Proxy = interface(JObject)
    ['{8838AB5E-B474-4D82-8A64-3EC121E86DA5}']
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure onError(P1: JString); cdecl;
    procedure onStatistic(P1: JStatResponse); cdecl;
  end;
  TJIStatCallback_Stub_Proxy = class(TJavaGenericImport<JIStatCallback_Stub_ProxyClass, JIStatCallback_Stub_Proxy>) end;

  JIStatServiceClass = interface(JIInterfaceClass)
    ['{9ABC0B29-E0A2-4AEE-AEB4-57521F2A2E65}']
  end;

  [JavaSignature('com/getnet/posdigital/stat/IStatService')]
  JIStatService = interface(JIInterface)
    ['{97FE8B9A-626A-4BA0-AA68-F821B4616974}']
    procedure getAllAppChipStatus(P1: JIStatCallback); cdecl;
    procedure getAllAppChipStatusFail(P1: JIStatCallback); cdecl;
    procedure getAllAppMagStatus(P1: JIStatCallback); cdecl;
    procedure getAllAppMagStatusFail(P1: JIStatCallback); cdecl;
    procedure getAllAppNfcStatus(P1: JIStatCallback); cdecl;
    procedure getAllAppNfcStatusFail(P1: JIStatCallback); cdecl;
    procedure getAllAppPaperStatus(P1: JIStatCallback); cdecl;
    procedure getChipStatus(P1: JIStatCallback); cdecl;
    procedure getChipStatusFail(P1: JIStatCallback); cdecl;
    procedure getMagStatus(P1: JIStatCallback); cdecl;
    procedure getMagStatusFail(P1: JIStatCallback); cdecl;
    procedure getMifareStatus(P1: JIStatCallback); cdecl;
    procedure getMifareStatusFail(P1: JIStatCallback); cdecl;
    procedure getNfcStatus(P1: JIStatCallback); cdecl;
    procedure getNfcStatusFail(P1: JIStatCallback); cdecl;
    procedure getPaperStatus(P1: JIStatCallback); cdecl;
  end;
  TJIStatService = class(TJavaGenericImport<JIStatServiceClass, JIStatService>) end;

  JIStatService_StubClass = interface(JBinderClass)
    ['{F2FEA0C1-28E6-42F1-AE1B-8D8FD477B077}']
    {class} function asInterface(P1: JIBinder): JIStatService; cdecl;
    {class} function init: JIStatService_Stub; cdecl;
  end;

  [JavaSignature('com/getnet/posdigital/stat/IStatService$Stub')]
  JIStatService_Stub = interface(JBinder)
    ['{3A97D7FD-04BC-4A6F-9263-A25AF1DED11D}']
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;
  end;
  TJIStatService_Stub = class(TJavaGenericImport<JIStatService_StubClass, JIStatService_Stub>) end;

  JIStatService_Stub_ProxyClass = interface(JObjectClass)
    ['{F87E924C-16CC-4244-93E5-4D805024CD46}']
  end;

  [JavaSignature('com/getnet/posdigital/stat/IStatService$Stub$Proxy')]
  JIStatService_Stub_Proxy = interface(JObject)
    ['{2A843851-920C-42FB-817F-40D060B3827E}']
    function asBinder: JIBinder; cdecl;
    procedure getAllAppChipStatus(P1: JIStatCallback); cdecl;
    procedure getAllAppChipStatusFail(P1: JIStatCallback); cdecl;
    procedure getAllAppMagStatus(P1: JIStatCallback); cdecl;
    procedure getAllAppMagStatusFail(P1: JIStatCallback); cdecl;
    procedure getAllAppNfcStatus(P1: JIStatCallback); cdecl;
    procedure getAllAppNfcStatusFail(P1: JIStatCallback); cdecl;
    procedure getAllAppPaperStatus(P1: JIStatCallback); cdecl;
    procedure getChipStatus(P1: JIStatCallback); cdecl;
    procedure getChipStatusFail(P1: JIStatCallback); cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure getMagStatus(P1: JIStatCallback); cdecl;
    procedure getMagStatusFail(P1: JIStatCallback); cdecl;
    procedure getMifareStatus(P1: JIStatCallback); cdecl;
    procedure getMifareStatusFail(P1: JIStatCallback); cdecl;
    procedure getNfcStatus(P1: JIStatCallback); cdecl;
    procedure getNfcStatusFail(P1: JIStatCallback); cdecl;
    procedure getPaperStatus(P1: JIStatCallback); cdecl;
  end;
  TJIStatService_Stub_Proxy = class(TJavaGenericImport<JIStatService_Stub_ProxyClass, JIStatService_Stub_Proxy>) end;

  JStatResponseClass = interface(JObjectClass)
    ['{B0A26C47-4201-4AE2-BA6D-A4A839834710}']
    {class} function _GetCREATOR: JParcelable_Creator;
    {class} function init: JStatResponse; cdecl; overload;
    {class} function init(P1: JParcel): JStatResponse; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/getnet/posdigital/stat/StatResponse')]
  JStatResponse = interface(JObject)
    ['{15B3710F-9261-442D-AE14-CC31BCD2AE84}']
    function describeContents: Integer; cdecl;
    function getAppChipStatus: JString; cdecl;
    function getAppChipStatusFail: JString; cdecl;
    function getAppMagStatus: JString; cdecl;
    function getAppMagStatusFail: JString; cdecl;
    function getAppNfcStatus: JString; cdecl;
    function getAppNfcStatusFail: JString; cdecl;
    function getAppPaperStatus: JString; cdecl;
    function getGeneralChipStatus: JString; cdecl;
    function getGeneralChipStatusFail: JString; cdecl;
    function getGeneralMagStatus: JString; cdecl;
    function getGeneralMagStatusFail: JString; cdecl;
    function getGeneralMifareStatus: JString; cdecl;
    function getGeneralMifareStatusFail: JString; cdecl;
    function getGeneralNfcStatus: JString; cdecl;
    function getGeneralNfcStatusFail: JString; cdecl;
    function getGeneralPaperStatus: JString; cdecl;
    procedure setAppChipStatus(P1: JString); cdecl;
    procedure setAppChipStatusFail(P1: JString); cdecl;
    procedure setAppMagStatus(P1: JString); cdecl;
    procedure setAppMagStatusFail(P1: JString); cdecl;
    procedure setAppNfcStatus(P1: JString); cdecl;
    procedure setAppNfcStatusFail(P1: JString); cdecl;
    procedure setAppPaperStatus(P1: JString); cdecl;
    procedure setGeneralChipStatus(P1: JString); cdecl;
    procedure setGeneralChipStatusFail(P1: JString); cdecl;
    procedure setGeneralMagStatus(P1: JString); cdecl;
    procedure setGeneralMagStatusFail(P1: JString); cdecl;
    procedure setGeneralMifareStatus(P1: JString); cdecl;
    procedure setGeneralMifareStatusFail(P1: JString); cdecl;
    procedure setGeneralNfcStatus(P1: JString); cdecl;
    procedure setGeneralNfcStatusFail(P1: JString); cdecl;
    procedure setGeneralPaperStatus(P1: JString); cdecl;
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;
  end;
  TJStatResponse = class(TJavaGenericImport<JStatResponseClass, JStatResponse>) end;

  JStatResponse_1Class = interface(JObjectClass)
    ['{1872FA9F-845C-45B1-A17A-9FECE30BC130}']
  end;

  [JavaSignature('com/getnet/posdigital/stat/StatResponse$1')]
  JStatResponse_1 = interface(JObject)
    ['{67834D34-B524-4156-874A-86081720B6D6}']
    function createFromParcel(P1: JParcel): JStatResponse; cdecl;
    function newArray(P1: Integer): TJavaObjectArray<JStatResponse>; cdecl;
  end;
  TJStatResponse_1 = class(TJavaGenericImport<JStatResponse_1Class, JStatResponse_1>) end;

implementation

procedure RegisterTypes;
begin
  TRegTypes.RegisterType('bridge.Jposdigital_BuildConfig', TypeInfo(bridge.Jposdigital_BuildConfig));
  TRegTypes.RegisterType('bridge.JIMainService', TypeInfo(bridge.JIMainService));
  TRegTypes.RegisterType('bridge.JIMainService_Stub', TypeInfo(bridge.JIMainService_Stub));
  TRegTypes.RegisterType('bridge.JIMainService_Stub_Proxy', TypeInfo(bridge.JIMainService_Stub_Proxy));
  TRegTypes.RegisterType('bridge.JPosDigital', TypeInfo(bridge.JPosDigital));
  TRegTypes.RegisterType('bridge.JPosDigital_1', TypeInfo(bridge.JPosDigital_1));
  TRegTypes.RegisterType('bridge.JPosDigital_2', TypeInfo(bridge.JPosDigital_2));
  TRegTypes.RegisterType('bridge.JPosDigital_3', TypeInfo(bridge.JPosDigital_3));
  TRegTypes.RegisterType('bridge.JPosDigital_BindCallback', TypeInfo(bridge.JPosDigital_BindCallback));
  TRegTypes.RegisterType('bridge.JIBeeperService', TypeInfo(bridge.JIBeeperService));
  TRegTypes.RegisterType('bridge.JIBeeperService_Stub', TypeInfo(bridge.JIBeeperService_Stub));
  TRegTypes.RegisterType('bridge.JIBeeperService_Stub_Proxy', TypeInfo(bridge.JIBeeperService_Stub_Proxy));
  TRegTypes.RegisterType('bridge.JICameraCallback', TypeInfo(bridge.JICameraCallback));
  TRegTypes.RegisterType('bridge.JICameraCallback_Stub', TypeInfo(bridge.JICameraCallback_Stub));
  TRegTypes.RegisterType('bridge.JICameraCallback_Stub_Proxy', TypeInfo(bridge.JICameraCallback_Stub_Proxy));
  TRegTypes.RegisterType('bridge.JICameraService', TypeInfo(bridge.JICameraService));
  TRegTypes.RegisterType('bridge.JICameraService_Stub', TypeInfo(bridge.JICameraService_Stub));
  TRegTypes.RegisterType('bridge.JICameraService_Stub_Proxy', TypeInfo(bridge.JICameraService_Stub_Proxy));
  TRegTypes.RegisterType('bridge.JCardResponse', TypeInfo(bridge.JCardResponse));
  TRegTypes.RegisterType('bridge.JCardResponse_1', TypeInfo(bridge.JCardResponse_1));
  TRegTypes.RegisterType('bridge.JICardCallback', TypeInfo(bridge.JICardCallback));
  TRegTypes.RegisterType('bridge.JICardCallback_Stub', TypeInfo(bridge.JICardCallback_Stub));
  TRegTypes.RegisterType('bridge.JICardCallback_Stub_Proxy', TypeInfo(bridge.JICardCallback_Stub_Proxy));
  TRegTypes.RegisterType('bridge.JICardService', TypeInfo(bridge.JICardService));
  TRegTypes.RegisterType('bridge.JICardService_Stub', TypeInfo(bridge.JICardService_Stub));
  TRegTypes.RegisterType('bridge.JICardService_Stub_Proxy', TypeInfo(bridge.JICardService_Stub_Proxy));
  TRegTypes.RegisterType('bridge.JSearchType', TypeInfo(bridge.JSearchType));
  TRegTypes.RegisterType('bridge.JBitmapUtils', TypeInfo(bridge.JBitmapUtils));
  TRegTypes.RegisterType('bridge.JViewUtils', TypeInfo(bridge.JViewUtils));
  TRegTypes.RegisterType('bridge.JIInfoCallback', TypeInfo(bridge.JIInfoCallback));
  TRegTypes.RegisterType('bridge.JIInfoCallback_Stub', TypeInfo(bridge.JIInfoCallback_Stub));
  TRegTypes.RegisterType('bridge.JIInfoCallback_Stub_Proxy', TypeInfo(bridge.JIInfoCallback_Stub_Proxy));
  TRegTypes.RegisterType('bridge.JIInfoService', TypeInfo(bridge.JIInfoService));
  TRegTypes.RegisterType('bridge.JIInfoService_Stub', TypeInfo(bridge.JIInfoService_Stub));
  TRegTypes.RegisterType('bridge.JIInfoService_Stub_Proxy', TypeInfo(bridge.JIInfoService_Stub_Proxy));
  TRegTypes.RegisterType('bridge.JInfoResponse', TypeInfo(bridge.JInfoResponse));
  TRegTypes.RegisterType('bridge.JInfoResponse_1', TypeInfo(bridge.JInfoResponse_1));
  TRegTypes.RegisterType('bridge.JILedService', TypeInfo(bridge.JILedService));
  TRegTypes.RegisterType('bridge.JILedService_Stub', TypeInfo(bridge.JILedService_Stub));
  TRegTypes.RegisterType('bridge.JILedService_Stub_Proxy', TypeInfo(bridge.JILedService_Stub_Proxy));
  TRegTypes.RegisterType('bridge.JIMifareActivateCallback', TypeInfo(bridge.JIMifareActivateCallback));
  TRegTypes.RegisterType('bridge.JIMifareActivateCallback_Stub', TypeInfo(bridge.JIMifareActivateCallback_Stub));
  TRegTypes.RegisterType('bridge.JIMifareActivateCallback_Stub_Proxy', TypeInfo(bridge.JIMifareActivateCallback_Stub_Proxy));
  TRegTypes.RegisterType('bridge.JIMifareCallback', TypeInfo(bridge.JIMifareCallback));
  TRegTypes.RegisterType('bridge.JIMifareCallback_Stub', TypeInfo(bridge.JIMifareCallback_Stub));
  TRegTypes.RegisterType('bridge.JIMifareCallback_Stub_Proxy', TypeInfo(bridge.JIMifareCallback_Stub_Proxy));
  TRegTypes.RegisterType('bridge.JIMifareService', TypeInfo(bridge.JIMifareService));
  TRegTypes.RegisterType('bridge.JIMifareService_Stub', TypeInfo(bridge.JIMifareService_Stub));
  TRegTypes.RegisterType('bridge.JIMifareService_Stub_Proxy', TypeInfo(bridge.JIMifareService_Stub_Proxy));
  TRegTypes.RegisterType('bridge.JMifareStatus', TypeInfo(bridge.JMifareStatus));
  TRegTypes.RegisterType('bridge.JAlignMode', TypeInfo(bridge.JAlignMode));
  TRegTypes.RegisterType('bridge.JFontFormat', TypeInfo(bridge.JFontFormat));
  TRegTypes.RegisterType('bridge.JIPrinterCallback', TypeInfo(bridge.JIPrinterCallback));
  TRegTypes.RegisterType('bridge.JIPrinterCallback_Stub', TypeInfo(bridge.JIPrinterCallback_Stub));
  TRegTypes.RegisterType('bridge.JIPrinterCallback_Stub_Proxy', TypeInfo(bridge.JIPrinterCallback_Stub_Proxy));
  TRegTypes.RegisterType('bridge.JIPrinterService', TypeInfo(bridge.JIPrinterService));
  TRegTypes.RegisterType('bridge.JIPrinterService_Stub', TypeInfo(bridge.JIPrinterService_Stub));
  TRegTypes.RegisterType('bridge.JIPrinterService_Stub_Proxy', TypeInfo(bridge.JIPrinterService_Stub_Proxy));
  TRegTypes.RegisterType('bridge.JPrinterStatus', TypeInfo(bridge.JPrinterStatus));
  TRegTypes.RegisterType('bridge.JIStatCallback', TypeInfo(bridge.JIStatCallback));
  TRegTypes.RegisterType('bridge.JIStatCallback_Stub', TypeInfo(bridge.JIStatCallback_Stub));
  TRegTypes.RegisterType('bridge.JIStatCallback_Stub_Proxy', TypeInfo(bridge.JIStatCallback_Stub_Proxy));
  TRegTypes.RegisterType('bridge.JIStatService', TypeInfo(bridge.JIStatService));
  TRegTypes.RegisterType('bridge.JIStatService_Stub', TypeInfo(bridge.JIStatService_Stub));
  TRegTypes.RegisterType('bridge.JIStatService_Stub_Proxy', TypeInfo(bridge.JIStatService_Stub_Proxy));
  TRegTypes.RegisterType('bridge.JStatResponse', TypeInfo(bridge.JStatResponse));
  TRegTypes.RegisterType('bridge.JStatResponse_1', TypeInfo(bridge.JStatResponse_1));
end;

initialization
  RegisterTypes;
end.


