unit untPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untCadPadrao2, Data.DB, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmPessoa = class(TfrmCadPadrao2)
    Label1: TLabel;
    Label2: TLabel;
    dbeNome: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    dbeCidade: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    dbeNomeCidade: TDBEdit;
    Label16: TLabel;
    dbeUF: TDBEdit;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    Label20: TLabel;
    DBEdit20: TDBEdit;
    edtCodPessoa: TEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCodPessoaExit(Sender: TObject);
    procedure dbeCidadeExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPessoa: TfrmPessoa;

implementation

{$R *.dfm}

uses untDM;

procedure TfrmPessoa.btnCancelarClick(Sender: TObject);
begin
  dm.qryPessoa.Cancel;
end;

procedure TfrmPessoa.btnExcluirClick(Sender: TObject);
begin
  dm.qryPessoa.Delete;
end;

procedure TfrmPessoa.btnGravarClick(Sender: TObject);
begin
  if (dbeNome.Text = '') then
  begin
    ShowMessage('Informe o nome!');
    dbeNome.SetFocus;
    exit;
  end;

  if (dbeCidade.Text = '') then
  begin
    ShowMessage('Informe a cidade!');
    dbeCidade.SetFocus;
    exit;
  end;

  // só busca o próximo registro, se estiver incluindo
  if (dm.qryPessoa.State = dsInsert) then
  begin
    dm.qryUltimo.Close;
    dm.qryUltimo.SQL.Clear;
    dm.qryUltimo.SQL.Add('SELECT MAX(COD_PESSOA) AS ULTIMO FROM PESSOA');
    dm.qryUltimo.Open;

    dm.qryPessoaCOD_PESSOA.AsInteger :=
                        dm.qryUltimo.FieldByName('ULTIMO').AsInteger + 1;

    edtCodPessoa.Text := dm.qryPessoaCOD_PESSOA.AsString;
  end;

  dm.qryPessoa.Post;
end;

procedure TfrmPessoa.btnNovoClick(Sender: TObject);
begin
  edtCodPessoa.Clear;
  dbeNome.SetFocus;
  dm.qryPessoa.Insert;
end;

procedure TfrmPessoa.dbeCidadeExit(Sender: TObject);
begin
  if (dbeCidade.Text <> '') then
  begin
    dm.qryBusca.Close;
    dm.qryBusca.SQL.Clear;
    dm.qryBusca.SQL.Add('SELECT * FROM CIDADE');
    dm.qryBusca.SQL.Add('WHERE COD_CIDADE = :P1');
    dm.qryBusca.ParamByName('P1').AsString := dbeCidade.Text;
    dm.qryBusca.Open;

    if (dm.qryBusca.IsEmpty) then
    begin
      ShowMessage('Cidade não encontrada');
      dbeCidade.Text := '';
      dbeCidade.SetFocus;
      exit;
    end
    else
    begin
      dbeNomeCidade.Text :=
              dm.qryBusca.FieldByName('NOME_CIDADE').AsString;
      dbeUF.Text := dm.qryBusca.FieldByName('UF_CIDADE').AsString;
    end;
  end;

end;

procedure TfrmPessoa.edtCodPessoaExit(Sender: TObject);
begin
  if (edtCodPessoa.Text <> '') then
  begin
    dm.qryPessoa.Close;
    dm.qryPessoa.ParamByName('P1').AsString := edtCodPessoa.Text;
    dm.qryPessoa.Open;

    if (dm.qryPessoa.IsEmpty) then
    begin
      ShowMessage('Código não encontrado');
      edtCodPessoa.SetFocus;
      edtCodPessoa.Clear;
      exit;
    end;
  end;
end;

procedure TfrmPessoa.FormShow(Sender: TObject);
begin
  dm.qryPessoa.Open;
end;

end.
