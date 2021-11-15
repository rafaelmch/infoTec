object frmRegistroVendas: TfrmRegistroVendas
  Left = 0
  Top = 0
  Caption = 'frmRegistroVendas'
  ClientHeight = 569
  ClientWidth = 741
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 741
    Height = 528
    Align = alClient
    TabOrder = 0
    object Label15: TLabel
      Left = 25
      Top = 16
      Width = 93
      Height = 13
      Caption = 'C'#243'digo da Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 25
      Top = 62
      Width = 61
      Height = 13
      Caption = 'Valor Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 400
      Top = 62
      Width = 91
      Height = 13
      Caption = 'Data de Entrega'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 208
      Top = 62
      Width = 93
      Height = 13
      Caption = 'Data de Emiss'#227'o'
      FocusControl = dbDtEmissao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbIdVenda: TDBEdit
      Left = 25
      Top = 35
      Width = 134
      Height = 21
      DataField = 'ID_VENDA'
      DataSource = dsqVendas
      TabOrder = 0
    end
    object dbValorTotal: TDBEdit
      Left = 25
      Top = 81
      Width = 134
      Height = 21
      DataField = 'VALOR_TOTAL'
      DataSource = dsqVendas
      TabOrder = 1
    end
    object dbDtEmissao: TDBEdit
      Left = 208
      Top = 81
      Width = 134
      Height = 21
      DataField = 'DT_EMISSAO'
      DataSource = dsqVendas
      TabOrder = 2
    end
    object dbDtEntrega: TDBEdit
      Left = 400
      Top = 83
      Width = 134
      Height = 21
      DataField = 'DT_ENTREGA'
      DataSource = dsqVendas
      TabOrder = 3
    end
    object gridItensVenda: TDBGrid
      Left = 25
      Top = 233
      Width = 509
      Height = 169
      Color = clCream
      DataSource = dsqItemVenda
      DrawingStyle = gdsClassic
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_PRODUTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ReadOnly = True
          Title.Caption = 'Id Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ReadOnly = True
          Title.Caption = 'Quantidde'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO_UNIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ReadOnly = True
          Title.Caption = 'Pre'#231'o Unit'#225'rio'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO_TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ReadOnly = True
          Title.Caption = 'Pre'#231'o Total'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 122
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 528
    Width = 741
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    object lblRegistros: TLabel
      Left = 219
      Top = 14
      Width = 55
      Height = 13
      Caption = 'lblRegistros'
    end
    object dbNavegador: TDBNavigator
      Left = 5
      Top = 6
      Width = 120
      Height = 25
      DataSource = dsqVendas
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbEdit]
      TabOrder = 0
      OnClick = dbNavegadorClick
    end
    object btnNovo: TButton
      Left = 131
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
    object btnCancelar: TButton
      Left = 658
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
      TabOrder = 2
    end
    object btnSalvar: TButton
      Left = 580
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
      TabOrder = 3
    end
    object btnEnviarEmail: TButton
      Left = 355
      Top = 8
      Width = 69
      Height = 25
      Caption = 'Enviar @'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
  end
  object qVendas: TFDQuery
    Connection = frmMain.qConexao
    SQL.Strings = (
      'SELECT * FROM VENDAS')
    Left = 576
    Top = 24
    object qVendasID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qVendasVALOR_TOTAL: TSingleField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
    end
    object qVendasDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
      Origin = 'DT_EMISSAO'
    end
    object qVendasDT_ENTREGA: TDateField
      FieldName = 'DT_ENTREGA'
      Origin = 'DT_ENTREGA'
    end
  end
  object dsqVendas: TDataSource
    DataSet = qVendas
    Left = 648
    Top = 24
  end
  object qItemVenda: TFDQuery
    Connection = frmMain.qConexao
    SQL.Strings = (
      'SELECT * FROM ITEMVENDA')
    Left = 584
    Top = 88
  end
  object dsqItemVenda: TDataSource
    DataSet = qItemVenda
    Left = 656
    Top = 104
  end
end
