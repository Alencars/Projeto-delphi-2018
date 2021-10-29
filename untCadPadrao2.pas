unit untCadPadrao2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB;

type
  TfrmCadPadrao2 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btnNovo: TSpeedButton;
    Panel4: TPanel;
    btnGravar: TSpeedButton;
    Panel6: TPanel;
    btnExcluir: TSpeedButton;
    Panel7: TPanel;
    btnCancelar: TSpeedButton;
    dsTabela: TDataSource;
    procedure dsTabelaStateChange(Sender: TObject);
  private

  public

  end;

var
  frmCadPadrao2: TfrmCadPadrao2;

implementation

{$R *.dfm}

{ TfrmCidade }


procedure TfrmCadPadrao2.dsTabelaStateChange(Sender: TObject);
begin
  if (dsTabela.State in [dsInsert, dsEdit]) then
  begin
    btnNovo.Visible     := False;
    btnGravar.Visible   := True;
    btnExcluir.Visible  := False;
    btnCancelar.Visible := True;
  end
  else
  begin
    btnNovo.Visible     := True;
    btnGravar.Visible   := False;
    btnExcluir.Visible  := True;
    btnCancelar.Visible := False;
  end;
end;

end.
