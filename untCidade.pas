unit untCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untCadPadrao, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TfrmCidade = class(TfrmCadPadrao)
    edtCodigo: TEdit;
    edtNomeCidade: TEdit;
    cbxUF: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure btnNovoClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure edtCodigoExit(Sender: TObject);
  private
    procedure limpar;
  public
    { Public declarations }
  end;

var
  frmCidade: TfrmCidade;

implementation

{$R *.dfm}

uses untDM;

procedure TfrmCidade.btnAlterarClick(Sender: TObject);
begin
  if (edtCodigo.Text = '') then
  begin
    ShowMessage('Nenhuma cidade selecionada');
    edtCodigo.SetFocus;
    exit;
  end;

  dm.qryCidade.Close;
  dm.qryCidade.SQL.Clear;
  dm.qryCidade.SQL.Add('UPDATE CIDADE SET NOME_CIDADE = :P2, UF_CIDADE = :P3');
  dm.qryCidade.SQL.Add('WHERE COD_CIDADE = :P1');
  dm.qryCidade.ParamByName('P1').AsString := edtCodigo.Text;
  dm.qryCidade.ParamByName('P2').AsString := edtNomeCidade.Text;
  dm.qryCidade.ParamByName('P3').AsString := cbxUF.Text;
  dm.qryCidade.ExecSQL;
end;

procedure TfrmCidade.btnExcluirClick(Sender: TObject);
begin
  if (edtCodigo.Text = '') then
  begin
    ShowMessage('Nenhuma cidade selecionada');
    edtCodigo.SetFocus;
    exit;
  end;

  if (MessageDlg('Deseja excluir a cidade?', mtConfirmation, [mbYes, mbNo],0) = mrYes) then
  begin
    dm.qryCidade.Close;
    dm.qryCidade.SQL.Clear;
    dm.qryCidade.SQL.Add('DELETE FROM CIDADE');
    dm.qryCidade.SQL.Add('WHERE COD_CIDADE = :P1');
    dm.qryCidade.ParamByName('P1').AsString := edtCodigo.Text;
    dm.qryCidade.ExecSQL;

    limpar;
  end;
end;

procedure TfrmCidade.btnIncluirClick(Sender: TObject);
begin
  if (edtNomeCidade.Text = '') then
  begin
    ShowMessage('Informe o nome da cidade');
    edtNomeCidade.SetFocus;
    exit;
  end;

  if (cbxUF.ItemIndex < 0) then
  begin
    ShowMessage('Informe a UF');
    cbxUF.SetFocus;
    exit;
  end;

  dm.qryUltimo.Close;
  dm.qryUltimo.SQL.Clear;
  dm.qryUltimo.SQL.Add('SELECT MAX(COD_CIDADE) AS ULTIMO FROM CIDADE');
  dm.qryUltimo.Open;

  edtCodigo.Text :=
             IntToStr(dm.qryUltimo.FieldByName('ULTIMO').AsInteger + 1);

  dm.qryCidade.Close;
  dm.qryCidade.SQL.Clear;
  dm.qryCidade.SQL.Add('INSERT INTO CIDADE(COD_CIDADE, NOME_CIDADE, UF_CIDADE)');
  dm.qryCidade.SQL.Add('VALUES(:P1, :P2, :P3)');
  dm.qryCidade.ParamByName('P1').AsString  := edtCodigo.Text;
  dm.qryCidade.ParamByName('P2').AsString  := edtNomeCidade.Text;
  dm.qryCidade.ParamByName('P3').AsString  := cbxUF.Text;
  dm.qryCidade.ExecSQL;

  botoesRegistro;
  edtCodigo.Enabled := True;
end;

procedure TfrmCidade.btnNovoClick(Sender: TObject);
begin
  limpar;
  botoesNovo;

  edtCodigo.Enabled := False;

  edtNomeCidade.SetFocus;
end;

procedure TfrmCidade.edtCodigoExit(Sender: TObject);
begin
  if (edtCodigo.Text <> '') then
  begin
    dm.qryCidade.Close;
    dm.qryCidade.SQL.Clear;
    dm.qryCidade.SQL.Add('SELECT * FROM CIDADE');
    dm.qryCidade.SQL.Add('WHERE COD_CIDADE = :P1');
    dm.qryCidade.ParamByName('P1').AsString := edtCodigo.Text;
    dm.qryCidade.Open;

    if (dm.qryCidade.IsEmpty) then
    begin
      ShowMessage('Código não encontrado');
      edtCodigo.SetFocus;
      limpar;
    end
    else
    begin
      edtNomeCidade.Text := dm.qryCidade.FieldByName('NOME_CIDADE').AsString;
      cbxUF.Text         := dm.qryCidade.FieldByName('UF_CIDADE').AsString;
    end;
  end;
end;

procedure TfrmCidade.limpar;
begin
  edtCodigo.Clear;
  edtNomeCidade.Clear;
  cbxUF.ItemIndex := -1;
end;

end.
