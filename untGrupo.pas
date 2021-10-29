unit untGrupo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untCadPadrao2, Data.DB, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmGrupo = class(TfrmCadPadrao2)
    Label1: TLabel;
    Label2: TLabel;
    edtCodGrupo: TEdit;
    edtDescGrupo: TEdit;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure edtCodGrupoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGrupo: TfrmGrupo;

implementation

{$R *.dfm}

uses untDM;

procedure TfrmGrupo.btnCancelarClick(Sender: TObject);
begin
  inherited;
  dm.qryGrupo.Cancel;
end;

procedure TfrmGrupo.btnExcluirClick(Sender: TObject);
begin
  inherited;
  dm.qryGrupo.Delete;
end;

procedure TfrmGrupo.btnGravarClick(Sender: TObject);
begin
  inherited;

   if (edtCodGrupo.Text = '') then
  begin
    ShowMessage('Informe o código!');
    edtCodGrupo.SetFocus;
    exit;
  end;
  if (edtDescGrupo.Text = '') then
  begin
    ShowMessage('Informe a descrição!');
    edtDescGrupo.SetFocus;
    exit;
  end;

  if (dm.qryGrupo.State = dsInsert) then
  begin
    dm.qryUltimo.Close;
    dm.qryUltimo.SQL.Clear;
    dm.qryUltimo.SQL.Add('SELECT MAX(COD_GRUPO) AS ULTIMO FROM GRUPO');
    dm.qryUltimo.Open;

    dm.qryGrupoCOD_GRUPO.AsInteger := dm.qryUltimo.FieldByName('ULTIMO').AsInteger + 1;
    edtCodGrupo.Text := dm.qryGrupoCOD_GRUPO.AsString;

  end;

  dm.qryGrupo.Post;
end;

procedure TfrmGrupo.btnNovoClick(Sender: TObject);
begin
  inherited;
  dm.qryGrupo.Insert;
end;

procedure TfrmGrupo.edtCodGrupoExit(Sender: TObject);
begin
  inherited;
   if (edtCodGrupo.Text <> '') then
  begin
    dm.qryGrupo.Close;
    dm.qryGrupo.ParamByName('P1').AsString := edtCodGrupo.Text;
    dm.qryGrupo.Open;

    if(dm.qryGrupo.IsEmpty) then
    begin
      ShowMessage('Código não encontrado');
      edtCodGrupo.SetFocus;
      edtCodGrupo.Clear;
      exit;
    end;
  end;
end;

procedure TfrmGrupo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dm.qryGrupo.Close;
end;

procedure TfrmGrupo.FormShow(Sender: TObject);
begin
  inherited;
  dm.qryGrupo.Open;
end;

end.
