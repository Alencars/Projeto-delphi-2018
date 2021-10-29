unit untPesqProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls;

type
  TfrmPesqProduto = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    dsPesquisa: TDataSource;
    qryPesquisa: TFDQuery;
    edtPesquisa: TEdit;
    Label1: TLabel;
    qryPesquisaCOD_PRODUTO: TIntegerField;
    qryPesquisaDESCRICAO_PRODUTO: TStringField;
    qryPesquisaPRECO_CUSTO: TBCDField;
    qryPesquisaPRECO_VENDA: TBCDField;
    qryPesquisaSALDO_PRODUTO: TBCDField;
    qryPesquisaID_GRUPO: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure edtPesquisaChange(Sender: TObject);
  private
    { Private declarations }
  public
    vRetorno: Integer;
  end;

var
  frmPesqProduto: TfrmPesqProduto;

implementation

{$R *.dfm}

uses untDM;

procedure TfrmPesqProduto.DBGrid1DblClick(Sender: TObject);
begin
  if (qryPesquisaCOD_PRODUTO.AsInteger > 0) then
  begin
    vRetorno    := qryPesquisaCOD_PRODUTO.AsInteger;
    Close;
  end;
end;

procedure TfrmPesqProduto.edtPesquisaChange(Sender: TObject);
begin
  if (edtPesquisa.Text <> '') then
  begin
    qryPesquisa.Close;
    qryPesquisa.SQL.Clear;
    qryPesquisa.SQL.Add('SELECT * FROM PRODUTO');
    qryPesquisa.SQL.Add('WHERE DESCRICAO_PRODUTO LIKE :P1');
    qryPesquisa.ParamByName('P1').AsString :=
                                   '%' + edtPesquisa.Text + '%';
    qryPesquisa.Open;
  end
  else
  begin
    qryPesquisa.Close;
    qryPesquisa.SQL.Clear;
    qryPesquisa.SQL.Add('SELECT * FROM PRODUTO');
    qryPesquisa.Open;
  end;
end;

procedure TfrmPesqProduto.FormShow(Sender: TObject);
begin
  qryPesquisa.Close;
  qryPesquisa.Open;

  edtPesquisa.SetFocus;
  vRetorno := 0;
end;

end.
