unit untDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, Data.DB,
  FireDAC.Comp.Client, FireDAC.Phys.FB, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI;

type
  Tdm = class(TDataModule)
    Conexao: TFDConnection;
    qryCidade: TFDQuery;
    qryUltimo: TFDQuery;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    qryPessoa: TFDQuery;
    qryPessoaCOD_PESSOA: TIntegerField;
    qryPessoaNOME_PESSOA: TStringField;
    qryPessoaCPF_CNPJ: TStringField;
    qryPessoaRG_IE: TStringField;
    qryPessoaID_CIDADE: TIntegerField;
    qryPessoaLOGRADOURO: TStringField;
    qryPessoaNUMERO_LOGRAD: TStringField;
    qryPessoaBAIRRO: TStringField;
    qryPessoaCEP: TStringField;
    qryPessoaCOMPLEMENTO: TStringField;
    qryPessoaTELEFONE: TStringField;
    qryPessoaCELULAR: TStringField;
    qryPessoaEMAIL: TStringField;
    qryPessoaDATA_NASC: TDateField;
    qryPessoaLIMITE: TBCDField;
    qryPessoaESCOLARIDADE: TStringField;
    qryPessoaSITUACAO: TStringField;
    qryPessoaTIPO_PESSOA: TStringField;
    qryPessoaNOME_CIDADE: TStringField;
    qryPessoaUF_CIDADE: TStringField;
    qryBusca: TFDQuery;
    qryProduto: TFDQuery;
    qryProdutoCOD_PRODUTO: TIntegerField;
    qryProdutoDESCRICAO_PRODUTO: TStringField;
    qryProdutoPRECO_CUSTO: TBCDField;
    qryProdutoPRECO_VENDA: TBCDField;
    qryProdutoSALDO_PRODUTO: TBCDField;
    qryProdutoID_GRUPO: TIntegerField;
    qryProdutoDESCRICAO_GRUPO: TStringField;
    qryCompra: TFDQuery;
    qryCompraItem: TFDQuery;
    qryCompraCOD_COMPRA: TIntegerField;
    qryCompraDATA_COMPRA: TDateField;
    qryCompraID_FORNECEDOR: TIntegerField;
    qryCompraSITUACAO: TStringField;
    qryCompraVALOR_PRODUTOS: TBCDField;
    qryCompraVALOR_DESCONTO: TBCDField;
    qryCompraVALOR_ACRESCIMO: TBCDField;
    qryCompraVALOR_TOTAL: TBCDField;
    qryCompraNOME_PESSOA: TStringField;
    qryCompraItemID_COMPRA: TIntegerField;
    qryCompraItemCOD_COMPRA_ITEM: TIntegerField;
    qryCompraItemID_PRODUTO: TIntegerField;
    qryCompraItemQUANT_PRODUTO: TBCDField;
    qryCompraItemVALOR_UNITARIO: TBCDField;
    qryCompraItemVALOR_DESCONTO: TBCDField;
    qryCompraItemVALOR_TOTAL: TBCDField;
    qryCompraItemDESCRICAO_PRODUTO: TStringField;
    qryExecuta: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
