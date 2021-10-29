program Projeto2018;

uses
  Vcl.Forms,
  untPrincipal in 'untPrincipal.pas' {frmPrincipal},
  untCadPadrao2 in 'untCadPadrao2.pas' {frmCadPadrao2},
  untDM in 'untDM.pas' {dm: TDataModule},
  untCidade in 'untCidade.pas' {frmCidade},
  untCadPadrao in 'untCadPadrao.pas' {frmCadPadrao},
  untPessoa in 'untPessoa.pas' {frmPessoa},
  untProduto in 'untProduto.pas' {frmProduto},
  untPesqGrupo in 'untPesqGrupo.pas' {frmPesqGrupo},
  untPesqProduto in 'untPesqProduto.pas' {frmPesqProduto},
  untCompra in 'untCompra.pas' {frmCompra};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmCadPadrao2, frmCadPadrao2);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmCidade, frmCidade);
  Application.CreateForm(TfrmCadPadrao, frmCadPadrao);
  Application.CreateForm(TfrmPessoa, frmPessoa);
  Application.CreateForm(TfrmProduto, frmProduto);
  Application.CreateForm(TfrmPesqGrupo, frmPesqGrupo);
  Application.CreateForm(TfrmPesqProduto, frmPesqProduto);
  Application.CreateForm(TfrmCompra, frmCompra);
  Application.Run;
end.
