inherited frmCidade: TfrmCidade
  Caption = 'Cadastro de Cidade'
  ExplicitWidth = 399
  ExplicitHeight = 247
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 9
    Top = 41
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 98
    Width = 36
    Height = 13
    Caption = 'Nome *'
  end
  object Label3: TLabel [2]
    Left = 312
    Top = 98
    Width = 22
    Height = 13
    Caption = 'UF *'
  end
  inherited Panel1: TPanel
    Caption = 'Cidade'
  end
  inherited Panel2: TPanel
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
    inherited Panel5: TPanel
      inherited btnAlterar: TSpeedButton
        OnClick = btnAlterarClick
      end
    end
    inherited Panel6: TPanel
      inherited btnExcluir: TSpeedButton
        OnClick = btnExcluirClick
        ExplicitLeft = 0
      end
    end
  end
  object edtCodigo: TEdit
    Left = 8
    Top = 56
    Width = 89
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnExit = edtCodigoExit
  end
  object edtNomeCidade: TEdit
    Left = 8
    Top = 112
    Width = 298
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object cbxUF: TComboBox
    Left = 312
    Top = 112
    Width = 63
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    Items.Strings = (
      'AC'
      'AL'
      'AP'
      'AM'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MT'
      'MS'
      'MG'
      'PA'
      'PB'
      'PR'
      'PE'
      'PI'
      'RJ'
      'RN'
      'RS'
      'RO'
      'RR'
      'SC'
      'SP'
      'SE'
      'TO')
  end
end
