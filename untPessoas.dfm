inherited frmPessoas: TfrmPessoas
  Caption = 'frmPessoas'
  ClientHeight = 415
  ClientWidth = 540
  ExplicitWidth = 556
  ExplicitHeight = 453
  PixelsPerInch = 96
  TextHeight = 13
  object Código: TLabel [0]
    Left = 18
    Top = 37
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Nome: TLabel [1]
    Left = 18
    Top = 83
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label3: TLabel [2]
    Left = 274
    Top = 83
    Width = 48
    Height = 13
    Caption = 'CPF/CNPJ'
  end
  object Label4: TLabel [3]
    Left = 401
    Top = 83
    Width = 28
    Height = 13
    Caption = 'RG/IE'
  end
  object Label5: TLabel [4]
    Left = 18
    Top = 129
    Width = 95
    Height = 13
    Caption = 'Data de nascimento'
  end
  object Label6: TLabel [5]
    Left = 18
    Top = 172
    Width = 24
    Height = 13
    Caption = 'Email'
  end
  object Label7: TLabel [6]
    Left = 274
    Top = 172
    Width = 42
    Height = 13
    Caption = 'Telefone'
  end
  object Label8: TLabel [7]
    Left = 401
    Top = 172
    Width = 33
    Height = 13
    Caption = 'Celular'
  end
  object Label9: TLabel [8]
    Left = 18
    Top = 218
    Width = 46
    Height = 13
    Caption = 'Id Cidade'
  end
  object Label10: TLabel [9]
    Left = 145
    Top = 218
    Width = 28
    Height = 13
    Caption = 'Bairro'
  end
  object Label11: TLabel [10]
    Left = 274
    Top = 218
    Width = 55
    Height = 13
    Caption = 'Logradouro'
  end
  object Label12: TLabel [11]
    Left = 401
    Top = 218
    Width = 37
    Height = 13
    Caption = 'Numero'
  end
  object Label13: TLabel [12]
    Left = 18
    Top = 260
    Width = 65
    Height = 13
    Caption = 'Complemento'
  end
  object Label14: TLabel [13]
    Left = 145
    Top = 260
    Width = 19
    Height = 13
    Caption = 'CEP'
  end
  object Label15: TLabel [14]
    Left = 18
    Top = 306
    Width = 60
    Height = 13
    Caption = 'Escolaridade'
  end
  object Label16: TLabel [15]
    Left = 145
    Top = 306
    Width = 27
    Height = 13
    Caption = 'Limite'
  end
  object Label17: TLabel [16]
    Left = 272
    Top = 306
    Width = 41
    Height = 13
    Caption = 'Situa'#231#227'o'
  end
  inherited Panel1: TPanel
    Width = 540
    Caption = 'Cadastro de Pessoas'
  end
  inherited Panel2: TPanel
    Top = 367
    Width = 540
    inherited Panel3: TPanel
      inherited btnNovo: TSpeedButton
        OnClick = btnNovoClick
      end
    end
    inherited Panel4: TPanel
      inherited btnIncluir: TSpeedButton
        OnClick = btnIncluirClick
      end
    end
  end
  object edtCodigo: TEdit
    Left = 18
    Top = 56
    Width = 95
    Height = 21
    TabOrder = 2
    Text = 'edtCodigo'
  end
  object edtNomePessoa: TEdit
    Left = 18
    Top = 102
    Width = 250
    Height = 21
    TabOrder = 3
    Text = 'edtNomePessoa'
  end
  object edtCpfCnpj: TEdit
    Left = 274
    Top = 102
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'edtCpfCnpj'
  end
  object edtRgIe: TEdit
    Left = 401
    Top = 102
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'edtRgIe'
  end
  object edtIdCidade: TEdit
    Left = 18
    Top = 233
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'edtIdCidade'
  end
  object edtLogradouro: TEdit
    Left = 274
    Top = 233
    Width = 121
    Height = 21
    TabOrder = 7
    Text = 'edtLogradouro'
  end
  object edtNumeroLog: TEdit
    Left = 401
    Top = 233
    Width = 121
    Height = 21
    TabOrder = 8
    Text = 'edtNumeroLog'
  end
  object edtBairro: TEdit
    Left = 145
    Top = 233
    Width = 121
    Height = 21
    TabOrder = 9
    Text = 'edtBairro'
  end
  object edtCep: TEdit
    Left = 145
    Top = 279
    Width = 121
    Height = 21
    TabOrder = 10
    Text = 'edtCep'
  end
  object edtComplemento: TEdit
    Left = 18
    Top = 279
    Width = 121
    Height = 21
    TabOrder = 11
    Text = 'edtComplemento'
  end
  object edtTelefone: TEdit
    Left = 274
    Top = 191
    Width = 121
    Height = 21
    TabOrder = 12
    Text = 'edtTelefone'
  end
  object edtCelular: TEdit
    Left = 401
    Top = 191
    Width = 121
    Height = 21
    TabOrder = 13
    Text = 'edtCelular'
  end
  object edtEmail: TEdit
    Left = 18
    Top = 191
    Width = 250
    Height = 21
    TabOrder = 14
    Text = 'edtEmail'
  end
  object edtDataNasc: TEdit
    Left = 18
    Top = 145
    Width = 121
    Height = 21
    TabOrder = 15
    Text = 'edtDataNasc'
  end
  object edtLimite: TEdit
    Left = 145
    Top = 325
    Width = 121
    Height = 21
    TabOrder = 16
    Text = 'edtLimite'
  end
  object edtEscolaridade: TEdit
    Left = 18
    Top = 325
    Width = 121
    Height = 21
    TabOrder = 17
    Text = 'edtEscolaridade'
  end
  object edtSituacao: TEdit
    Left = 272
    Top = 325
    Width = 121
    Height = 21
    TabOrder = 18
    Text = 'edtSituacao'
  end
end
