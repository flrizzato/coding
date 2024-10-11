unit uMainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants, FMX.DialogService, System.Rtti, System.Bindings.Outputs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Helpers.Android,
  FMX.Layouts, FMX.ExtCtrls, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FMX.Memo.Types, FMX.ScrollBox, FMX.Memo, Fmx.Bind.Editors,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Controls, Fmx.Bind.Navigator,
  Data.Bind.Components, Data.Bind.DBScope, FMX.Objects,

  // for Permissions
  Androidapi.JNI.Os,
  System.Permissions,

  // for Messages
  System.Messaging,

  //for Intents
  Androidapi.JNI.GraphicsContentViewText, Androidapi.JNI.JavaTypes,
  Androidapi.Helpers, FMX.Platform.Android, Androidapi.JNI.App,
  Androidapi.JNIBridge, Androidapi.JNI.Net, Androidapi.Jni,
  Androidapi.JNI.Provider, Androidapi.JNI.Media,

  //for Toast
  Androidapi.JNI.Widget;

type
  TForm1 = class(TForm)
    FDMemTable1: TFDMemTable;
    FDMemTable1ImageFromGallery: TGraphicField;
    BindNavigator1: TBindNavigator;
    Button1: TButton;
    Panel1: TPanel;
    Button2: TButton;
    Button3: TButton;
    ImageContainer: TImage;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }

    FMessageSubscriptionID: integer;
    const FPermissionREAD_MEDIA_IMAGES = 'android.permission.READ_MEDIA_IMAGES';

    procedure DisplayGallery;

    procedure HandleActivityMessage(const Sender: TObject; const M: TMessage);
    function OnActivityResult(RequestCode, ResultCode: Integer;
      Data: JIntent): Boolean;

    procedure RequestPermissionsResult(Sender: TObject;
      const APermissions: TClassicStringDynArray;
      const AGrantResults: TClassicPermissionStatusDynArray);
    procedure DisplayRationale(Sender: TObject;
      const APermissions: TClassicStringDynArray;
      const APostRationaleProc: TProc);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if TOSVersion.Major >= 13 then
  begin
    PermissionsService.RequestPermissions([FPermissionREAD_MEDIA_IMAGES],
      RequestPermissionsResult, DisplayRationale);
  end
  else
    DisplayGallery;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ImageContainer.RotationAngle := ImageContainer.RotationAngle - 90;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  ImageContainer.RotationAngle := ImageContainer.RotationAngle + 90;
end;

procedure TForm1.DisplayGallery;
begin
   FMessageSubscriptionID := TMessageManager.DefaultManager.SubscribeToMessage
    (TMessageResultNotification, HandleActivityMessage);

  var Intent := TJIntent.Create;
  Intent.setType(StringToJString('image/*'));
  Intent.setAction(TJIntent.JavaClass.ACTION_PICK);
  Intent.setAction(TJIntent.JavaClass.ACTION_GET_CONTENT);
  Intent.putExtra(TJIntent.JavaClass.EXTRA_ALLOW_MULTIPLE, True);

  MainActivity.startActivityForResult(Intent, 0);
end;

procedure TForm1.HandleActivityMessage(const Sender: TObject;
  const M: TMessage);
begin
  if M is TMessageResultNotification then
    OnActivityResult(TMessageResultNotification(M).RequestCode,
      TMessageResultNotification(M).ResultCode,
      TMessageResultNotification(M).Value);
end;

function TForm1.OnActivityResult(RequestCode, ResultCode: Integer;
  Data: JIntent): Boolean;
begin
  Result := False;

  TMessageManager.DefaultManager.Unsubscribe(TMessageResultNotification,
    FMessageSubscriptionID);
  FMessageSubscriptionID := 0;

  if ResultCode = TJActivity.JavaClass.RESULT_OK then
  begin
    FDMemTable1.DisableControls;
    try
      try
        if FDMemTable1.Active then
          FDMemTable1.Close;
        FDMemTable1.CreateDataSet;

        var ClipData := Data.getClipData();
        if Assigned(ClipData) then
        begin
          var ClipDataItemCount := ClipData.getItemCount();
          for var I := 0 to ClipDataItemCount - 1 do
          begin
            // get image orientation info
            var InputStreamExif := TAndroidHelper.Context.getContentResolver.openInputStream(
              ClipData.getItemAt(I).getUri());
            var lExif := TJExifInterface.JavaClass.init(InputStreamExif);
            var Orientation := lExif.getAttributeInt(TJExifInterface.JavaClass.TAG_ORIENTATION,
              TJExifInterface.JavaClass.ORIENTATION_NORMAL);
            InputStreamExif.close;

            // extract the image into a Delphi TBitmap
            var InputStream := TAndroidHelper.Context.getContentResolver.openInputStream(
              ClipData.getItemAt(I).getUri());
            var NativeBitmap := TJBitmapFactory.JavaClass.decodeStream(InputStream);
            var DelphiBitmap := TBitmap.Create;
            JBitmapToBitmap(NativeBitmap, DelphiBitmap);
            InputStream.close;

            // resize if the image is too big (not mandatory, performance related)
            if DelphiBitmap.Width > 800 then
             begin
               var Scale := DelphiBitmap.Width / 800;
               DelphiBitmap.Resize(Round(DelphiBitmap.Width/Scale),
                                   Round(DelphiBitmap.Height/Scale));
             end;

            // adjust the orientation when necessary
            if Orientation = TJExifInterface.JavaClass.ORIENTATION_ROTATE_90 then
               DelphiBitmap.Rotate(90)
            else if Orientation = TJExifInterface.JavaClass.ORIENTATION_ROTATE_180 then
               DelphiBitmap.Rotate(180)
            else if Orientation = TJExifInterface.JavaClass.ORIENTATION_ROTATE_270 then
               DelphiBitmap.Rotate(270);

            // save the image into a in memory dataset
            FDMemTable1.Insert;
            FDMemTable1ImageFromGallery.Assign(DelphiBitmap);
            FDMemTable1.Post;
          end;

          BindSourceDB1.ResetNeeded;
        end;
      except on E: Exception do
        raise Exception.Create('Error Message:' + E.Message);
      end;
    finally
      FDMemTable1.EnableControls;
    end;
  end
  else if ResultCode = TJActivity.JavaClass.RESULT_CANCELED then
  begin
    TJToast.JavaClass.makeText(TAndroidHelper.Context,
                               StrToJCharSequence('A operação foi cancelada...'),
                               TJToast.JavaClass.LENGTH_SHORT).show;
  end;

  Result := True;
end;

procedure TForm1.RequestPermissionsResult(Sender: TObject;
  const APermissions: TClassicStringDynArray;
  const AGrantResults: TClassicPermissionStatusDynArray);
begin
  if (Length(AGrantResults) = 1) and
    (AGrantResults[0] = TPermissionStatus.Granted) then
  begin
    DisplayGallery;
  end
  else
    TDialogService.ShowMessage
      ('Não podemos continuar sem as permissões necessárias!');
end;

procedure TForm1.DisplayRationale(Sender: TObject;
  const APermissions: TClassicStringDynArray; const APostRationaleProc: TProc);
begin
  TDialogService.ShowMessage
    ('Permissão necessária para selecionar imagens da galeria!',
    procedure(const AResult: TModalResult)
    begin
      APostRationaleProc;
    end);
end;

end.
