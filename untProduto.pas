unit untProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untCadPadrao2, Data.DB, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmProduto = class(TfrmCadPadrao2)
    Label1: TLabel;
    Label2: TLabel;
    dbeDescricao: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    dbeGrupo: TDBEdit;
    Label7: TLabel;
    dbeDescGrupo: TDBEdit;
    edtCodigo: TEdit;
    btnPesqProduto: TSpeedButton;
    btnPesqGrupo: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure edtCodigoExit(Sender: TObject);
    procedure dbeGrupoExit(Sender: TObject);
    procedure btnPesqProdutoClick(Sender: TObject);
    procedure btnPesqGrupoClick(Sender: TObject);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbeGrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProduto: TfrmProduto;

implementation

{$R *.dfm}

uses untDM, untPesqProduto, untPesqGrupo;

procedure TfrmProduto.btnCancelarClick(Sender: TObject);
begin
  dm.qryProduto.Cancel;
  edtCodigo.Enabled := True;
end;

procedure TfrmProduto.btnExcluirClick(Sender: TObject);
begin
 if MessageDlg('Deseja excluir o registro?',
                    mtConfirmation, [mbYes, mbNo],0) = mrYes then
 begin
   dm.qryProduto.Delete;
   edtCodigo.Clear;
   edtCodigo.SetFocus;
 end;
end;

procedure TfrmProduto.btnGravarClick(Sender: TObject);
begin
  // Valida os campos obrigatórios
  if (dbeDescricao.Text = '') then
  begin
    ShowMessage('Informe a Descrição!');
    dbeDescricao.SetFocus;
    exit;
  end;

  if (dbeGrupo.Text = '') then
  begin
    ShowMessage('Informe o grupo!');
    dbeGrupo.SetFocus;
    exit;
  end;

  // só busca o próximo registro, se estiver incluindo
  if (dm.qryProduto.State = dsInsert) then
  begin
    dm.qryUltimo.Close;
    dm.qryUltimo.SQL.Clear;
    dm.qryUltimo.SQL.Add('SELECT MAX(COD_PRODUTO) AS ULTIMO FROM PRODUTO');
    dm.qryUltimo.Open;

    dm.qryProdutoCOD_PRODUTO.AsInteger :=
                        dm.qryUltimo.FieldByName('ULTIMO').AsInteger + 1;

    edtCodigo.Text := dm.qryProdutoCOD_PRODUTO.AsString;
  end;

  dm.qryProduto.Post;

  edtCodigo.Enabled := True;

end;

procedure TfrmProduto.btnNovoClick(Sender: TObject);
begin
  edtCodigo.Clear; //
  edtCodigo.Enabled := False;
  dbeDescricao.SetFocus;
  dm.qryProduto.Insert; // coloca em inclusão
end;

procedure TfrmProduto.btnPesqProdutoClick(Sender: TObject);
begin
  try
    frmPesqProduto.ShowModal;
  finally
    if (frmPesqProduto.vRetorno > 0) then
    begin
      edtCodigo.SetFocus;
      edtCodigo.Text := IntToStr(frmPesqProduto.vRetorno);
      edtCodigoExit(Sender);
    end;
  end;
end;

procedure TfrmProduto.dbeGrupoExit(Sender: TObject);
begin
  if (dbeGrupo.Text <> '') then
  begin
    dm.qryBusca.Close;
    dm.qryBusca.SQL.Clear;
    dm.qryBusca.SQL.Add('SELECT * FROM GRUPO');
    dm.qryBusca.SQL.Add('WHERE COD_GRUPO = :P1');
    dm.qryBusca.ParamByName('P1').AsString := dbeGrupo.Text;
    dm.qryBusca.Open;

    if (dm.qryBusca.IsEmpty) then
    begin
      ShowMessage('Grupo não encontrado');
      dbeGrupo.Text := '';
      dbeGrupo.SetFocus;
      exit;
    end
    else
    begin
      dbeDescGrupo.Text :=
              dm.qryBusca.FieldByName('DESCRICAO_GRUPO').AsString;
    end;
  end;

end;

procedure TfrmProduto.dbeGrupoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key = VK_F3) then
 begin
   Key := 0;
   btnPesqGrupoClick(Sender);
 end;
end;

procedure TfrmProduto.edtCodigoExit(Sender: TObject);
begin
  if (edtCodigo.Text <> '') then
  begin
    dm.qryProduto.Close;
    dm.qryProduto.ParamByName('P1').AsString := edtCodigo.Text;
    dm.qryProduto.Open;

    if (dm.qryProduto.IsEmpty) then
    begin
      ShowMessage('Código não encontrado');
      edtCodigo.SetFocus;
      edtCodigo.Clear;
      exit;
    end;
  end;
end;

procedure TfrmProduto.edtCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_F3) then
  begin
    Key := 0;
    btnPesqProdutoClick(Sender);
  end;

end;

procedure TfrmProduto.FormShow(Sender: TObject);
begin
  dm.qryProduto.Open;
end;

procedure TfrmProduto.btnPesqGrupoClick(Sender: TObject);
begin
  if (dm.qryProduto.IsEmpty) then
  begin
    ShowMessage('Nenhum produto informado.');
    edtCodigo.SetFocus;
    exit;
  end;

  try
    frmPesqGrupo.ShowModal;
  finally
    if (frmPesqGrupo.vRetorno > 0) then
    begin
      dm.qryProduto.Edit;

      dbeGrupo.Text := IntToStr(frmPesqGrupo.vRetorno);
      dbeGrupoExit(Sender);

    end;

  end;

end;

end.
