program YellowFinVCL;

uses
  Vcl.Forms,
  YFFormMain in 'YFFormMain.pas' {Form2},
  YF.AdministrationService in '..\YFSource\YF.AdministrationService.pas',
  YF.JAX.AdministrationService.Helper in '..\YFSource\YF.JAX.AdministrationService.Helper.pas',
  YF.JAX.AdministrationService in '..\YFSource\YF.JAX.AdministrationService.pas',
  YF.JAX.ReportService.Helper in '..\YFSource\YF.JAX.ReportService.Helper.pas',
  YF.JAX.ReportService in '..\YFSource\YF.JAX.ReportService.pas',
  YF.ReportService in '..\YFSource\YF.ReportService.pas',
  YF.Resources in '..\YFSource\YF.Resources.pas',
  YF.SOAP.Constants in '..\YFSource\YF.SOAP.Constants.pas',
  YF.SOAP.Defaults in '..\YFSource\YF.SOAP.Defaults.pas',
  YF.SOAP.ReportService.Data in '..\YFSource\YF.SOAP.ReportService.Data.pas' {YF_ReportData: TDataModule},
  YF.SOAP.UserMethods in '..\YFSource\YF.SOAP.UserMethods.pas',
  Frames.User.Login in 'Frames.User.Login.pas' {frameUserLogin: TFrame},
  Frames.Reports in 'Frames.Reports.pas' {FrameReports: TFrame},
  Frames.Filter.Base in 'Frames.Filter.Base.pas' {FrameFilterBase: TFrame},
  Frames.Filter.Spinbox in 'Frames.Filter.Spinbox.pas' {FrameFilterSpinbox: TFrame},
  Frames.Filter.Combo in 'Frames.Filter.Combo.pas' {FrameFilterCombo: TFrame},
  Frames.Filter.Text in 'Frames.Filter.Text.pas' {FrameFilterText: TFrame},
  Frames.Filter.Date in 'Frames.Filter.Date.pas' {FrameFilterDate: TFrame},
  YF.VCL.Resources in 'YF.VCL.Resources.pas' {YF_VCLResources: TDataModule},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows11 Impressive Dark SE');
  Application.CreateForm(TYF_VCLResources, YF_VCLResources);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
