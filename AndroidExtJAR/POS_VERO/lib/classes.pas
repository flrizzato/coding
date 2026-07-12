unit classes;

interface

uses
  Androidapi.JNIBridge,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.Os,
  Androidapi.JNI.GraphicsContentViewText;

type
  JPrinter = interface;
  JPrinterListener = interface;

  JPrinterListenerClass = interface(JIInterfaceClass)
    ['{0726469C-55DF-43DE-942F-70648C206BF4}']
  end;

  [JavaSignature('br/com/execucao/posmp_api/printer/PrinterListener')]
  JPrinterListener = interface(JIInterface)
    ['{E56FBFED-9CAB-4986-8D34-6B122569CC5F}']
    procedure onError(int: Integer); cdecl;
    procedure onFinish; cdecl;
  end;
  TJPrinterListener = class(TJavaGenericImport<JPrinterListenerClass, JPrinterListener>)
  end;

  JPrinterClass = interface(JObjectClass)
    ['{F0CA8D0F-4FC3-4FF5-85B7-661B4593041C}']
    {class}
    function _GetACTION_APOS8: JString; cdecl;
    {class}
    function _GetACTION_VX990: JString; cdecl;
    {class}
    function _GetERRO_DESCONHECIDO: Integer; cdecl;
    {class}
    function _GetERRO_SEM_PAPEL: Integer; cdecl;
    {class}
    function _GetMODELO_CARBON_10: JString; cdecl;
    {class}
    function _GetMODELO_CARBON_8: JString; cdecl;
    {class}
    function _GetMODELO_CLOVER_C305: JString; cdecl;
    {class}
    function _GetMODELO_CLOVER_C405: JString; cdecl;
    {class}
    function _GetMODELO_ELGIN: JString; cdecl;
    {class}
    function _GetMODELO_GERTEC_700: JString; cdecl;
    {class}
    function _GetMODELO_GERTEC_720: JString; cdecl;
    {class}
    function _GetMODELO_GERTEC_760: JString; cdecl;
    {class}
    function _GetMODELO_INGENICO_A8: JString; cdecl;
    {class}
    function _GetMODELO_INGENICO_DX4000: JString; cdecl;
    {class}
    function _GetMODELO_INGENICO_DX8000: JString; cdecl;
    {class}
    function _GetMODELO_N910: JString; cdecl;
    {class}
    function _GetMODELO_NEWLAND_N950: JString; cdecl;
    {class}
    function _GetMODELO_NEWLAND_N950K: JString; cdecl;
    {class}
    function _GetMODELO_NEWLAND_N950S: JString; cdecl;
    {class}
    function _GetMODELO_PAX_A910: JString; cdecl;
    {class}
    function _GetMODELO_PAX_A920: JString; cdecl;
    {class}
    function _GetMODELO_POSITIVO_L3: JString; cdecl;
    {class}
    function _GetMODELO_POSITIVO_L3_A11: JString; cdecl;
    {class}
    function _GetMODELO_POSITIVO_L400: JString; cdecl;
    {class}
    function _GetMODELO_SUNMI_D2MINI: JString; cdecl;
    {class}
    function _GetMODELO_SUNMI_P2: JString; cdecl;
    {class}
    function _GetMODELO_SUNMI_P2A11: JString; cdecl;
    {class}
    function _GetMODELO_TECTOY_T19: JString; cdecl;
    {class}
    function _GetMODELO_TECTOY_T8: JString; cdecl;
    {class}
    function _GetMODELO_VSP: JString; cdecl;
    {class}
    function _GetMODELO_X990: JString; cdecl;
    {class}
    function _GetPACKAGE_APOS8: JString; cdecl;
    {class}
    function _GetPACKAGE_VX990: JString; cdecl;
    {class}
    function _Getinstance: JPrinter; cdecl;
    {class}
    function getInstance(context: JContext): JPrinter; cdecl;
    {class}
    function init: JPrinter; cdecl;
    {class}
    property ACTION_APOS8: JString read _GetACTION_APOS8;
    {class}
    property ACTION_VX990: JString read _GetACTION_VX990;
    {class}
    property ERRO_DESCONHECIDO: Integer read _GetERRO_DESCONHECIDO;
    {class}
    property ERRO_SEM_PAPEL: Integer read _GetERRO_SEM_PAPEL;
    {class}
    property MODELO_CARBON_10: JString read _GetMODELO_CARBON_10;
    {class}
    property MODELO_CARBON_8: JString read _GetMODELO_CARBON_8;
    {class}
    property MODELO_CLOVER_C305: JString read _GetMODELO_CLOVER_C305;
    {class}
    property MODELO_CLOVER_C405: JString read _GetMODELO_CLOVER_C405;
    {class}
    property MODELO_ELGIN: JString read _GetMODELO_ELGIN;
    {class}
    property MODELO_GERTEC_700: JString read _GetMODELO_GERTEC_700;
    {class}
    property MODELO_GERTEC_720: JString read _GetMODELO_GERTEC_720;
    {class}
    property MODELO_GERTEC_760: JString read _GetMODELO_GERTEC_760;
    {class}
    property MODELO_INGENICO_A8: JString read _GetMODELO_INGENICO_A8;
    {class}
    property MODELO_INGENICO_DX4000: JString read _GetMODELO_INGENICO_DX4000;
    {class}
    property MODELO_INGENICO_DX8000: JString read _GetMODELO_INGENICO_DX8000;
    {class}
    property MODELO_N910: JString read _GetMODELO_N910;
    {class}
    property MODELO_NEWLAND_N950: JString read _GetMODELO_NEWLAND_N950;
    {class}
    property MODELO_NEWLAND_N950K: JString read _GetMODELO_NEWLAND_N950K;
    {class}
    property MODELO_NEWLAND_N950S: JString read _GetMODELO_NEWLAND_N950S;
    {class}
    property MODELO_PAX_A910: JString read _GetMODELO_PAX_A910;
    {class}
    property MODELO_PAX_A920: JString read _GetMODELO_PAX_A920;
    {class}
    property MODELO_POSITIVO_L3: JString read _GetMODELO_POSITIVO_L3;
    {class}
    property MODELO_POSITIVO_L3_A11: JString read _GetMODELO_POSITIVO_L3_A11;
    {class}
    property MODELO_POSITIVO_L400: JString read _GetMODELO_POSITIVO_L400;
    {class}
    property MODELO_SUNMI_D2MINI: JString read _GetMODELO_SUNMI_D2MINI;
    {class}
    property MODELO_SUNMI_P2: JString read _GetMODELO_SUNMI_P2;
    {class}
    property MODELO_SUNMI_P2A11: JString read _GetMODELO_SUNMI_P2A11;
    {class}
    property MODELO_TECTOY_T19: JString read _GetMODELO_TECTOY_T19;
    {class}
    property MODELO_TECTOY_T8: JString read _GetMODELO_TECTOY_T8;
    {class}
    property MODELO_VSP: JString read _GetMODELO_VSP;
    {class}
    property MODELO_X990: JString read _GetMODELO_X990;
    {class}
    property PACKAGE_APOS8: JString read _GetPACKAGE_APOS8;
    {class}
    property PACKAGE_VX990: JString read _GetPACKAGE_VX990;
    {class}
    property instance: JPrinter read _Getinstance;
  end;

  [JavaSignature('br/com/execucao/posmp_api/printer/Printer')]
  JPrinter = interface(JObject)
    ['{E2518140-2B3E-4D37-8A20-21852E15EDAA}']
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
  TJPrinter = class(TJavaGenericImport<JPrinterClass, JPrinter>)
  end;

implementation

end.
