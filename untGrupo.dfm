inherited frmGrupo: TfrmGrupo
  Caption = 'Cadastro de Grupo'
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 24
    Top = 56
    Width = 63
    Height = 13
    Caption = 'COD_GRUPO'
  end
  object Label2: TLabel [1]
    Left = 24
    Top = 102
    Width = 100
    Height = 13
    Caption = 'DESCRICAO_GRUPO'
  end
  inherited Panel2: TPanel
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
  object edtCodGrupo: TEdit [4]
    Left = 24
    Top = 75
    Width = 121
    Height = 21
    TabOrder = 2
    OnExit = edtCodGrupoExit
  end
  object edtDescGrupo: TEdit [5]
    Left = 24
    Top = 121
    Width = 121
    Height = 21
    TabOrder = 3
  end
  inherited dsTabela: TDataSource
    DataSet = dm.qryGrupo
    Left = 416
    Top = 64
  end
end
