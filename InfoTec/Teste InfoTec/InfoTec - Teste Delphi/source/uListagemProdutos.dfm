object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Listagem de Produtos'
  ClientHeight = 534
  ClientWidth = 783
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 783
    Height = 493
    Align = alClient
    Caption = 'Listagem de Produtos'
    TabOrder = 0
    ExplicitWidth = 741
    ExplicitHeight = 528
    object gridVendas: TDBGrid
      Left = 25
      Top = 40
      Width = 720
      Height = 433
      Color = clCream
      DrawingStyle = gdsClassic
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_VENDA'
          Title.Caption = 'Id Venda'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_TOTAL'
          Title.Caption = 'Valor Total'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DT_EMISSAO'
          Title.Caption = 'Data de Emiss'#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 118
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DT_ENTREGA'
          Title.Caption = 'Data de Entrega'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 113
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 493
    Width = 783
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    Caption = 'Listagem de Produtos'
    ShowCaption = False
    TabOrder = 1
    ExplicitWidth = 772
    object btnTodas: TButton
      Left = 670
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Todas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object btnLocalizar: TButton
      Left = 592
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Localizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object edNumVenda: TEdit
      Left = 461
      Top = 10
      Width = 121
      Height = 21
      NumbersOnly = True
      TabOrder = 0
    end
  end
end
