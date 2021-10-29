unit untPesqGrupo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls;

type
  TfrmPesqGrupo = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    dsPesquisa: TDataSource;
    qryPesquisa: TFDQuery;
    edtPesquisa: TEdit;
    Label1: TLabel;
    qryPesquisaCOD_GRUPO: TIntegerField;
    qryPesquisaDESCRICAO_GRUPO: TStringField;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure edtPesquisaChange(Sender: TObject);
  private
    { Private declarations }
  public
    vRetorno: Integer;
  end;

var
  frmPesqGrupo: TfrmPesqGrupo;

implementation

{$R *.dfm}

uses untDM;

procedure TfrmPesqGrupo.DBGrid1DblClick(Sender: TObject);
begin
  if (qryPesquisaCOD_GRUPO.AsInteger > 0) then
  begin
    vRetorno := qryPesquisaCOD_GRUPO.AsInteger;
    Close;
  end;
end;

procedure TfrmPesqGrupo.edtPesquisaChange(Sender: TObject);
begin
  if (edtPesquisa.Text <> '') then
  begin
    qryPesquisa.Close;
    qryPesquisa.SQL.Clear;
    qryPesquisa.SQL.Add('SELECT * FROM GRUPO');
    qryPesquisa.SQL.Add('WHERE DESCRICAO_GRUPO LIKE :P1');
    qryPesquisa.ParamByName('P1').AsString := '%' + edtPesquisa.Text + '%';
    qryPesquisa.Open;
  end
  else
  begin
    qryPesquisa.Close;
    qryPesquisa.SQL.Clear;
    qryPesquisa.SQL.Add('SELECT * FROM GRUPO');
    qryPesquisa.Open;
  end;
end;

procedure TfrmPesqGrupo.FormShow(Sender: TObject);
begin
  qryPesquisa.Close;
  qryPesquisa.Open;

  edtPesquisa.SetFocus;
  vRetorno := 0;
end;

end.
