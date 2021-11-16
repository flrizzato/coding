unit uMainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.MultiView,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.TabControl, FMX.Layouts,
  FMX.ListBox, FMX.Effects, FMX.Objects, FMX.ActnList, System.Actions,
  FMX.Gestures;

type
  TMainForm = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    ToolBar1: TToolBar;
    SpeedButton1: TSpeedButton;
    MultiView1: TMultiView;
    ListBox1: TListBox;
    GridPanelLayoutMain: TGridPanelLayout;
    InventLayout: TLayout;
    Form1Image: TImage;
    GlowEffect1: TGlowEffect;
    Form1Label: TLabel;
    GlowEffect7: TGlowEffect;
    RotativoLayout: TLayout;
    Form2Image: TImage;
    GlowEffect2: TGlowEffect;
    Form2Label: TLabel;
    GlowEffect9: TGlowEffect;
    AnaliseLayout: TLayout;
    Form3Image: TImage;
    GlowEffect3: TGlowEffect;
    Form3Label: TLabel;
    GlowEffect8: TGlowEffect;
    SearchLayout: TLayout;
    EntradaLayout: TLayout;
    SaidaLayout: TLayout;
    LayoutMaster: TLayout;
    ActionListMain: TActionList;
    NextTabAction: TNextTabAction;
    PreviousTabAction: TPreviousTabAction;
    CloseFormAction: TAction;
    butBackButton: TButton;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    GestureManager1: TGestureManager;
    Label1: TLabel;
    VertScrollBox1: TVertScrollBox;
    Label2: TLabel;
    GlowEffect4: TGlowEffect;
    Form4Image: TImage;
    GlowEffect5: TGlowEffect;
    ListBoxItem5: TListBoxItem;
    procedure MultiView1StartShowing(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CloseFormActionExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Form1ImageClick(Sender: TObject);
    procedure Form2ImageClick(Sender: TObject);
    procedure Form3ImageClick(Sender: TObject);
    procedure ListBox1ItemClick(const Sender: TCustomListBox;
      const Item: TListBoxItem);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure FormFocusChanged(Sender: TObject);
    procedure FormVirtualKeyboardHidden(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure FormVirtualKeyboardShown(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure Form4ImageClick(Sender: TObject);
  private
    { Private declarations }

    // scrollable form
    FKBBounds: TRectF;
    FNeedOffset: Boolean;

    // form control
    FActiveForm: TForm;
    procedure DoFormOpen(const aFormClass: TComponentClass);
    procedure DoCleanLayoutMaster;

    // scrollable form
    procedure CalcContentBoundsProc(Sender: TObject; var ContentBounds: TRectF);
    procedure RestorePosition;
    procedure UpdateKBBounds;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.fmx}

uses uFormOne, uFormThree, uFormTwo, uFormFour,
  FMX.VirtualKeyboard, FMX.Platform, FMX.DialogService, System.Math;

procedure TMainForm.CloseFormActionExecute(Sender: TObject);
begin
  PreviousTabAction.Execute;
  DoCleanLayoutMaster;
end;

procedure TMainForm.DoCleanLayoutMaster;
var
  i: Integer;
begin
  for i := 0 to LayoutMaster.ChildrenCount - 1 do
    LayoutMaster.RemoveObject(LayoutMaster.Children[i]);
end;

procedure TMainForm.DoFormOpen(const aFormClass: TComponentClass);
begin
  if Assigned(FActiveForm) then
    FreeAndNil(FActiveForm);
  Application.CreateForm(aFormClass, FActiveForm);
  LayoutMaster.AddObject(TLayout(FActiveForm.FindComponent('LayoutDetail')));
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  FActiveForm := nil;
  VKAutoShowMode := TVKAutoShowMode.Always;
  VertScrollBox1.OnCalcContentBounds := CalcContentBoundsProc;
end;

procedure TMainForm.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
var
  FService: IFMXVirtualKeyboardService;
begin
  if Key = vkHardwareBack then
  begin
    TPlatformServices.Current.SupportsPlatformService
      (IFMXVirtualKeyboardService, IInterface(FService));
    if (FService <> nil) and (TVirtualKeyboardState.Visible
      in FService.VirtualKeyBoardState) then
    begin
      // do nothing...
    end
    else
    begin
      if TabControl1.TabIndex = 0 then
      begin
        Key := 0;
        TDialogService.MessageDialog('Close the Application?',
          TMsgDlgType.mtConfirmation, [TMsgDlgBtn.mbNo, TMsgDlgBtn.mbYes],
          TMsgDlgBtn.mbYes, 0,
          procedure(const AResult: TModalResult)
          begin
            case AResult of
              mrYES:
                begin
                  Application.Terminate;
                end;
            end;
          end);
      end
      else
      begin
        Key := 0;
        butBackButton.Action.Execute;
      end;
    end;
  end;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
{$IFDEF ANDROID}
  CloseFormAction.Visible := False;
{$ELSE}
  CloseFormAction.Visible := True;
{$ENDIF}
end;

procedure TMainForm.ListBox1ItemClick(const Sender: TCustomListBox;
const Item: TListBoxItem);
begin
  DoCleanLayoutMaster;
  case Item.Index of
    0:
      CloseFormActionExecute(Self);
    1:
      Form1ImageClick(Self);
    2:
      Form2ImageClick(Self);
    3:
      Form3ImageClick(Self);
    4:
      Form4ImageClick(Self);
  end;
  MultiView1.HideMaster;
end;

procedure TMainForm.MultiView1StartShowing(Sender: TObject);
begin
  MultiView1.Width := 150;
end;

procedure TMainForm.Form1ImageClick(Sender: TObject);
begin
  DoFormOpen(TForm1);
  NextTabAction.Execute;
end;

procedure TMainForm.Form2ImageClick(Sender: TObject);
begin
  DoFormOpen(TForm2);
  NextTabAction.Execute;
end;

procedure TMainForm.Form3ImageClick(Sender: TObject);
begin
  DoFormOpen(TForm3);
  NextTabAction.Execute;
end;

procedure TMainForm.Form4ImageClick(Sender: TObject);
begin
  DoFormOpen(TForm4);
  NextTabAction.Execute;
end;

// scrollable form
procedure TMainForm.CalcContentBoundsProc(Sender: TObject;
var ContentBounds: TRectF);
begin
  if FNeedOffset and (FKBBounds.Top > 0) then
  begin
    ContentBounds.Bottom := Max(ContentBounds.Bottom,
      2 * ClientHeight - FKBBounds.Top);
  end;
end;

procedure TMainForm.RestorePosition;
begin
  VertScrollBox1.ViewportPosition :=
    PointF(VertScrollBox1.ViewportPosition.X, 0);
  LayoutMaster.Align := TAlignLayout.Client;
  VertScrollBox1.RealignContent;
end;

procedure TMainForm.UpdateKBBounds;
var
  LFocused: TControl;
  LFocusRect: TRectF;
begin
  FNeedOffset := False;
  if Assigned(Focused) then
  begin
    LFocused := TControl(Focused.GetObject);
    LFocusRect := LFocused.AbsoluteRect;
    LFocusRect.Offset(VertScrollBox1.ViewportPosition);
    if (LFocusRect.IntersectsWith(TRectF.Create(FKBBounds))) and
      (LFocusRect.Bottom > FKBBounds.Top) then
    begin
      FNeedOffset := True;
      LayoutMaster.Align := TAlignLayout.Horizontal;
      VertScrollBox1.RealignContent;
      Application.ProcessMessages;
      VertScrollBox1.ViewportPosition :=
        PointF(VertScrollBox1.ViewportPosition.X,
        LFocusRect.Bottom - FKBBounds.Top);
    end;
  end;
  if not FNeedOffset then
    RestorePosition;

end;

procedure TMainForm.FormFocusChanged(Sender: TObject);
begin
  UpdateKBBounds;
end;

procedure TMainForm.FormVirtualKeyboardHidden(Sender: TObject;
KeyboardVisible: Boolean; const Bounds: TRect);
begin
  FKBBounds.Create(0, 0, 0, 0);
  FNeedOffset := False;
  RestorePosition;
end;

procedure TMainForm.FormVirtualKeyboardShown(Sender: TObject;
KeyboardVisible: Boolean; const Bounds: TRect);
begin
  FKBBounds := TRectF.Create(Bounds);
  FKBBounds.TopLeft := ScreenToClient(FKBBounds.TopLeft);
  FKBBounds.BottomRight := ScreenToClient(FKBBounds.BottomRight);
  UpdateKBBounds;
end;

end.
