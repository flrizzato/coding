{*******************************************************}
{                                                       }
{           CodeGear Delphi Runtime Library             }
{ Copyright(c) 2014 Embarcadero Technologies, Inc.      }
{                                                       }
{*******************************************************}

unit bridge_callback;

interface

uses
  bridge,
  Androidapi.JNIBridge,
  Androidapi.JNI.JavaTypes;

type
// ===== Forward declarations =====

  JCameraCallback = interface;//br.com.embarcadero.getnetcamera.CameraCallback
  JCameraCallbackInstance = interface;//br.com.embarcadero.getnetcamera.CameraCallbackInstance
  Jgetnetprinter_BuildConfig = interface;//br.com.embarcadero.getnetprinter.BuildConfig
  JPrinterCallback = interface;//br.com.embarcadero.getnetprinter.PrinterCallback
  JPrinterCallbackInstance = interface;//br.com.embarcadero.getnetprinter.PrinterCallbackInstance

// ===== Interface declarations =====

  JCameraCallbackClass = interface(IJavaClass)
    ['{9E0A46CC-AB63-47A5-A1DA-8297A7C165D4}']
  end;

  [JavaSignature('br/com/embarcadero/getnetcamera/CameraCallback')]
  JCameraCallback = interface(IJavaInstance)
    ['{347E3AC9-54DB-4216-A2B2-FB1D6748C071}']
    procedure onCancel; cdecl;
    procedure onError(P1: JString); cdecl;
    procedure onSuccess(P1: JString); cdecl;
    procedure onTimeout; cdecl;
  end;
  TJCameraCallback = class(TJavaGenericImport<JCameraCallbackClass, JCameraCallback>) end;

  JCameraCallbackInstanceClass = interface(JObjectClass)
    ['{FF5F13F1-040D-4B8F-988B-65ABEEC0119D}']
    {class} function getInstance(P1: JCameraCallback): JICameraCallback; cdecl;
    {class} function init: JCameraCallbackInstance; cdecl;
  end;

  [JavaSignature('br/com/embarcadero/getnetcamera/CameraCallbackInstance')]
  JCameraCallbackInstance = interface(JObject)
    ['{586DD644-024D-49F4-AE20-140FF967A98D}']
  end;
  TJCameraCallbackInstance = class(TJavaGenericImport<JCameraCallbackInstanceClass, JCameraCallbackInstance>) end;

  Jgetnetprinter_BuildConfigClass = interface(JObjectClass)
    ['{74F69514-AF72-4A0E-BFE0-6AFACEEE5DDB}']
    {class} function _GetAPPLICATION_ID: JString;
    {class} function _GetBUILD_TYPE: JString;
    {class} function _GetDEBUG: Boolean;
    {class} function _GetFLAVOR: JString;
    {class} function _GetVERSION_CODE: Integer;
    {class} function _GetVERSION_NAME: JString;
    {class} function init: Jgetnetprinter_BuildConfig; cdecl;
    {class} property APPLICATION_ID: JString read _GetAPPLICATION_ID;
    {class} property BUILD_TYPE: JString read _GetBUILD_TYPE;
    {class} property DEBUG: Boolean read _GetDEBUG;
    {class} property FLAVOR: JString read _GetFLAVOR;
    {class} property VERSION_CODE: Integer read _GetVERSION_CODE;
    {class} property VERSION_NAME: JString read _GetVERSION_NAME;
  end;

  [JavaSignature('br/com/embarcadero/getnetprinter/BuildConfig')]
  Jgetnetprinter_BuildConfig = interface(JObject)
    ['{6E4ADDC0-D14E-492D-8E57-7E4F75E8FBC7}']
  end;
  TJgetnetprinter_BuildConfig = class(TJavaGenericImport<Jgetnetprinter_BuildConfigClass, Jgetnetprinter_BuildConfig>) end;

  JPrinterCallbackClass = interface(IJavaClass)
    ['{27F473D0-E570-4AA6-8FEC-3627CBF2584D}']
  end;

  [JavaSignature('br/com/embarcadero/getnetprinter/PrinterCallback')]
  JPrinterCallback = interface(IJavaInstance)
    ['{41703673-C1EE-4949-B27B-DD36A8B12794}']
    procedure onError(P1: Integer); cdecl;
    procedure onSuccess; cdecl;
  end;
  TJPrinterCallback = class(TJavaGenericImport<JPrinterCallbackClass, JPrinterCallback>) end;

  JPrinterCallbackInstanceClass = interface(JObjectClass)
    ['{688257D6-960D-41D2-A90F-030489346CDB}']
    {class} function getInstance(P1: JPrinterCallback): JIPrinterCallback; cdecl;
    {class} function init: JPrinterCallbackInstance; cdecl;
  end;

  [JavaSignature('br/com/embarcadero/getnetprinter/PrinterCallbackInstance')]
  JPrinterCallbackInstance = interface(JObject)
    ['{290FAE6B-6647-405E-9519-889AE0CD0ABD}']
  end;
  TJPrinterCallbackInstance = class(TJavaGenericImport<JPrinterCallbackInstanceClass, JPrinterCallbackInstance>) end;

implementation

procedure RegisterTypes;
begin
  TRegTypes.RegisterType('bridge_callback.JCameraCallback', TypeInfo(bridge_callback.JCameraCallback));
  TRegTypes.RegisterType('bridge_callback.JCameraCallbackInstance', TypeInfo(bridge_callback.JCameraCallbackInstance));
  TRegTypes.RegisterType('bridge_callback.Jgetnetprinter_BuildConfig', TypeInfo(bridge_callback.Jgetnetprinter_BuildConfig));
  TRegTypes.RegisterType('bridge_callback.JPrinterCallback', TypeInfo(bridge_callback.JPrinterCallback));
  TRegTypes.RegisterType('bridge_callback.JPrinterCallbackInstance', TypeInfo(bridge_callback.JPrinterCallbackInstance));
end;

initialization
  RegisterTypes;
end.


