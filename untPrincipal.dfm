object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Projeto 2018  - Unipar - Cianorte'
  ClientHeight = 413
  ClientWidth = 544
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 112
    Top = 48
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Cidade1: TMenuItem
        Caption = 'Cidade'
        OnClick = Cidade1Click
      end
      object Pessoa1: TMenuItem
        Caption = 'Pessoa'
        OnClick = Pessoa1Click
      end
      object Grupo1: TMenuItem
        Caption = 'Grupo'
      end
      object Produto1: TMenuItem
        Caption = 'Produto'
        OnClick = Produto1Click
      end
    end
  end
end
