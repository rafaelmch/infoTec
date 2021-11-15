object frmCadUsuario: TfrmCadUsuario
  Left = 0
  Top = 0
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 223
  ClientWidth = 455
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 455
    Height = 182
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 13
      Width = 13
      Height = 13
      Caption = 'ID'
      FocusControl = edID
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 75
      Top = 13
      Width = 32
      Height = 13
      Caption = 'Nome'
      FocusControl = edNome
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 11
      Top = 61
      Width = 30
      Height = 13
      Caption = 'Login'
      FocusControl = edLogin
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 280
      Top = 61
      Width = 35
      Height = 13
      Caption = 'Senha'
      FocusControl = edSenha
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 11
      Top = 110
      Width = 117
      Height = 13
      Caption = 'Ativo ([S]im / [N]'#227'o)'
      FocusControl = edAtivo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edID: TDBEdit
      Left = 11
      Top = 29
      Width = 46
      Height = 21
      DataField = 'ID_USUARIO'
      DataSource = dsqUsuarios
      Enabled = False
      TabOrder = 0
    end
    object edNome: TDBEdit
      Left = 75
      Top = 29
      Width = 275
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = dsqUsuarios
      TabOrder = 1
    end
    object edLogin: TDBEdit
      Left = 11
      Top = 77
      Width = 263
      Height = 21
      CharCase = ecUpperCase
      DataField = 'LOGIN'
      DataSource = dsqUsuarios
      TabOrder = 2
    end
    object edSenha: TDBEdit
      Left = 280
      Top = 77
      Width = 70
      Height = 21
      DataField = 'SENHA'
      DataSource = dsqUsuarios
      PasswordChar = '*'
      TabOrder = 3
    end
    object edAtivo: TDBEdit
      Left = 11
      Top = 126
      Width = 17
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ATIVO'
      DataSource = dsqUsuarios
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 182
    Width = 455
    Height = 41
    Align = alBottom
    TabOrder = 1
    object lblRegistros: TLabel
      Left = 219
      Top = 14
      Width = 55
      Height = 13
      Caption = 'lblRegistros'
    end
    object btnGravar: TButton
      Left = 294
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Gravar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnGravarClick
    end
    object btnNovo: TButton
      Left = 134
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnNovoClick
    end
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 8
      Width = 120
      Height = 25
      DataSource = dsqUsuarios
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbEdit]
      TabOrder = 2
      OnClick = DBNavigator1Click
    end
    object btnCancelar: TButton
      Left = 373
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btnCancelarClick
    end
  end
  object qUsuarios: TFDQuery
    IndexFieldNames = 'ID_USUARIO'
    Connection = fCorretoraACME.qConexao
    SQL.Strings = (
      'SELECT * FROM USUARIOS')
    Left = 184
    Top = 112
    object qUsuariosID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qUsuariosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 120
    end
    object qUsuariosLOGIN: TStringField
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
      Size = 30
    end
    object qUsuariosSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 30
    end
    object qUsuariosATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dsqUsuarios: TDataSource
    DataSet = qUsuarios
    Left = 232
    Top = 112
  end
end
