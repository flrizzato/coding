unit uGetnet_classes;

interface

uses
  FMX.Memo,
  System.Classes,
  System.Threading,
  System.SysUtils,
  Androidapi.Helpers,
  Androidapi.JNIBridge,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.OS,
  bridge,
  bridge_callback;

type
  TMyBindCallback = class(TJavaLocal, JPosDigital_BindCallback)
  private
  public
    procedure onConnected; cdecl;
    procedure onDisconnected; cdecl;
    procedure onError(P1: JException); cdecl;
  end;

  TMyPrinterCallback = class(TJavaLocal, JPrinterCallback)
  private
  public
    procedure onError(P1: Integer); cdecl;
    procedure onSuccess; cdecl;
  end;

  TMyCameraCallback = class(TJavaLocal, JCameraCallback)
  private
  public
    procedure onCancel; cdecl;
    procedure onError(P1: JString); cdecl;
    procedure onSuccess(P1: JString); cdecl;
    procedure onTimeout; cdecl;
  end;

  TMyLog = class
  private
    fMemoLog: TMemo;
  public
    property MemoLog: TMemo read fMemoLog write fMemoLog;
    procedure LogWrite(sMsg: string);
  end;

var
  fMyLog: TMyLog;

implementation

{ TMyBindCallback }

procedure TMyBindCallback.onConnected;
begin
  fMyLog.LogWrite('Connected...');
end;

procedure TMyBindCallback.onDisconnected;
begin
  fMyLog.LogWrite('Disconnected...');
end;

procedure TMyBindCallback.onError(P1: JException);
begin
  fMyLog.LogWrite('Error: ' + JStringToString(P1.getMessage));
end;

{ TMyPrinterCallback }

procedure TMyPrinterCallback.onError(P1: Integer);
begin
  fMyLog.LogWrite('Printer error...');
end;

procedure TMyPrinterCallback.onSuccess;
begin
  fMyLog.LogWrite('Printer success...');
end;

{ TMyCameraCallback }

procedure TMyCameraCallback.onCancel;
begin
  fMyLog.LogWrite('Camera cancel...');
end;

procedure TMyCameraCallback.onError(P1: JString);
begin
  fMyLog.LogWrite('Camera error: ' + JStringToString(P1));
end;

procedure TMyCameraCallback.onSuccess(P1: JString);
begin
  fMyLog.LogWrite('Camera success: ' + JStringToString(P1));
end;

procedure TMyCameraCallback.onTimeout;
begin
  fMyLog.LogWrite('Camera timeout...');
end;

{ TMyLog }

procedure TMyLog.LogWrite(sMsg: string);
begin
  TThread.Queue(TThread.CurrentThread,
    procedure()
    begin
      fMemoLog.Lines.Add('=> ' + FormatDateTime('hhnnss', now) + ': ' +
        sMsg.Trim);
    end);
end;

end.
