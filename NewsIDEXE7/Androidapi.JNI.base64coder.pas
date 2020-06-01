{*******************************************************}
{                                                       }
{           CodeGear Delphi Runtime Library             }
{ Copyright(c) 2014 Embarcadero Technologies, Inc.      }
{                                                       }
{*******************************************************}

unit Androidapi.JNI.base64coder;

interface

uses
  Androidapi.JNIBridge,
  Androidapi.JNI.JavaTypes;

type
// ===== Forward declarations =====

  JBase64Coder = interface;//biz.source_code.base64Coder.Base64Coder

// ===== Interface declarations =====

  JBase64CoderClass = interface(JObjectClass)
    ['{5B255E88-E632-410A-9FDE-4713720CE502}']
    {class} function decode(P1: JString): TJavaArray<Byte>; cdecl; overload;
    {class} function decode(P1: TJavaArray<Char>): TJavaArray<Byte>; cdecl; overload;
    {class} function decode(P1: TJavaArray<Char>; P2: Integer; P3: Integer): TJavaArray<Byte>; cdecl; overload;
    {class} function decodeLines(P1: JString): TJavaArray<Byte>; cdecl;
    {class} function decodeString(P1: JString): JString; cdecl;
    {class} function encode(P1: TJavaArray<Byte>): TJavaArray<Char>; cdecl; overload;
    {class} function encode(P1: TJavaArray<Byte>; P2: Integer): TJavaArray<Char>; cdecl; overload;
    {class} function encode(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): TJavaArray<Char>; cdecl; overload;
    {class} function encodeLines(P1: TJavaArray<Byte>): JString; cdecl; overload;
    {class} function encodeLines(P1: TJavaArray<Byte>; P2: Integer; P3: Integer; P4: Integer; P5: JString): JString; cdecl; overload;
    {class} function encodeString(P1: JString): JString; cdecl;
  end;

  [JavaSignature('biz/source_code/base64Coder/Base64Coder')]
  JBase64Coder = interface(JObject)
    ['{D18E2932-56D4-4B36-A039-A681F5D87488}']
  end;
  TJBase64Coder = class(TJavaGenericImport<JBase64CoderClass, JBase64Coder>) end;

implementation

procedure RegisterTypes;
begin
  TRegTypes.RegisterType('Androidapi.JNI.base64coder.JBase64Coder', TypeInfo(Androidapi.JNI.base64coder.JBase64Coder));
end;

initialization
  RegisterTypes;
end.


