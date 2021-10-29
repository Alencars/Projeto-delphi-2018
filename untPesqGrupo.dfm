object frmPesqGrupo: TfrmPesqGrupo
  Left = 0
  Top = 0
  Caption = 'Pesquisa de Grupo'
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
        FieldName = 'COD_GRUPO'
        Title.Caption = 'C'#243'digo'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO_GRUPO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 249
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
      'SELECT * FROM GRUPO')
    Left = 48
    Top = 144
    object qryPesquisaCOD_GRUPO: TIntegerField
      FieldName = 'COD_GRUPO'
      Origin = 'COD_GRUPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPesquisaDESCRICAO_GRUPO: TStringField
      FieldName = 'DESCRICAO_GRUPO'
      Origin = 'DESCRICAO_GRUPO'
      Size = 60
    end
  end
end
