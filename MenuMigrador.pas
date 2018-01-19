unit MenuMigrador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util, IBX.IBDatabase,
  IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBScript, FireDAC.Comp.Script, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls,
  Datasnap.DBClient, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, strUtils, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  IniFiles;

type
  TFMenuMigrador = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    FDConnection: TFDConnection;
    FDCommand: TFDCommand;
    qryTabelasMySQL: TFDQuery;
    FDScript: TFDScript;
    IBScript: TIBScript;
    IBTransaction: TIBTransaction;
    IBDatabaseFB: TIBDatabase;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    edtPesquisaTab: TEdit;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    TabSheet3: TTabSheet;
    Panel3: TPanel;
    RichEdit1: TRichEdit;
    Label1: TLabel;
    Resumo: TLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Image1: TImage;
    btnTestaConnMySQL: TSpeedButton;
    btnConectaBaseFB: TSpeedButton;
    SpeedButton3: TSpeedButton;
    btnPrepara: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    OpenDialog1: TOpenDialog;
    LabelMySQL: TLabel;
    Label13: TLabel;
    dsTabelasMySQL: TDataSource;
    SpeedButton1: TSpeedButton;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    dsCamposTabelaMySQL: TDataSource;
    qryCampos: TFDQuery;
    RichEdit2: TRichEdit;
    btnImporta: TSpeedButton;
    ProgressBar1: TProgressBar;
    Label12: TLabel;
    TabSheet4: TTabSheet;
    GroupBox3: TGroupBox;
    RichEdit3: TRichEdit;
    edtPrefixo: TEdit;
    Label14: TLabel;
    mysql_host: TEdit;
    mysql_porta: TEdit;
    mysql_usuario: TEdit;
    mysql_senha: TEdit;
    fb_host: TEdit;
    fb_porta: TEdit;
    fb_usuario: TEdit;
    fb_senha: TEdit;
    mysql_database: TEdit;
    fb_database: TcxButtonEdit;
    FDTransaction1: TFDTransaction;
    procedure cxDBButtonEdit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure SpeedButton3Click(Sender: TObject);
    procedure btnTestaConnMySQLClick(Sender: TObject);
    procedure btnConectaBaseFBClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dsTabelasMySQLDataChange(Sender: TObject; Field: TField);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnPreparaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtPesquisaTabEnter(Sender: TObject);
    procedure btnImportaClick(Sender: TObject);
    procedure edtPesquisaTabChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FDConnectionBeforeConnect(Sender: TObject);
  private
    ChaveDefinida: string;
    arq_ini : TIniFile;
    CaminhoExe: string;
    procedure CriarTabela(pNomeTabela: string; pScript: WideString);
    function MontaCreateTable(pNomeTabela: string): WideString;
    function MontaInsertInto(pNomeTabela: string): WideString;
    procedure EnviaRegistrosToFirebird(pNomeTabela, pCampoChave: string);
    function TabelaExisteFirebird(pNomeTabela: string): boolean;
 { Private declarations }
  public
    { Public declarations }

  end;

var
  FMenuMigrador: TFMenuMigrador;

implementation

{$R *.dfm}

uses Funcoes, FuncoesFB;

procedure TFMenuMigrador.cxDBButtonEdit2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if OpenDialog1.Execute then
    fb_database.Text := OpenDialog1.FileName;

end;

procedure TFMenuMigrador.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  R : TRect;
Begin
  R := Rect;
  Dec(R.Bottom,2);
  If Column.Field = qryCampos.Fields[1] Then
  Begin
    If Not (gdSelected in State) Then
      DBGrid2.Canvas.FillRect(Rect);
    DrawText(DBGrid2.Canvas.Handle,PChar(qryCampos.Fields[1].AsString), Length(qryCampos.Fields[1].AsString),R,DT_WORDBREAK);
  End;
End;

procedure TFMenuMigrador.dsTabelasMySQLDataChange(Sender: TObject; Field: TField);
begin
  if (qryTabelasMySQL.Active) and (qryTabelasMySQL.RecordCount > 0) then
  begin
    qryCampos.Close;
    qryCampos.SQL.Text := 'SHOW COLUMNS FROM ' + qryTabelasMySQL.Fields[0].AsString + ';';
    qryCampos.Open;
    RichEdit2.Lines.Text := 'a Tabela ' + qryTabelasMySQL.Fields[0].AsString +
      ' será criada na base Firebird com o nome: [' + AnsiUpperCase(edtPrefixo.Text) + AnsiUpperCase(qryTabelasMySQL.Fields[0].AsString) + ']';
  end
  else
  begin
    qryCampos.Close;
    RichEdit2.Lines.Clear;
  end;
end;

procedure TFMenuMigrador.edtPesquisaTabChange(Sender: TObject);
begin
  if (qryTabelasMySQL.Active) and (qryTabelasMySQL.RecordCount > 0) then
    qryTabelasMySQL.Filter := qryTabelasMySQL.Fields[0].FieldName + ' like ' + QuotedStr('%' + edtPesquisaTab.Text + '%');
end;

procedure TFMenuMigrador.edtPesquisaTabEnter(Sender: TObject);
begin
  if edtPesquisaTab.Text = 'Pesquisar tabelas' then
    edtPesquisaTab.Clear;
end;

procedure TFMenuMigrador.FDConnectionBeforeConnect(Sender: TObject);
begin
  FDPhysMySQLDriverLink1.VendorLib := CaminhoExe + 'libmysql.dll';
end;

procedure TFMenuMigrador.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   arq_ini.WriteString('MYSQL', 'HOST', mysql_host.Text);
   arq_ini.WriteString('MYSQL', 'PORTA', mysql_porta.Text);
   arq_ini.WriteString('MYSQL', 'USUARIO', mysql_usuario.Text);
   arq_ini.WriteString('MYSQL', 'SENHA', mysql_senha.Text);
   arq_ini.WriteString('MYSQL', 'DATABASE', mysql_database.Text);

   arq_ini.WriteString('FIREBIRD', 'HOST', fb_host.Text);
   arq_ini.WriteString('FIREBIRD', 'PORTA', fb_porta.Text);   
   arq_ini.WriteString('FIREBIRD', 'USUARIO', fb_usuario.Text);
   arq_ini.WriteString('FIREBIRD', 'SENHA', fb_senha.Text);
   arq_ini.WriteString('FIREBIRD', 'DATABASE', fb_database.Text);

   arq_ini.WriteString('MIGRACAO', 'PREFIXO_TABELA_DESTINO', edtPrefixo.Text);
end;

procedure TFMenuMigrador.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;

 try
   CaminhoExe := ExtractFilePath(Application.ExeName);

   arq_ini := TIniFile.Create(CaminhoExe + 'MigradorMySQLFirebirdOnLine.ini');
   mysql_host.Text := arq_ini.ReadString('MYSQL', 'HOST', 'localhost');
   mysql_porta.Text := arq_ini.ReadString('MYSQL', 'PORTA', '3306');
   mysql_usuario.Text := arq_ini.ReadString('MYSQL', 'USUARIO', 'root');
   mysql_senha.Text := arq_ini.ReadString('MYSQL', 'SENHA', '');
   mysql_database.Text := arq_ini.ReadString('MYSQL', 'DATABASE', '');

   fb_host.Text := arq_ini.ReadString('FIREBIRD', 'HOST', 'localhost');
   fb_porta.Text := arq_ini.ReadString('FIREBIRD', 'PORTA', '3050');
   fb_usuario.Text := arq_ini.ReadString('FIREBIRD', 'USUARIO', 'SYSDBA');
   fb_senha.Text := arq_ini.ReadString('FIREBIRD', 'SENHA', 'masterkey');
   fb_database.Text := arq_ini.ReadString('FIREBIRD', 'DATABASE', '');

   edtPrefixo.Text := arq_ini.ReadString('MIGRACAO', 'PREFIXO_TABELA_DESTINO', 'ESCRIBA_');

  except
    on e:exception do
      ShowMessage('Erro ao entrar no aplicativo: ' + e.Message);
  end;
end;

procedure TFMenuMigrador.btnTestaConnMySQLClick(Sender: TObject);
begin
  try
    FDConnection.Close;
    FDConnection.Params.Password := mysql_senha.Text;
    FDConnection.Params.UserName := mysql_usuario.Text;
    FDConnection.Params.Database := mysql_database.Text;
    FDConnection.Params.Add('Server=' + mysql_host.Text);
    FDConnection.Open;

    LabelMySQL.Caption := 'MySQL Conectado';
    RichEdit1.Lines.Add('Base MySQL conectado;');
  except
    On e: exception do
    begin
      MessageDlg('Erro ao conectar ao banco de dados MYSQL' +
        chr(10) + 'Erro: ' + e.message, mtError, [mbOK], 0);
      LabelMySQL.Caption := 'NÃO Conectado';
    end;
  end;


end;

procedure TFMenuMigrador.SpeedButton1Click(Sender: TObject);
begin
  btnTestaConnMySQLClick(Sender);
  qryTabelasMySQL.Open;

end;

procedure TFMenuMigrador.btnConectaBaseFBClick(Sender: TObject);
begin
  if Trim(fb_host.Text) + Trim(fb_database.Text) = EmptyStr then
  begin
    ShowMessage('Digite os dados de conexão.');
    Exit;
  end;

  try
    IBDatabaseFB.Close;
    IBDatabaseFB.DatabaseName := fb_host.Text + ':' + fb_database.Text;
    IBDatabaseFB.Params.Clear;
    IBDatabaseFB.Params.Add('user_name=' + fb_usuario.Text); //SYSDBA
    IBDatabaseFB.Params.Add('password=' + fb_senha.Text); //masterkey
    IBDatabaseFB.Open;
    RichEdit1.Lines.Add('Base Firebird conctado;');
    Label13.Caption := 'FB Conectado'
  except
    On e: exception do
    begin
      MessageDlg('Erro ao conectar ao banco de dados FIREBIRD' +
        chr(10) + 'Erro: ' + e.message, mtError, [mbOK], 0);
      Label13.Caption := 'NÃO Conectado';
    end;
  end;


end;

procedure TFMenuMigrador.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TFMenuMigrador.btnImportaClick(Sender: TObject);
begin
  EnviaRegistrosToFirebird(qryTabelasMySQL.Fields[0].AsString, ChaveDefinida);
end;

procedure TFMenuMigrador.btnPreparaClick(Sender: TObject);
var
  script:widestring;
begin
  if Trim(edtPrefixo.Text) = EmptyStr then
  begin
    ShowMessage('Preencha o campo [PREFIXO], esta informação será usada para formar o nome da tabela no banco de destino (FB)');
    PageControl1.ActivePageIndex := 0;
    edtPrefixo.SetFocus;
    edtPrefixo.Color := $0080FFFF;
    Exit;
  end;
  btnConectaBaseFBClick(Sender);
  Script := MontaCreateTable(qryTabelasMySQL.Fields[0].AsString);
  RichEdit3.Lines.SetText(pchar(script));
  CriarTabela(qryTabelasMySQL.Fields[0].AsString, Script);
end;

function TFMenuMigrador.TabelaExisteFirebird(pNomeTabela: string): boolean;
var
  IBQuery: TIBQuery;
begin
  try
    IBQuery := TIBQuery.Create(Self);
    IBQuery.Database := IBDatabaseFB;
    IBQuery.SQL.Text := 'SELECT RDB$RELATION_NAME FROM RDB$RELATIONS WHERE RDB$RELATION_NAME = ' +
      QuotedStr(AnsiUpperCase(edtPrefixo.Text) + AnsiUpperCase(pNomeTabela));
    IBQuery.open;
    Result := not IBQuery.IsEmpty;
  except
    on e: exception do
      showmessage('Erro ao verificar a existência da tabela no Firebird' + 
        chr(10) + 'Erro: ' + E.Message);
  end;
end;

procedure TFMenuMigrador.CriarTabela(pNomeTabela: string; pScript: WideString);
var
  IBQuery: TIBQuery;
begin
  if TabelaExisteFirebird(pNomeTabela) then
  begin
    btnImporta.Enabled := True;
    RichEdit1.Lines.Add('Tabela ' + AnsiUpperCase(edtPrefixo.Text) + pNomeTabela + ' já existe na base Firebird');
    Exit;
  end;

  try
    IBQuery := TIBQuery.Create(Self);
    IBQuery.Database := IBDatabaseFB;
    IBQuery.SQL.Text := pScript;
    IBQuery.ExecSQL;
    RichEdit1.Lines.Add('Tabela ' + AnsiUpperCase(edtPrefixo.Text) + pNomeTabela + ' criada com sucesso na base Firebird');
    btnImporta.Enabled := True;
  except
    on e: exception do
      ShowMessage('Erro ao criar tabela no Firebird' + chr(10) + 'Erro' + e.Message);
  end;

  TFuncoesFB.AtualizaTransacao(IBTransaction);
end;

function TFMenuMigrador.MontaCreateTable(pNomeTabela: string) : WideString;
var
  slScript: TStringList;
  strCampo: string;
  i: integer;
  strNomeTabelaDestino: string;
begin
  strCampo := '';
  ChaveDefinida := '';
  strNomeTabelaDestino := AnsiUpperCase(edtPrefixo.Text + pNomeTabela);
  slScript := TStringList.Create;
  slScript.Add('CREATE TABLE ' + strNomeTabelaDestino + ' ( ');

  qryCampos.First;
  i := 1;
  while not qryCampos.eof do
  begin
    strCampo := '  ' + qryCampos.FieldByName('field').AsString + ' ' +
      TFuncao.RetornaTipoCampo(qryCampos.FieldByName('type').AsString);

    if (qryCampos.FieldByName('key').Value = 'PRI') then
    begin
      if ChaveDefinida = '' then
        ChaveDefinida := qryCampos.FieldByName('field').AsString
      else
        ChaveDefinida := ChaveDefinida + ', ' + qryCampos.FieldByName('field').AsString;
    end;

    if (i < qryCampos.RecordCount) or (ChaveDefinida <> '') then
      strCampo := strCampo + ',';

    slScript.Add(strCampo);

    inc(i, 1);
    qrycampos.Next;
  end;

  if ChaveDefinida <> '' then
    slScript.Add('  CONSTRAINT PK_' + strNomeTabelaDestino + ' PRIMARY KEY (' + ChaveDefinida + ') ');

  slScript.Add(');');
  Result := slScript.GetText;
end;

function TFMenuMigrador.MontaInsertInto(pNomeTabela: string) : WideString;
var
  strCampo, strCampo2: string;
  i: integer;
begin
  strCampo := '';
  strCampo2 := '';
  qryCampos.First;
  i := 1;
  while not qryCampos.eof do
  begin
    strCampo := strCampo + qryCampos.FieldByName('field').AsString;
    strCampo2 := strCampo2 + ':' + qryCampos.FieldByName('field').AsString;

    if i <  qryCampos.RecordCount then
    begin
      strCampo := strCampo + ',';
      strCampo2 := strCampo2 + ',';
    end
    else
    begin
      strCampo := strCampo + ')';
      strCampo2 := strCampo2 + ');';
    end;

    inc(i, 1);
    qrycampos.Next;
  end;

  Result := ' INSERT INTO ' + AnsiUpperCase(edtPrefixo.Text) + pNomeTabela + ' (' + strCampo +
    ' VALUES ( ' + strCampo2;
end;

procedure TFMenuMigrador.EnviaRegistrosToFirebird(pNomeTabela, pCampoChave: string);
var
  qryMySQL: TFDQuery;
  qryFirebird: TIBQuery;
  i, iCampo: integer;
  strFirebirdSQLText: string;
begin
  qryMySQL := TFDQuery.Create(Self);

  TFuncoesFB.AtualizaTransacao(IBTransaction);
  TFuncoesFB.IniciaTransacao(IBTransaction);

  try
    qryMySQL.Connection := FDConnection;
    qryMySQL.SQL.Text := 'SELECT COUNT(1) FROM ' + pNomeTabela;
    qryMySQL.Open;
    ProgressBar1.Max := qryMySQL.Fields[0].AsInteger;
    RichEdit1.Lines.Add('Qtde de registros para importar: ' + qryMySQL.Fields[0].AsString);

    qryMySQL.Close;
    qryMySQL.SQL.Text := 'SELECT * FROM ' + pNomeTabela;
    qryMySQL.Open;

    strFirebirdSQLText := MontaInsertInto(pNomeTabela);
    RichEdit1.Lines.Add('A importação iniciou às: ' + TimeToStr(Time) + ' aguarde...');

    while not qryMySQL.eof do
    begin
      qryFirebird := TIBQuery.Create(Self);
      qryFirebird.Database := IBDatabaseFB;
      qryFirebird.Transaction := IBTransaction;
      qryFirebird.SQL.Text := strFirebirdSQLText;
      try
        for iCampo := 0 to qryMySQL.Fields.Count -1 do
        begin
          if not qryMySQL.Fields[iCampo].IsNull then
          begin
            case qryMySQL.Fields[iCampo].DataType of
              ftAutoInc, ftSmallint, ftInteger, ftWord, ftLargeint, ftLongWord, ftShortint, ftByte, ftBoolean:
              begin
                qryFirebird.ParamByName(qryMySQL.Fields[iCampo].FieldName).AsInteger := qryMySQL.Fields[iCampo].AsInteger;
              end;
              ftFMTBcd, ftFloat, ftCurrency, ftBCD , ftExtended :
              begin
                qryFirebird.ParamByName(qryMySQL.Fields[iCampo].FieldName).AsFloat := qryMySQL.Fields[iCampo].AsFloat;
              end;

              ftDate, ftTime, ftDateTime, ftTimeStamp:
              begin
                qryFirebird.ParamByName(qryMySQL.Fields[iCampo].FieldName).AsDateTime := qryMySQL.Fields[iCampo].AsDateTime;
              end;
              ftString, ftBlob, ftMemo, ftWideString, ftFixedWideChar, ftWideMemo, ftBytes, ftVarBytes :
              begin
                qryFirebird.ParamByName(qryMySQL.Fields[iCampo].FieldName).AsString := qryMySQL.Fields[iCampo].AsString;
              end;
              else
              begin
                qryFirebird.ParamByName(qryMySQL.Fields[iCampo].FieldName).AsString := qryMySQL.Fields[iCampo].AsString;
              end;
            end;
          end;
        end;

        qryFirebird.ExecSQL;
        qryMySQL.Next;

        ProgressBar1.Position := ProgressBar1.Position + 1;
        Self.Refresh;
        Application.ProcessMessages;
      finally
        FreeAndNil(qryFirebird);
      end;
    end;
  except
    ON E:Exception do
      ShowMessage('Erro : ' + e.Message);
  end;

  TFuncoesFB.ComitaTransacao(IBTransaction);
  RichEdit1.Lines.Add('A importação terminou às: ' + TimeToStr(Time));
end;

end.
