inherited frmProduto: TfrmProduto
  Caption = 'Cadastro de Produto'
  ClientHeight = 270
  ClientWidth = 457
  OnShow = FormShow
  ExplicitWidth = 473
  ExplicitHeight = 308
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 16
    Top = 32
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel [1]
    Left = 16
    Top = 72
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
    FocusControl = dbeDescricao
  end
  object Label3: TLabel [2]
    Left = 16
    Top = 112
    Width = 58
    Height = 13
    Caption = 'Pre'#231'o Custo'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 121
    Top = 112
    Width = 60
    Height = 13
    Caption = 'Pre'#231'o Venda'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 224
    Top = 115
    Width = 26
    Height = 13
    Caption = 'Saldo'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [5]
    Left = 16
    Top = 160
    Width = 52
    Height = 13
    Caption = 'ID_GRUPO'
    FocusControl = dbeGrupo
  end
  object Label7: TLabel [6]
    Left = 77
    Top = 160
    Width = 100
    Height = 13
    Caption = 'DESCRICAO_GRUPO'
    FocusControl = dbeDescGrupo
  end
  object btnPesqProduto: TSpeedButton [7]
    Left = 92
    Top = 46
    Width = 25
    Height = 22
    OnClick = btnPesqProdutoClick
  end
  object btnPesqGrupo: TSpeedButton [8]
    Left = 58
    Top = 174
    Width = 23
    Height = 22
    OnClick = btnPesqGrupoClick
  end
  inherited Panel1: TPanel
    Width = 457
    Caption = 'Produtos'
    ExplicitWidth = 457
  end
  inherited Panel2: TPanel
    Top = 222
    Width = 457
    ExplicitTop = 222
    ExplicitWidth = 457
    inherited Panel3: TPanel
      inherited btnNovo: TSpeedButton
        OnClick = btnNovoClick
      end
    end
    inherited Panel4: TPanel
      inherited btnGravar: TSpeedButton
        OnClick = btnGravarClick
      end
    end
    inherited Panel6: TPanel
      inherited btnExcluir: TSpeedButton
        OnClick = btnExcluirClick
      end
    end
    inherited Panel7: TPanel
      inherited btnCancelar: TSpeedButton
        OnClick = btnCancelarClick
      end
    end
  end
  object dbeDescricao: TDBEdit [11]
    Left = 16
    Top = 88
    Width = 427
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DESCRICAO_PRODUTO'
    DataSource = dsTabela
    TabOrder = 3
  end
  object DBEdit3: TDBEdit [12]
    Left = 16
    Top = 128
    Width = 88
    Height = 21
    DataField = 'PRECO_CUSTO'
    DataSource = dsTabela
    TabOrder = 4
  end
  object DBEdit4: TDBEdit [13]
    Left = 121
    Top = 128
    Width = 88
    Height = 21
    DataField = 'PRECO_VENDA'
    DataSource = dsTabela
    TabOrder = 5
  end
  object DBEdit5: TDBEdit [14]
    Left = 224
    Top = 128
    Width = 88
    Height = 21
    DataField = 'SALDO_PRODUTO'
    DataSource = dsTabela
    TabOrder = 6
  end
  object dbeGrupo: TDBEdit [15]
    Left = 16
    Top = 174
    Width = 41
    Height = 21
    DataField = 'ID_GRUPO'
    DataSource = dsTabela
    TabOrder = 7
    OnExit = dbeGrupoExit
    OnKeyDown = dbeGrupoKeyDown
  end
  object dbeDescGrupo: TDBEdit [16]
    Left = 82
    Top = 174
    Width = 364
    Height = 21
    DataField = 'DESCRICAO_GRUPO'
    DataSource = dsTabela
    Enabled = False
    TabOrder = 8
  end
  object edtCodigo: TEdit [17]
    Left = 16
    Top = 46
    Width = 74
    Height = 21
    TabOrder = 2
    OnExit = edtCodigoExit
    OnKeyDown = edtCodigoKeyDown
  end
  inherited dsTabela: TDataSource
    DataSet = dm.qryProduto
    Left = 208
    Top = 40
  end
end
