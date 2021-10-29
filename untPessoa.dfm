inherited frmPessoa: TfrmPessoa
  Caption = 'Cadastro de Pessoa'
  ClientHeight = 427
  ClientWidth = 570
  OnShow = FormShow
  ExplicitWidth = 586
  ExplicitHeight = 465
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 34
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 74
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = dbeNome
  end
  object Label3: TLabel [2]
    Left = 110
    Top = 116
    Width = 50
    Height = 13
    Caption = 'CPF_CNPJ'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 302
    Top = 116
    Width = 30
    Height = 13
    Caption = 'RG_IE'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 8
    Top = 158
    Width = 42
    Height = 13
    Caption = 'Cidade *'
    FocusControl = dbeCidade
  end
  object Label6: TLabel [5]
    Left = 8
    Top = 201
    Width = 71
    Height = 13
    Caption = 'LOGRADOURO'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [6]
    Left = 468
    Top = 204
    Width = 90
    Height = 13
    Caption = 'NUMERO_LOGRAD'
    FocusControl = DBEdit7
  end
  object Label8: TLabel [7]
    Left = 8
    Top = 246
    Width = 39
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = DBEdit8
  end
  object Label9: TLabel [8]
    Left = 255
    Top = 246
    Width = 19
    Height = 13
    Caption = 'CEP'
    FocusControl = DBEdit9
  end
  object Label10: TLabel [9]
    Left = 336
    Top = 246
    Width = 75
    Height = 13
    Caption = 'COMPLEMENTO'
    FocusControl = DBEdit10
  end
  object Label11: TLabel [10]
    Left = 8
    Top = 290
    Width = 50
    Height = 13
    Caption = 'TELEFONE'
    FocusControl = DBEdit11
  end
  object Label12: TLabel [11]
    Left = 148
    Top = 290
    Width = 44
    Height = 13
    Caption = 'CELULAR'
    FocusControl = DBEdit12
  end
  object Label13: TLabel [12]
    Left = 256
    Top = 290
    Width = 30
    Height = 13
    Caption = 'EMAIL'
    FocusControl = DBEdit13
  end
  object Label14: TLabel [13]
    Left = 8
    Top = 119
    Width = 69
    Height = 13
    Caption = 'TIPO_PESSOA'
    FocusControl = DBEdit14
  end
  object Label15: TLabel [14]
    Left = 72
    Top = 158
    Width = 73
    Height = 13
    Caption = 'NOME_CIDADE'
    FocusControl = dbeNomeCidade
  end
  object Label16: TLabel [15]
    Left = 528
    Top = 158
    Width = 13
    Height = 13
    Caption = 'UF'
    FocusControl = dbeUF
  end
  object Label17: TLabel [16]
    Left = 482
    Top = 36
    Width = 52
    Height = 13
    Caption = 'SITUACAO'
    FocusControl = DBEdit17
  end
  object Label18: TLabel [17]
    Left = 8
    Top = 335
    Width = 60
    Height = 13
    Caption = 'DATA_NASC'
    FocusControl = DBEdit18
  end
  object Label19: TLabel [18]
    Left = 148
    Top = 335
    Width = 33
    Height = 13
    Caption = 'LIMITE'
    FocusControl = DBEdit19
  end
  object Label20: TLabel [19]
    Left = 255
    Top = 335
    Width = 77
    Height = 13
    Caption = 'ESCOLARIDADE'
    FocusControl = DBEdit20
  end
  inherited Panel1: TPanel
    Width = 570
    Caption = 'Pessoa'
    TabOrder = 1
    ExplicitWidth = 570
  end
  inherited Panel2: TPanel
    Top = 379
    Width = 570
    TabOrder = 2
    ExplicitTop = 379
    ExplicitWidth = 570
    inherited Panel3: TPanel
      inherited btnNovo: TSpeedButton
        OnClick = btnNovoClick
        ExplicitLeft = 0
        ExplicitTop = -6
        ExplicitWidth = 64
        ExplicitHeight = 39
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
        ExplicitLeft = 0
        ExplicitTop = -6
        ExplicitWidth = 64
      end
    end
  end
  object dbeNome: TDBEdit [22]
    Left = 8
    Top = 90
    Width = 550
    Height = 21
    DataField = 'NOME_PESSOA'
    DataSource = dsTabela
    TabOrder = 3
  end
  object DBEdit3: TDBEdit [23]
    Left = 110
    Top = 131
    Width = 186
    Height = 21
    DataField = 'CPF_CNPJ'
    DataSource = dsTabela
    TabOrder = 4
  end
  object DBEdit4: TDBEdit [24]
    Left = 302
    Top = 132
    Width = 163
    Height = 21
    DataField = 'RG_IE'
    DataSource = dsTabela
    TabOrder = 5
  end
  object dbeCidade: TDBEdit [25]
    Left = 8
    Top = 174
    Width = 50
    Height = 21
    DataField = 'ID_CIDADE'
    DataSource = dsTabela
    TabOrder = 6
    OnExit = dbeCidadeExit
  end
  object DBEdit6: TDBEdit [26]
    Left = 8
    Top = 217
    Width = 449
    Height = 21
    DataField = 'LOGRADOURO'
    DataSource = dsTabela
    TabOrder = 7
  end
  object DBEdit7: TDBEdit [27]
    Left = 468
    Top = 217
    Width = 90
    Height = 21
    DataField = 'NUMERO_LOGRAD'
    DataSource = dsTabela
    TabOrder = 8
  end
  object DBEdit8: TDBEdit [28]
    Left = 8
    Top = 262
    Width = 241
    Height = 21
    DataField = 'BAIRRO'
    DataSource = dsTabela
    TabOrder = 9
  end
  object DBEdit9: TDBEdit [29]
    Left = 255
    Top = 262
    Width = 66
    Height = 21
    DataField = 'CEP'
    DataSource = dsTabela
    TabOrder = 10
  end
  object DBEdit10: TDBEdit [30]
    Left = 336
    Top = 262
    Width = 222
    Height = 21
    DataField = 'COMPLEMENTO'
    DataSource = dsTabela
    TabOrder = 11
  end
  object DBEdit11: TDBEdit [31]
    Left = 8
    Top = 306
    Width = 134
    Height = 21
    DataField = 'TELEFONE'
    DataSource = dsTabela
    TabOrder = 12
  end
  object DBEdit12: TDBEdit [32]
    Left = 148
    Top = 306
    Width = 101
    Height = 21
    DataField = 'CELULAR'
    DataSource = dsTabela
    TabOrder = 13
  end
  object DBEdit13: TDBEdit [33]
    Left = 256
    Top = 306
    Width = 302
    Height = 21
    DataField = 'EMAIL'
    DataSource = dsTabela
    TabOrder = 14
  end
  object DBEdit14: TDBEdit [34]
    Left = 8
    Top = 132
    Width = 93
    Height = 21
    DataField = 'TIPO_PESSOA'
    DataSource = dsTabela
    TabOrder = 15
  end
  object dbeNomeCidade: TDBEdit [35]
    Left = 72
    Top = 174
    Width = 441
    Height = 21
    DataField = 'NOME_CIDADE'
    DataSource = dsTabela
    Enabled = False
    TabOrder = 16
  end
  object dbeUF: TDBEdit [36]
    Left = 528
    Top = 173
    Width = 30
    Height = 21
    DataField = 'UF_CIDADE'
    DataSource = dsTabela
    Enabled = False
    TabOrder = 17
  end
  object DBEdit17: TDBEdit [37]
    Left = 481
    Top = 50
    Width = 77
    Height = 21
    DataField = 'SITUACAO'
    DataSource = dsTabela
    TabOrder = 18
  end
  object DBEdit18: TDBEdit [38]
    Left = 8
    Top = 349
    Width = 134
    Height = 21
    DataField = 'DATA_NASC'
    DataSource = dsTabela
    TabOrder = 19
  end
  object DBEdit19: TDBEdit [39]
    Left = 148
    Top = 349
    Width = 101
    Height = 21
    DataField = 'LIMITE'
    DataSource = dsTabela
    TabOrder = 20
  end
  object DBEdit20: TDBEdit [40]
    Left = 255
    Top = 349
    Width = 17
    Height = 21
    DataField = 'ESCOLARIDADE'
    DataSource = dsTabela
    TabOrder = 21
  end
  object edtCodPessoa: TEdit [41]
    Left = 8
    Top = 47
    Width = 121
    Height = 21
    TabOrder = 0
    OnExit = edtCodPessoaExit
  end
  inherited dsTabela: TDataSource
    DataSet = dm.qryPessoa
    Left = 432
    Top = 44
  end
end
