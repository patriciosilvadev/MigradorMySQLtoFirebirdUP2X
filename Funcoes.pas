unit Funcoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, System.StrUtils ;

type
TFuncao = class
public
 class function RetornaTipoCampo(pTipoCampo: string): string;
 class function RetornaNomeCampoFB(pNomeCampo: string): string;
end;


implementation


class function TFuncao.RetornaNomeCampoFB(pNomeCampo: string): string;
  var
    strRetorno: string;
begin
  //strRetorno := Copy(1, 30, pNomeCampo)
  result := '';

end;

class function TFuncao.RetornaTipoCampo(pTipoCampo: string): string;
  var
    strRetorno: string;
begin
  strRetorno := AnsiReplaceStr(pTipoCampo,  'unsigned', '');

  if (copy(pTipoCampo, 1, 4) = 'enum') then
    strRetorno := 'varchar(50)';
  if (copy(pTipoCampo, 1, 3) = 'int') then
    strRetorno := 'integer';
  if (copy(pTipoCampo, 1, 8) = 'smallint') then
    strRetorno := 'integer';
  if (copy(pTipoCampo, 1, 6) = 'double') then
    strRetorno := 'float';
  if (copy(pTipoCampo, 1, 8) = 'longtext') then
    strRetorno := 'BLOB SUB_TYPE 1 SEGMENT SIZE 80';
  if (copy(pTipoCampo, 1, 4) = 'text') then
    strRetorno := 'BLOB SUB_TYPE 1 SEGMENT SIZE 80';
  if (copy(pTipoCampo, 1, 8) = 'longblob') then
    strRetorno := 'BLOB SUB_TYPE 1 SEGMENT SIZE 80';

  Result := strRetorno;
end;



end.
