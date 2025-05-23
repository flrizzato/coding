// ---------------------------------------------------------------------------

// This software is Copyright (c) 2017 Embarcadero Technologies, Inc.
// You may only use this software if you are an authorized licensee
// of Delphi, C++Builder or RAD Studio (Embarcadero Products).
// This software is considered a Redistributable as defined under
// the software license agreement that comes with the Embarcadero Products
// and is subject to that software license agreement.

// ---------------------------------------------------------------------------
unit uAudioManager;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, FMX.Dialogs,
  FMX.Forms
{$IFDEF ANDROID}
    , androidapi.jni.media, FMX.Helpers.Android, androidapi.jni.JavaTypes,
  androidapi.jni.GraphicsContentViewText, androidapi.JNIBridge,
  androidapi.Helpers, System.Threading
{$ENDIF}
{$IFDEF IOS}
    , MacApi.CoreFoundation, FMX.Platform.iOS, iOSapi.CocoaTypes,
  iOSapi.AVFoundation, iOSapi.Foundation
{$ELSE}
{$IFDEF MACOS}
    , MacApi.CoreFoundation, FMX.Platform.Mac, MacApi.CocoaTypes, MacApi.AppKit,
  MacApi.Foundation, MacApi.Helpers
{$ENDIF}
{$ENDIF}
{$IFDEF MSWINDOWS}
    , MMSystem
{$ENDIF}
    ;

type
  TSoundRec = record
    SFilename: String;
    SName: String;
    SNameExt: string;
    SID: integer;
  end;

  PSoundRec = ^TSoundRec;

  TAudioManager = Class
  Private
    fSoundsList: TList;

{$IFDEF ANDROID}
    fAudioMgr: JAudioManager;
    fSoundPool: JSoundPool;
{$ENDIF}
    function GetSoundsCount: integer;
    function GetSoundFromIndex(Aindex: integer): PSoundRec;
  Public
    Constructor Create;
    Destructor Destroy; override;

    function AddSound(ASoundFile: string): integer;
    procedure DeleteSound(AName: String); overload;
    procedure DeleteSound(Aindex: integer); overload;
    procedure PlaySound(AName: String); overload;
    procedure PlaySound(Aindex: integer); overload;

    property SoundsCount: integer read GetSoundsCount;
    property Sounds[Aindex: integer]: PSoundRec read GetSoundFromIndex;
  end;

{$IFDEF IOS}

Const
  _libAudioToolbox =
    '/System/Library/Frameworks/AudioToolbox.framework/AudioToolbox';

procedure AudioServicesPlaySystemSound(inSystemSoundID: nsinteger); cdecl;
  external _libAudioToolbox name 'AudioServicesPlaySystemSound';
procedure AudioServicesCreateSystemSoundID(inFileURL: CFURLRef;
  var SystemSoundID: pnsinteger); cdecl;
  external _libAudioToolbox name 'AudioServicesCreateSystemSoundID';
procedure AudioServicesDisposeSystemSoundID(inSystemSoundID: nsinteger); cdecl;
  external _libAudioToolbox name 'AudioServicesDisposeSystemSoundID';
procedure AudioServicesAddSystemSoundCompletion(inSystemSoundID: nsinteger;
  inRunLoop: CFRunLoopRef; inRunLoopMode: CFStringRef;
  inCompletionRoutine: Pointer; inClientData: CFURLRef); cdecl;
  external _libAudioToolbox name 'AudioServicesAddSystemSoundCompletion';
{$ENDIF}

implementation

{ TAudioManager }

{$IF Defined(IOS) OR Defined(MACOS)}

procedure oncompleteionIosProc(SystemSndID: nsinteger; var AData: Pointer);
begin
  // place here the code to run when a sound finish playing
end;
{$ENDIF}

constructor TAudioManager.Create;
begin
  try
    fSoundsList := TList.Create;
{$IFDEF ANDROID}
    fAudioMgr := TJAudioManager.Wrap
      ((TAndroidHelper.Activity.getSystemService
      (TJContext.JavaClass.AUDIO_SERVICE) as ILocalObject).GetObjectID);
    fSoundPool := TJSoundPool.JavaClass.init(4,
      TJAudioManager.JavaClass.STREAM_MUSIC, 0);
{$ENDIF}
  except
    On E: Exception do
      Raise Exception.Create('[TAudioManager.Create] : ' + E.message);
  end;
end;

destructor TAudioManager.Destroy;
var
  i: integer;
  wRec: PSoundRec;
begin
  try
    for i := fSoundsList.Count - 1 downto 0 do
    begin
      wRec := fSoundsList[i];
      Dispose(wRec);
      fSoundsList.Delete(i);
    end;
    fSoundsList.Free;
{$IFDEF ANDROID}
    fSoundPool := nil;
    fAudioMgr := nil;
{$ENDIF}
    inherited;
  except
    On E: Exception do
      Raise Exception.Create('[TAudioManager.Destroy] : ' + E.message);
  end;
end;

function TAudioManager.AddSound(ASoundFile: string): integer;
var
  wSndRec: PSoundRec;
{$IFDEF ANDROID}
  wOnAndroidSndComplete: JSoundPool_OnLoadCompleteListener;
  soundID: NativeInt;
{$ENDIF}
{$IFDEF IOS}
  wSndID: nsinteger;
  wNSFilename: CFStringRef;
  wNSURL: CFURLRef;
  wCFRunLoopRef: CFRunLoopRef;
  winRunLoopMode: CFStringRef;
{$ENDIF}
begin
  Result := -1;
  try
    New(wSndRec);
    wSndRec.SFilename := ASoundFile;
    wSndRec.SNameExt := ExtractFilename(ASoundFile);
    wSndRec.SName := ChangeFileExt(wSndRec.SNameExt, '');

{$IFDEF ANDROID}
    wSndRec.SID := fSoundPool.load(StringToJString(ASoundFile), 0);
{$ENDIF}
{$IFDEF IOS}
    wNSFilename := CFStringCreateWithCharacters(nil, PChar(ASoundFile),
      Length(ASoundFile));
    wNSURL := CFURLCreateWithFileSystemPath(nil, wNSFilename,
      kCFURLPOSIXPathStyle, False);
    AudioServicesCreateSystemSoundID(wNSURL, pnsinteger(wSndID));
    wSndRec.SID := wSndID;
    AudioServicesAddSystemSoundCompletion(wSndID, nil, nil,
      @oncompleteionIosProc, nil);
{$ENDIF}
    Result := fSoundsList.Add(wSndRec);
  except
    On E: Exception do
      Raise Exception.Create('[TAudioManager.AddSound] : ' + E.message);
  end;
end;

procedure TAudioManager.DeleteSound(Aindex: integer);
var
  wRec: PSoundRec;
begin
  try
    if Aindex < fSoundsList.Count then
    begin
      wRec := fSoundsList[Aindex];
{$IFDEF ANDROID}
      fSoundPool.unload(wRec.SID);
{$ENDIF}
{$IFDEF IOS}
      AudioServicesDisposeSystemSoundID(wRec.SID);
{$ENDIF}
      Dispose(wRec);
      fSoundsList.Delete(Aindex);
    end;
  except
    On E: Exception do
      Raise Exception.Create('[TAudioManager.DeleteSound] : ' + E.message);
  end;
end;

procedure TAudioManager.DeleteSound(AName: String);
var
  i: integer;
begin
  try
    for i := 0 to fSoundsList.Count - 1 do
    begin
      if CompareText(PSoundRec(fSoundsList[i]).SName, AName) = 0 then
      begin
        DeleteSound(i);
        Break;
      end;
    end;
  except
    On E: Exception do
      Raise Exception.Create('[TAudioManager.PlaySound] : ' + E.message);
  end;
end;

procedure TAudioManager.PlaySound(Aindex: integer);
var
  wRec: PSoundRec;
{$IFDEF ANDROID}
  wCurrVolume, wMaxVolume: Double;
  wVolume: Double;
{$ENDIF}
{$IFNDEF IOS}
{$IFDEF MACOS}
  wNssound: NSSound;
{$ENDIF}
{$ENDIF}
begin
  try
    if Aindex < fSoundsList.Count then
    begin
      wRec := fSoundsList[Aindex];
{$IFDEF ANDROID}
      if Assigned(fAudioMgr) then
      begin
        wCurrVolume := fAudioMgr.getStreamVolume
          (TJAudioManager.JavaClass.STREAM_MUSIC);
        wMaxVolume := fAudioMgr.getStreamMaxVolume
          (TJAudioManager.JavaClass.STREAM_MUSIC);
        wVolume := wCurrVolume / wMaxVolume;
        fSoundPool.play(wRec.SID, wVolume, wVolume, 1, 0, 1);
      end;
{$ENDIF}
{$IFDEF IOS}
      AudioServicesAddSystemSoundCompletion(wRec.SID, nil, nil,
        @oncompleteionIosProc, nil);
      AudioServicesPlaySystemSound(wRec.SID)
{$ELSE}
{$IFDEF MACOS}
      wNssound := TNSSound.Wrap(TNSSound.Alloc.initWithContentsOfFile
        (StrToNSStr(wRec.SFilename), true));
      try
        wNssound.setLoops(False);
        wNssound.play;
      finally
        wNssound.Release;
      end;
{$ENDIF}
{$ENDIF}
{$IFDEF MSWINDOWS}
      sndPlaySound(PChar(wRec.SFilename), SND_NODEFAULT Or SND_ASYNC);
{$ENDIF}
    end;
  except
    On E: Exception do
      Raise Exception.Create('[Unknown Name] : ' + E.message);
  end;
end;

procedure TAudioManager.PlaySound(AName: String);
var
  i: integer;
begin
  try
    for i := 0 to fSoundsList.Count - 1 do
    begin
      if CompareText(PSoundRec(fSoundsList[i]).SName, AName) = 0 then
      begin
        PlaySound(i);
        Break;
      end;
    end;
  except
    On E: Exception do
      Raise Exception.Create('[TAudioManager.PlaySound] : ' + E.message);
  end;
end;

function TAudioManager.GetSoundsCount: integer;
begin
  Result := fSoundsList.Count;
end;

function TAudioManager.GetSoundFromIndex(Aindex: integer): PSoundRec;
begin
  if Aindex < fSoundsList.Count then
    Result := fSoundsList[Aindex]
  else
    Result := nil;
end;

end.
