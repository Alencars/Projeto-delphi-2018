unit untCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Data.DB, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCompra = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Panel4: TPanel;
    dsCompra: TDataSource;
    dsCompraItem: TDataSource;
    btnNovo: TSpeedButton;
    brnGravar: TSpeedButton;
    brnCancelar: TSpeedButton;
    brnExcluir: TSpeedButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    dbeFornecedor: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    edtProduto: TEdit;
    Edit2: TEdit;
    edtQuant: TEdit;
    edtVlUnit: TEdit;
    edtTotal: TEdit;
    brnLancar: TButton;
    Label9: TLabel;
    SpeedButton1: TSpeedButton;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    procedure btnNovoClick(Sender: TObject);
    procedure brnGravarClick(Sender: TObject);
    procedure brnCancelarClick(Sender: TObject);
    procedure brnLancarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCompra: TfrmCompra;

implementation

{$R *.dfm}

uses untDM;

procedure TfrmCompra.brnCancelarClick(Sender: TObject);
begin
  dm.qryCompra.Cancel;
end;

procedure TfrmCompra.brnGravarClick(Sender: TObject);
begin
  // colocar o auto incremento

  dm.qryCompra.Post;
end;

procedure TfrmCompra.brnLancarClick(Sender: TObject);
begin
  dm.qryExecuta.Close;
  dm.qryExecuta.SQL.Clear;
  dm.qryExecuta.SQL.Add('INSERT INTO COMPRA_ITEM (ID_COMPRA, COD_COMPRA_ITEM,');
  dm.qryExecuta.SQL.Add('ID_PRODUTO, QUANT_PRODUTO, VALOR_UNITARIO, VALOR_DESCONTO, VALOR_TOTAL)');
  dm.qryExecuta.SQL.Add('VALUES(:ID_COMPRA, :COD_COMPRA_ITEM,');
  dm.qryExecuta.SQL.Add(':ID_PRODUTO, :QUANT_PRODUTO, :VALOR_UNITARIO, :VALOR_DESCONTO, :VALOR_TOTAL)');
  dm.qryExecuta.ParamByName('ID_COMPRA').AsInteger       := dm.qryCompraCOD_COMPRA.AsInteger;
  dm.qryExecuta.ParamByName('COD_COMPRA_ITEM').AsInteger := 1;
  dm.qryExecuta.ParamByName('ID_PRODUTO').AsInteger      := StrToInt(edtProduto.Text);
  dm.qryExecuta.ParamByName('QUANT_PRODUTO').AsFloat     := StrToFloat(edtQuant.Text);
  dm.qryExecuta.ParamByName('VALOR_UNITARIO').AsFloat    := StrToFloat(edtVlUnit.Text);
  dm.qryExecuta.ParamByName('VALOR_DESCONTO').AsFloat    := 0;
  dm.qryExecuta.ParamByName('VALOR_TOTAL').AsFloat       := StrToFloat(edtTotal.Text);
  dm.qryExecuta.ExecSQL;
end;

procedure TfrmCompra.btnNovoClick(Sender: TObject);
begin
  dm.qryCompra.Insert;
  dm.qryCompraDATA_COMPRA.Value := Date; // recebe a data atual
  dm.qryCompraSITUACAO.Value    := 'P'; // Pendente

  dbeFornecedor.SetFocus;
end;

end.
