unit untPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untCadPadrao, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TfrmPessoas = class(TfrmCadPadrao)
    edtCodigo: TEdit;
    edtNomePessoa: TEdit;
    edtCpfCnpj: TEdit;
    edtRgIe: TEdit;
    edtIdCidade: TEdit;
    edtLogradouro: TEdit;
    edtNumeroLog: TEdit;
    edtBairro: TEdit;
    edtCep: TEdit;
    edtComplemento: TEdit;
    edtTelefone: TEdit;
    edtCelular: TEdit;
    edtEmail: TEdit;
    edtDataNasc: TEdit;
    edtLimite: TEdit;
    edtEscolaridade: TEdit;
    edtSituacao: TEdit;
    Código: TLabel;
    Nome: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    procedure btnNovoClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPessoas: TfrmPessoas;

implementation

{$R *.dfm}

uses untDM;

procedure TfrmPessoas.btnIncluirClick(Sender: TObject);
begin
  inherited;
  if (edtNomePessoa.Text = '') then
  begin
    ShowMessage('Informe o nome da cidade');
    edtNomePessoa.SetFocus;
    exit;
  end;

  if (edtCpfCnpj.Text = '') then
  begin
    ShowMessage('Informe o CPF/CNPJ');
    edtCpfCnpj.SetFocus;
    exit;
  end;

  if (edtRgIe.Text = '') then
  begin
    ShowMessage('Informe o RG/IE');
    edtCpfCnpj.SetFocus;
    exit;
  end;

  if (edtDataNasc.Text = '') then
  begin
    ShowMessage('Informe a data de nascimento');
    edtDataNasc.SetFocus;
    exit;
  end;

  if (edtEmail.Text = '') then
  begin
    ShowMessage('Informe o Email');
    edtEmail.SetFocus;
    exit;
  end;

  if (edtTelefone.Text = '') then
  begin
    ShowMessage('Informe o telefone');
    edtTelefone.SetFocus;
    exit;
  end;

  if (edtCelular.Text = '') then
  begin
    ShowMessage('Informe o celular');
    edtCelular.SetFocus;
    exit;
  end;

  if (edtIdCidade.Text = '') then
  begin
    ShowMessage('Informe o ID da cidade');
    edtIdCidade.SetFocus;
    exit;
  end;

  if (edtBairro.Text = '') then
  begin
    ShowMessage('Informe o bairro');
    edtBairro.SetFocus;
    exit;
  end;

  if (edtLogradouro.Text = '') then
  begin
    ShowMessage('Informe o logradouro');
    edtLogradouro.SetFocus;
    exit;
  end;

  if (edtNumeroLog.Text = '') then
  begin
    ShowMessage('Informe o numero do logradouro');
    edtNumeroLog.SetFocus;
    exit;
  end;

  if (edtComplemento.Text = '') then
  begin
    ShowMessage('Informe o complemento');
    edtComplemento.SetFocus;
    exit;
  end;

  if (edtCep.Text = '') then
  begin
    ShowMessage('Informe o CEP');
    edtCep.SetFocus;
    exit;
  end;

  if (edtEscolaridade.Text = '') then
  begin
    ShowMessage('Informe a escolaridade');
    edtEscolaridade.SetFocus;
    exit;
  end;

  if (edtLimite.Text = '') then
  begin
    ShowMessage('Informe o limite');
    edtLimite.SetFocus;
    exit;
  end;

  if (edtSituacao.Text = '') then
  begin
    ShowMessage('Informe a situação');
    edtSituacao.SetFocus;
    exit;
  end;

  dm.qryUltimo.Close;
  dm.qryUltimo.SQL.Clear;
  dm.qryUltimo.SQL.Add('SELECT MAX(COD_PESSOA) AS ULTIMO FROM PESSOA');
  dm.qryUltimo.Open;

  edtCodigo.Text := IntToStr(dm.qryUltimo.FieldByName('ULTIMO').AsInteger + 1);

  dm.qryPessoa.Close;
  dm.qryPessoa.SQL.Clear;
  dm.qryPessoa.SQL.Add('INSERT INTO PESSOA(COD_PESSOA, NOME_PESSOA, CPF_CNPJ, RG_IE,');
  dm.qryPessoa.SQL.Add('ID_CIDADE, LOGRADOURO, NUMERO_LOGRAD, BAIRRO, CEP, COMPLEMENTO,');
  dm.qryPessoa.SQL.Add('TELEFONE, CELULAR, EMAIL, DATA_NASC, LIMITE, ESCOLARIEDADE, SITUACAO)');
  dm.qryPessoa.SQL.Add('VALUES(:P1, :P2, :P3, :P4, :P5, :P6, :P7, :P8, :P9, :P10,');
  dm.qryPessoa.SQL.Add(':P11, ')

end;

procedure TfrmPessoas.btnNovoClick(Sender: TObject);
begin
  inherited;

   botoesNovo;

  edtCodigo.Clear;
  edtCodigo.Enabled := False;

  edtNomePessoa.SetFocus;
end;

end.
