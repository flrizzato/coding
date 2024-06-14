unit uSQLTest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.Controls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Bind.Navigator,
  Data.Bind.Components, Data.Bind.DBScope;

type
  TSQLTest = class(TForm)
    BindNavigatorMain: TBindNavigator;
    DBGridMain: TDBGrid;
    DataSourceMain: TDataSource;
    BindSourceDB1: TBindSourceDB;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SQLTest: TSQLTest;

implementation

{$R *.dfm}

uses uMainDM;

end.
