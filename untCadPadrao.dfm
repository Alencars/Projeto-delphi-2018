object frmCadPadrao: TfrmCadPadrao
  Left = 0
  Top = 0
  Caption = 'Cadastro'
  ClientHeight = 209
  ClientWidth = 383
  Color = 10987431
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
    Width = 383
    Height = 31
    Align = alTop
    Caption = 'Cadastro Padr'#227'o'
    Color = 16384
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 161
    Width = 383
    Height = 48
    Align = alBottom
    Color = 4539717
    ParentBackground = False
    TabOrder = 1
    object Panel3: TPanel
      Left = 4
      Top = 3
      Width = 66
      Height = 41
      Color = 8421440
      ParentBackground = False
      TabOrder = 0
      object btnNovo: TSpeedButton
        Left = 1
        Top = 1
        Width = 64
        Height = 39
        Align = alClient
        Caption = '&Novo'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 24
        ExplicitTop = 8
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
    object Panel4: TPanel
      Left = 73
      Top = 3
      Width = 66
      Height = 41
      Color = 8404992
      ParentBackground = False
      TabOrder = 1
      object btnIncluir: TSpeedButton
        Left = 1
        Top = 1
        Width = 64
        Height = 39
        Align = alClient
        Caption = '&Incluir'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 24
        ExplicitTop = 8
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
    object Panel5: TPanel
      Left = 142
      Top = 3
      Width = 66
      Height = 41
      Color = 4194368
      ParentBackground = False
      TabOrder = 2
      object btnAlterar: TSpeedButton
        Left = 1
        Top = 1
        Width = 64
        Height = 39
        Align = alClient
        Caption = '&Alterar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = -1
        ExplicitWidth = 75
      end
    end
    object Panel6: TPanel
      Left = 212
      Top = 3
      Width = 66
      Height = 41
      Color = 176
      ParentBackground = False
      TabOrder = 3
      object btnExcluir: TSpeedButton
        Left = 1
        Top = 1
        Width = 64
        Height = 39
        Align = alClient
        Caption = '&Excluir'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 2
      end
    end
    object Panel7: TPanel
      Left = 281
      Top = 3
      Width = 66
      Height = 41
      Color = clMaroon
      ParentBackground = False
      TabOrder = 4
      object btnCancelar: TSpeedButton
        Left = 1
        Top = 1
        Width = 64
        Height = 39
        Align = alClient
        Caption = '&Cancelar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = -7
        ExplicitWidth = 75
      end
    end
  end
end
