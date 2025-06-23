program YellowFinFMX;

uses
  System.StartUpCopy,
  FMX.Forms,
  FMX.Skia,
  FormMain in 'FormMain.pas' {MainForm},
  YF.JAX.AdministrationService in '..\YFSource\YF.JAX.AdministrationService.pas',
  YF.JAX.AdministrationService.Helper in '..\YFSource\YF.JAX.AdministrationService.Helper.pas',
  Frames.Settings in 'Frames.Settings.pas' {FrameSettings: TFrame},
  YF.SOAP.Defaults in '..\YFSource\YF.SOAP.Defaults.pas',
  Frames.ReportsList in 'Frames.ReportsList.pas' {FrameReportList: TFrame},
  YF.JAX.ReportService in '..\YFSource\YF.JAX.ReportService.pas',
  YF.SOAP.Constants in '..\YFSource\YF.SOAP.Constants.pas',
  YF.SOAP.ReportService.Data in '..\YFSource\YF.SOAP.ReportService.Data.pas' {YF_ReportData: TDataModule},
  YF.JAX.ReportService.Helper in '..\YFSource\YF.JAX.ReportService.Helper.pas',
  TabHelper in 'TabHelper.pas',
  Frames.Users in 'Frames.Users.pas' {FrameUsers: TFrame},
  YF.SOAP.UserMethods in '..\YFSource\YF.SOAP.UserMethods.pas',
  Frames.FilterBase in 'Frames.FilterBase.pas' {FrameFilterBase: TFrame},
  Frames.Filter.Date in 'Frames.Filter.Date.pas' {FrameFilterDate: TFrame},
  Frames.Filter.ComboBox in 'Frames.Filter.ComboBox.pas' {FrameFilterComboBox: TFrame},
  Frames.Filter.SpinBox in 'Frames.Filter.SpinBox.pas' {FrameFilterNumber: TFrame},
  Frames.Filter.Text in 'Frames.Filter.Text.pas' {FrameFilterText: TFrame},
  YF.FMX.Resources in '..\YFSource\YF.FMX.Resources.pas' {YF_FMXResources: TDataModule},
  YF.Resources in '..\YFSource\YF.Resources.pas',
  Frames.YellowfinBrowser in 'Frames.YellowfinBrowser.pas' {FrameYellowfinBrowser: TFrame};

{$R *.res}

begin
  GlobalUseSkia := True;
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
