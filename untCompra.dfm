object frmCompra: TfrmCompra
  Left = 0
  Top = 0
  Caption = 'Compra '
  ClientHeight = 444
  ClientWidth = 484
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 484
    Height = 138
    Align = alTop
    Color = 12615680
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 243
      Top = 9
      Width = 23
      Height = 13
      Caption = 'Data'
      FocusControl = DBEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 49
      Width = 55
      Height = 13
      Caption = 'Fornecedor'
      FocusControl = dbeFornecedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 8
      Width = 63
      Height = 13
      Caption = 'C'#243'd. Compra'
      FocusControl = DBEdit3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 408
      Top = 8
      Width = 41
      Height = 13
      Caption = 'Situa'#231#227'o'
      FocusControl = DBEdit5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Panel3: TPanel
      Left = 1
      Top = 93
      Width = 482
      Height = 44
      Align = alBottom
      Color = 9408399
      ParentBackground = False
      TabOrder = 0
      ExplicitTop = 94
      object Label9: TLabel
        Left = 9
        Top = 3
        Width = 38
        Height = 13
        Caption = 'Produto'
      end
      object SpeedButton1: TSpeedButton
        Left = 52
        Top = 16
        Width = 21
        Height = 23
      end
      object Label10: TLabel
        Left = 256
        Top = 3
        Width = 34
        Height = 13
        Caption = 'Quant.'
      end
      object Label11: TLabel
        Left = 317
        Top = 4
        Width = 38
        Height = 13
        Caption = 'Vl. Unit.'
      end
      object Label12: TLabel
        Left = 375
        Top = 4
        Width = 24
        Height = 13
        Caption = 'Total'
      end
      object edtProduto: TEdit
        Left = 8
        Top = 17
        Width = 44
        Height = 21
        TabOrder = 0
        Text = 'edtProduto'
      end
      object Edit2: TEdit
        Left = 74
        Top = 17
        Width = 177
        Height = 21
        TabOrder = 1
        Text = 'Edit2'
      end
      object edtQuant: TEdit
        Left = 256
        Top = 17
        Width = 57
        Height = 21
        TabOrder = 2
        Text = 'edtQuant'
      end
      object edtVlUnit: TEdit
        Left = 317
        Top = 17
        Width = 52
        Height = 21
        TabOrder = 3
        Text = 'edtVlUnit'
      end
      object edtTotal: TEdit
        Left = 373
        Top = 17
        Width = 58
        Height = 21
        TabOrder = 4
        Text = 'edtTotal'
      end
      object brnLancar: TButton
        Left = 434
        Top = 17
        Width = 49
        Height = 23
        Caption = 'Lan'#231'ar'
        TabOrder = 5
        OnClick = brnLancarClick
      end
    end
    object DBEdit1: TDBEdit
      Left = 243
      Top = 24
      Width = 83
      Height = 21
      DataField = 'DATA_COMPRA'
      DataSource = dsCompra
      TabOrder = 1
    end
    object dbeFornecedor: TDBEdit
      Left = 8
      Top = 65
      Width = 49
      Height = 21
      DataField = 'ID_FORNECEDOR'
      DataSource = dsCompra
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 8
      Top = 24
      Width = 134
      Height = 21
      DataField = 'COD_COMPRA'
      DataSource = dsCompra
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 59
      Top = 65
      Width = 416
      Height = 21
      DataField = 'NOME_PESSOA'
      DataSource = dsCompra
      TabOrder = 4
    end
    object DBEdit5: TDBEdit
      Left = 408
      Top = 24
      Width = 67
      Height = 21
      DataField = 'SITUACAO'
      DataSource = dsCompra
      TabOrder = 5
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 138
    Width = 484
    Height = 214
    Align = alClient
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel2: TPanel
    Left = 0
    Top = 352
    Width = 484
    Height = 51
    Align = alBottom
    Color = clGray
    ParentBackground = False
    TabOrder = 2
    object Label5: TLabel
      Left = 8
      Top = 5
      Width = 96
      Height = 14
      Caption = 'Valor. Produtos'
      FocusControl = DBEdit6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 120
      Top = 5
      Width = 77
      Height = 14
      Caption = '(-) Desconto'
      FocusControl = DBEdit7
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 232
      Top = 5
      Width = 85
      Height = 14
      Caption = '(+) Acr'#233'scimo'
      FocusControl = DBEdit8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 363
      Top = 5
      Width = 39
      Height = 14
      Caption = 'TOTAL'
      FocusControl = DBEdit9
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit6: TDBEdit
      Left = 8
      Top = 21
      Width = 94
      Height = 21
      DataField = 'VALOR_PRODUTOS'
      DataSource = dsCompra
      TabOrder = 0
    end
    object DBEdit7: TDBEdit
      Left = 120
      Top = 21
      Width = 94
      Height = 21
      DataField = 'VALOR_DESCONTO'
      DataSource = dsCompra
      TabOrder = 1
    end
    object DBEdit8: TDBEdit
      Left = 232
      Top = 21
      Width = 100
      Height = 21
      DataField = 'VALOR_ACRESCIMO'
      DataSource = dsCompra
      TabOrder = 2
    end
    object DBEdit9: TDBEdit
      Left = 363
      Top = 21
      Width = 114
      Height = 21
      DataField = 'VALOR_TOTAL'
      DataSource = dsCompra
      TabOrder = 3
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 403
    Width = 484
    Height = 41
    Align = alBottom
    Color = 16777088
    ParentBackground = False
    TabOrder = 3
    ExplicitTop = 379
    object btnNovo: TSpeedButton
      Left = 8
      Top = 6
      Width = 66
      Height = 29
      Caption = 'Novo'
      OnClick = btnNovoClick
    end
    object brnGravar: TSpeedButton
      Left = 81
      Top = 6
      Width = 61
      Height = 28
      Caption = 'Gravar'
      OnClick = brnGravarClick
    end
    object brnCancelar: TSpeedButton
      Left = 148
      Top = 6
      Width = 61
      Height = 28
      Caption = 'Cancelar'
      OnClick = brnCancelarClick
    end
    object brnExcluir: TSpeedButton
      Left = 215
      Top = 6
      Width = 61
      Height = 28
      Caption = 'Excluir'
    end
  end
  object dsCompra: TDataSource
    DataSet = dm.qryCompra
    Left = 56
    Top = 208
  end
  object dsCompraItem: TDataSource
    DataSet = dm.qryCompraItem
    Left = 136
    Top = 208
  end
end
