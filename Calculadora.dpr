program Calculadora;

uses
  Vcl.Forms,
  UnitCalculadora in 'UnitCalculadora.pas' {frmCalculadora},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('TabletDark');
  Application.CreateForm(TfrmCalculadora, frmCalculadora);
  Application.Run;
end.
