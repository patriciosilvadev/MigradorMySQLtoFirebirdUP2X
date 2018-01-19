program MigradorMySQLFirebirdOnLine;

uses
  Vcl.Forms,
  Datasnap.Midas,
  MenuMigrador in 'MenuMigrador.pas' {FMenuMigrador},
  Funcoes in 'Funcoes.pas',
  FuncoesFB in 'FuncoesFB.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Migrador MySQL para Firebird';
  Application.CreateForm(TFMenuMigrador, FMenuMigrador);
  Application.Run;
end.
