object FMenuMigrador: TFMenuMigrador
  Left = 0
  Top = 0
  ActiveControl = PageControl1
  Caption = 'Migrador MySQL -> Firebird (OnLine) - Version. 1.0.3'
  ClientHeight = 516
  ClientWidth = 903
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 903
    Height = 41
    Align = alTop
    Caption = 'Migrador MySQL to Firebird - Ultra Power 2x'
    Color = 16744576
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 475
    Width = 903
    Height = 41
    Align = alBottom
    TabOrder = 1
    object SpeedButton3: TSpeedButton
      Left = 808
      Top = 5
      Width = 87
      Height = 30
      Caption = '&Fechar'
      OnClick = SpeedButton3Click
    end
    object Label12: TLabel
      Left = 11
      Top = 2
      Width = 119
      Height = 13
      Caption = 'Progresso da importa'#231#227'o'
    end
    object ProgressBar1: TProgressBar
      Left = 11
      Top = 18
      Width = 777
      Height = 17
      TabOrder = 0
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 903
    Height = 434
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = '&Configura'#231#245'es'
      object Image1: TImage
        Left = 444
        Top = 96
        Width = 32
        Height = 32
        AutoSize = True
        Center = True
        Picture.Data = {
          07544269746D6170360C0000424D360C00000000000036000000280000002000
          0000200000000100180000000000000C0000C40E0000C40E0000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFB0CAF16094E3407FDE3074DB0054D30054D33074DB407FDE6094E3AFC9
          F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF4FD6094E3
          105ED50054D30054D30054D30054D30054D30054D30054D30054D30054D30054
          D3105ED56094E3DFE9FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80AAE9105ED50054D3
          0054D30054D31F68D86F9EE67FA9E99FBEEE9FBEEE7FA9E96F9EE61F68D80054
          D30054D30054D3105ED57FA9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF4FD3074DB0054D30054D30F5ED5
          7FA9E9DFE9FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFE9
          FA7FA9E90F5ED50054D30054D33074DBEFF4FDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFF7105ED50054D30054D35F93E3DFE9FA
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFEFF4FD5F93E30054D30054D3105ED5CFDFF7FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFEFF4FD105ED50054D30054D39FBEEEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF9FBEEE0054D30054D3105ED5EFF4FDFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF3074DB0054D30054D3CFDFF7FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFCFDFF70054D30054D33074DBEFF4FDFFFFFFFF
          FFFFFFFFFFFFFFFF7FA9E90054D30054D39FBEEEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FBEEE0054D30054D37FA9E9FFFFFFFF
          FFFFFFFFFFEFF4FD105ED50054D34F89E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F93E30054D3105ED5DFE9FAFF
          FFFFFFFFFF5F93E30054D30F5ED5DFE9FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFCFDFF70F5ED50054D30054D35F93E3FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF4FD0F5ED50054D35F93E3FF
          FFFFFFFFFF105ED50054D37FA9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFF70F5ED50054D30054D35F93E3FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FA9E90054D30F5ED5FF
          FFFFAFC9F10054D30054D3CFDFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFF70F5ED50054D30054D35F93
          E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFE9FA0054D30054D3AF
          C9F16F9EE60054D31F68D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFF70F5ED50054D30054
          D35F93E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F68D80054D35F
          93E33F7EDE0054D36F9EE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFF70F5ED50054
          D30054D35F93E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F9EE60054D33F
          7EDE3074DB0054D37FA9E9FFFFFFFFFFFFFFFFFFFFFFFFBFD4F40054D30054D3
          0054D30054D30054D30054D30054D30054D30054D30054D30054D30054D30054
          D30054D30054D35F93E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FA9E90054D32F
          73DB0054D30054D38FB4ECFFFFFFFFFFFFFFFFFFFFFFFFBFD4F40054D30054D3
          0054D30054D30054D30054D30054D30054D30054D30054D30054D30054D30054
          D30054D30054D30054D35F93E3FFFFFFFFFFFFFFFFFFFFFFFF9FBEEE0054D300
          54D30054D30054D38FB4ECFFFFFFFFFFFFFFFFFFFFFFFFBFD4F40054D30054D3
          0054D30054D30054D30054D30054D30054D30054D30054D30054D30054D30054
          D30054D30054D30054D35F93E3FFFFFFFFFFFFFFFFFFFFFFFF9FBEEE0054D300
          54D32F73DB0054D37FA9E9FFFFFFFFFFFFFFFFFFFFFFFFBFD4F40054D30054D3
          0054D30054D30054D30054D30054D30054D30054D30054D30054D30054D30054
          D30054D30054D35F93E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FA9E90054D32F
          73DB3F7EDE0054D36F9EE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFF7105ED50054
          D30054D35F93E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F9EE60054D33F
          7EDE6F9EE60054D31F68D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFF7105ED50054D30054
          D35F93E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2069D80054D35F
          93E3AFC9F10054D30054D3CFDFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFF7105ED50054D30054D35F93
          E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFE9FA0054D30054D3AF
          C9F1FFFFFF0F5ED50054D37FA9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFF7105ED50054D30054D35F93E3FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FA9E90054D30F5ED5FF
          FFFFFFFFFF5F93E30054D3105ED5DFE9FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFCFDFF7105ED50054D30054D35F93E3FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFE9FA105ED50054D35F93E3FF
          FFFFFFFFFFEFF4FD0F5ED50054D34F89E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F93E30054D30F5ED5EFF4FDFF
          FFFFFFFFFFFFFFFF7FA9E90054D30054D39FBEEEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FBEEE0054D30054D37FA9E9FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF2F73DB0054D30054D3CFDFF7FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFCFDFF70054D30054D32F73DBFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFEFF4FD1F68D80054D30054D39FBEEEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF9FBEEE0054D30054D30F5ED5EFF4FDFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFF71F68D80054D30054D35089E1DFE9FA
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFDFE9FA5089E10054D30054D30F5ED5CFDFF7FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF4FD2F73DB0054D30054D3105ED5
          80AAE9CFDFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFE9
          FA80AAE9105ED50054D30054D32F73DBEFF4FDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FA9E90F5ED50054D3
          0054D30054D32069D8709FE680AAE990B4EC90B4EC80AAE9709FE62069D80054
          D30054D30054D30F5ED57FA9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF4FD5F93E3
          0F5ED50054D30054D30054D30054D30054D30054D30054D30054D30054D30054
          D30F5ED55F93E3EFF4FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFAFC9F16F9EE63F7EDE2F73DB0054D30054D32F73DB3F7EDE5F93E3AFC9
          F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF}
      end
      object btnTestaConnMySQL: TSpeedButton
        Left = 3
        Top = 223
        Width = 109
        Height = 30
        Caption = '&Testar conex'#227'o'
        OnClick = btnTestaConnMySQLClick
      end
      object btnConectaBaseFB: TSpeedButton
        Left = 478
        Top = 223
        Width = 109
        Height = 30
        Caption = '&Testar conex'#227'o'
        OnClick = btnConectaBaseFBClick
      end
      object LabelMySQL: TLabel
        Left = 116
        Top = 231
        Width = 74
        Height = 13
        Caption = 'N'#227'o Conectado'
      end
      object Label13: TLabel
        Left = 593
        Top = 231
        Width = 74
        Height = 13
        Caption = 'N'#227'o Conectado'
      end
      object GroupBox1: TGroupBox
        Left = 4
        Top = 3
        Width = 434
        Height = 214
        Caption = '  Base MySQL  '
        TabOrder = 0
        object Label2: TLabel
          Left = 14
          Top = 17
          Width = 72
          Height = 13
          Caption = 'Host / Servidor'
        end
        object Label3: TLabel
          Left = 303
          Top = 17
          Width = 26
          Height = 13
          Caption = 'Porta'
        end
        object Label4: TLabel
          Left = 14
          Top = 65
          Width = 36
          Height = 13
          Caption = 'Usu'#225'rio'
        end
        object Label5: TLabel
          Left = 14
          Top = 113
          Width = 30
          Height = 13
          Caption = 'Senha'
        end
        object Label6: TLabel
          Left = 14
          Top = 161
          Width = 46
          Height = 13
          Caption = 'Database'
        end
        object mysql_host: TEdit
          Left = 14
          Top = 34
          Width = 283
          Height = 21
          TabOrder = 0
          Text = 'mysql_host'
        end
        object mysql_porta: TEdit
          Left = 303
          Top = 34
          Width = 101
          Height = 21
          TabOrder = 1
          Text = 'mysql_porta'
        end
        object mysql_usuario: TEdit
          Left = 14
          Top = 82
          Width = 163
          Height = 21
          TabOrder = 2
          Text = 'mysql_usuario'
        end
        object mysql_senha: TEdit
          Left = 14
          Top = 130
          Width = 163
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          Text = 'mysql_senha'
        end
        object mysql_database: TEdit
          Left = 15
          Top = 176
          Width = 410
          Height = 21
          TabOrder = 4
          Text = 'mysql_host'
        end
      end
      object GroupBox2: TGroupBox
        Left = 478
        Top = 3
        Width = 411
        Height = 214
        Caption = '  Base Firebird  '
        TabOrder = 1
        object Label7: TLabel
          Left = 12
          Top = 17
          Width = 72
          Height = 13
          Caption = 'Host / Servidor'
        end
        object Label8: TLabel
          Left = 302
          Top = 17
          Width = 26
          Height = 13
          Caption = 'Porta'
        end
        object Label9: TLabel
          Left = 12
          Top = 65
          Width = 36
          Height = 13
          Caption = 'Usu'#225'rio'
        end
        object Label10: TLabel
          Left = 12
          Top = 113
          Width = 30
          Height = 13
          Caption = 'Senha'
        end
        object Label11: TLabel
          Left = 12
          Top = 161
          Width = 46
          Height = 13
          Caption = 'Database'
        end
        object Label14: TLabel
          Left = 280
          Top = 113
          Width = 113
          Height = 13
          Caption = 'Prefixo Tabelas Destino'
        end
        object edtPrefixo: TEdit
          Left = 280
          Top = 130
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          Text = 'ESCRIBA_'
        end
        object fb_host: TEdit
          Left = 12
          Top = 34
          Width = 283
          Height = 21
          TabOrder = 0
          Text = 'fb_host'
        end
        object fb_porta: TEdit
          Left = 301
          Top = 34
          Width = 101
          Height = 21
          TabOrder = 1
          Text = 'fb_porta'
        end
        object fb_usuario: TEdit
          Left = 12
          Top = 82
          Width = 163
          Height = 21
          TabOrder = 2
          Text = 'fb_usuario'
        end
        object fb_senha: TEdit
          Left = 12
          Top = 130
          Width = 163
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          Text = 'fb_senha'
        end
        object fb_database: TcxButtonEdit
          Left = 12
          Top = 180
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxDBButtonEdit2PropertiesButtonClick
          Style.BorderStyle = ebsFlat
          TabOrder = 4
          Text = 'fb_database'
          Width = 395
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = '&Sele'#231#227'o de Tabelas'
      ImageIndex = 1
      object SpeedButton1: TSpeedButton
        Left = 4
        Top = 5
        Width = 77
        Height = 22
        Caption = 'Listar Tabelas'
        OnClick = SpeedButton1Click
      end
      object edtPesquisaTab: TEdit
        Left = 85
        Top = 7
        Width = 254
        Height = 21
        TabOrder = 0
        Text = 'Pesquisar tabelas'
        OnChange = edtPesquisaTabChange
        OnEnter = edtPesquisaTabEnter
      end
      object DBGrid1: TDBGrid
        Left = 3
        Top = 34
        Width = 302
        Height = 367
        DataSource = dsTabelasMySQL
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object DBGrid2: TDBGrid
        Left = 311
        Top = 34
        Width = 578
        Height = 367
        DataSource = dsCamposTabelaMySQL
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid2DrawColumnCell
      end
    end
    object TabSheet3: TTabSheet
      Caption = '&Importa'#231#227'o'
      ImageIndex = 2
      object Label1: TLabel
        Left = 3
        Top = 95
        Width = 17
        Height = 13
        Caption = 'Log'
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 895
        Height = 89
        Align = alTop
        TabOrder = 0
        object Resumo: TLabel
          Left = 4
          Top = 4
          Width = 38
          Height = 13
          Caption = 'Resumo'
        end
        object btnPrepara: TSpeedButton
          Left = 761
          Top = 19
          Width = 123
          Height = 30
          Caption = '&1 - Preparar Tabela'
          OnClick = btnPreparaClick
        end
        object btnImporta: TSpeedButton
          Left = 761
          Top = 51
          Width = 123
          Height = 30
          Caption = '&2 - Importar Registros'
          Enabled = False
          OnClick = btnImportaClick
        end
        object RichEdit2: TRichEdit
          Left = 4
          Top = 19
          Width = 751
          Height = 66
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          Zoom = 100
        end
      end
      object RichEdit1: TRichEdit
        Left = 3
        Top = 114
        Width = 889
        Height = 289
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 1
        Zoom = 100
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Create Table'
      ImageIndex = 3
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 895
        Height = 406
        Align = alClient
        Caption = '  DDL da Tabela  '
        TabOrder = 0
        object RichEdit3: TRichEdit
          Left = 2
          Top = 15
          Width = 891
          Height = 389
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Lines.Strings = (
            '')
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssBoth
          TabOrder = 0
          Zoom = 100
        end
      end
    end
  end
  object FDConnection: TFDConnection
    ConnectionName = 'MYSQL'
    Params.Strings = (
      'User_Name=root'
      'POOL_MaximumItems=100'
      'DriverID=MySQL')
    LoginPrompt = False
    Transaction = FDTransaction1
    BeforeConnect = FDConnectionBeforeConnect
    Left = 48
    Top = 272
  end
  object FDCommand: TFDCommand
    Connection = FDConnection
    Transaction = FDTransaction1
    Left = 112
    Top = 256
  end
  object qryTabelasMySQL: TFDQuery
    Filtered = True
    FilterOptions = [foCaseInsensitive]
    Connection = FDConnection
    SQL.Strings = (
      'SHOW TABLES;')
    Left = 248
    Top = 312
  end
  object FDScript: TFDScript
    SQLScripts = <>
    Connection = FDConnection
    Transaction = FDTransaction1
    Params = <>
    Macros = <>
    Left = 176
    Top = 328
  end
  object IBScript: TIBScript
    Database = IBDatabaseFB
    Transaction = IBTransaction
    Terminator = ';'
    Left = 824
    Top = 328
  end
  object IBTransaction: TIBTransaction
    DefaultDatabase = IBDatabaseFB
    Left = 768
    Top = 328
  end
  object IBDatabaseFB: TIBDatabase
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction
    ServerType = 'IBServer'
    Left = 696
    Top = 328
  end
  object OpenDialog1: TOpenDialog
    Filter = 'FDB|*.fdb|GDB|*.gdb'
    Left = 840
    Top = 144
  end
  object dsTabelasMySQL: TDataSource
    AutoEdit = False
    DataSet = qryTabelasMySQL
    OnDataChange = dsTabelasMySQLDataChange
    Left = 248
    Top = 360
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 56
    Top = 384
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    DriverID = 'MySQL'
    Left = 176
    Top = 384
  end
  object dsCamposTabelaMySQL: TDataSource
    AutoEdit = False
    DataSet = qryCampos
    Left = 368
    Top = 352
  end
  object qryCampos: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SHOW TABLES;')
    Left = 368
    Top = 304
  end
  object FDTransaction1: TFDTransaction
    Connection = FDConnection
    Left = 108
    Top = 329
  end
end
