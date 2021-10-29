unit untCadPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmCadPadrao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btnNovo: TSpeedButton;
    Panel4: TPanel;
    btnIncluir: TSpeedButton;
    Panel5: TPanel;
    btnAlterar: TSpeedButton;
    Panel6: TPanel;
    btnExcluir: TSpeedButton;
    Panel7: TPanel;
    btnCancelar: TSpeedButton;
  private

  public
    procedure botoesVazio;
    procedure botoesNovo;
    procedure botoesRegistro;
  end;

var
  frmCadPadrao: TfrmCadPadrao;

implementation

{$R *.dfm}

{ TfrmCidade }

procedure TfrmCadPadrao.botoesNovo;
begin
  btnNovo.Visible     := False;
  btnIncluir.Visible  := True;
  btnAlterar.Visible  := False;
  btnExcluir.Visible  := False;
  btnCancelar.Visible := True;
end;

procedure TfrmCadPadrao.botoesRegistro;
begin
  btnNovo.Visible     := True;
  btnIncluir.Visible  := False;
  btnAlterar.Visible  := True;
  btnExcluir.Visible  := True;
  btnCancelar.Visible := False;
end;

procedure TfrmCadPadrao.botoesVazio;
begin
  btnNovo.Visible     := True;
  btnIncluir.Visible  := False;
  btnAlterar.Visible  := False;
  btnExcluir.Visible  := False;
  btnCancelar.Visible := False;
end;


end.
