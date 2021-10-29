object frmPesqProduto: TfrmPesqProduto
  Left = 0
  Top = 0
  Caption = 'frmPesqProduto'
  ClientHeight = 308
  ClientWidth = 435
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 435
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 14
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object edtPesquisa: TEdit
      Left = 11
      Top = 30
      Width = 417
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = edtPesquisaChange
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 435
    Height = 251
    Align = alClient
    DataSource = dsPesquisa
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_PRODUTO'
        Title.Caption = 'C'#243'digo'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO_PRODUTO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 249
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_VENDA'
        Title.Caption = 'Valor'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SALDO_PRODUTO'
        Title.Caption = 'Quant.'
        Width = 51
        Visible = True
      end>
  end
  object dsPesquisa: TDataSource
    DataSet = qryPesquisa
    Left = 144
    Top = 144
  end
  object qryPesquisa: TFDQuery
    Connection = dm.Conexao
    SQL.Strings = (
      'SELECT * FROM PRODUTO')
    Left = 48
    Top = 144
    object qryPesquisaCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
      Origin = 'COD_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPesquisaDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Origin = 'DESCRICAO_PRODUTO'
      Size = 100
    end
    object qryPesquisaPRECO_CUSTO: TBCDField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
      Precision = 18
      Size = 2
    end
    object qryPesquisaPRECO_VENDA: TBCDField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
      Precision = 18
      Size = 2
    end
    object qryPesquisaSALDO_PRODUTO: TBCDField
      FieldName = 'SALDO_PRODUTO'
      Origin = 'SALDO_PRODUTO'
      Precision = 18
      Size = 3
    end
    object qryPesquisaID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
      Origin = 'ID_GRUPO'
    end
  end
end
