unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Cidade1: TMenuItem;
    Pessoa1: TMenuItem;
    Grupo1: TMenuItem;
    Produto1: TMenuItem;
    procedure Cidade1Click(Sender: TObject);
    procedure Pessoa1Click(Sender: TObject);
    procedure Produto1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses untCidade, untPessoa, untProduto;


procedure TfrmPrincipal.Cidade1Click(Sender: TObject);
begin
  frmCidade.ShowModal;
end;

procedure TfrmPrincipal.Pessoa1Click(Sender: TObject);
begin
  frmPessoa.ShowModal;
end;

procedure TfrmPrincipal.Produto1Click(Sender: TObject);
begin
  frmProduto.ShowModal;
end;

end.
