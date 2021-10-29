object dm: Tdm
  OldCreateOrder = False
  Height = 365
  Width = 607
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=D:\Delphi\Projeto2018\Banco\PROJETO2018.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 32
  end
  object qryCidade: TFDQuery
    Connection = Conexao
    Left = 40
    Top = 104
  end
  object qryUltimo: TFDQuery
    Connection = Conexao
    Left = 112
    Top = 32
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 512
    Top = 24
  end
  object qryPessoa: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT PESSOA.*,'
      'NOME_CIDADE, UF_CIDADE'
      'FROM PESSOA'
      'INNER JOIN CIDADE ON PESSOA.ID_CIDADE = CIDADE.COD_CIDADE'
      'WHERE COD_PESSOA = :P1')
    Left = 104
    Top = 104
    ParamData = <
      item
        Name = 'P1'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryPessoaCOD_PESSOA: TIntegerField
      FieldName = 'COD_PESSOA'
      Origin = 'COD_PESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPessoaNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Origin = 'NOME_PESSOA'
      Size = 100
    end
    object qryPessoaCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Size = 14
    end
    object qryPessoaRG_IE: TStringField
      FieldName = 'RG_IE'
      Origin = 'RG_IE'
    end
    object qryPessoaID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
    end
    object qryPessoaLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Origin = 'LOGRADOURO'
      Size = 100
    end
    object qryPessoaNUMERO_LOGRAD: TStringField
      FieldName = 'NUMERO_LOGRAD'
      Origin = 'NUMERO_LOGRAD'
      Size = 15
    end
    object qryPessoaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 40
    end
    object qryPessoaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 9
    end
    object qryPessoaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 30
    end
    object qryPessoaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 14
    end
    object qryPessoaCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 14
    end
    object qryPessoaEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 80
    end
    object qryPessoaDATA_NASC: TDateField
      FieldName = 'DATA_NASC'
      Origin = 'DATA_NASC'
    end
    object qryPessoaLIMITE: TBCDField
      FieldName = 'LIMITE'
      Origin = 'LIMITE'
      Precision = 18
      Size = 2
    end
    object qryPessoaESCOLARIDADE: TStringField
      FieldName = 'ESCOLARIDADE'
      Origin = 'ESCOLARIDADE'
      FixedChar = True
      Size = 1
    end
    object qryPessoaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object qryPessoaTIPO_PESSOA: TStringField
      FieldName = 'TIPO_PESSOA'
      Origin = 'TIPO_PESSOA'
      FixedChar = True
      Size = 1
    end
    object qryPessoaNOME_CIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_CIDADE'
      Origin = 'NOME_CIDADE'
      ProviderFlags = []
      Size = 100
    end
    object qryPessoaUF_CIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UF_CIDADE'
      Origin = 'UF_CIDADE'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
  end
  object qryBusca: TFDQuery
    Connection = Conexao
    Left = 176
    Top = 32
  end
  object qryProduto: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT PRODUTO.*, GRUPO.DESCRICAO_GRUPO'
      'FROM PRODUTO'
      'INNER JOIN GRUPO ON PRODUTO.ID_GRUPO = GRUPO.COD_GRUPO'
      'WHERE COD_PRODUTO = :P1')
    Left = 176
    Top = 104
    ParamData = <
      item
        Name = 'P1'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryProdutoCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
      Origin = 'COD_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProdutoDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Origin = 'DESCRICAO_PRODUTO'
      Size = 100
    end
    object qryProdutoPRECO_CUSTO: TBCDField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object qryProdutoPRECO_VENDA: TBCDField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
      currency = True
      Precision = 18
      Size = 2
    end
    object qryProdutoSALDO_PRODUTO: TBCDField
      FieldName = 'SALDO_PRODUTO'
      Origin = 'SALDO_PRODUTO'
      Precision = 18
      Size = 3
    end
    object qryProdutoID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
      Origin = 'ID_GRUPO'
    end
    object qryProdutoDESCRICAO_GRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO_GRUPO'
      Origin = 'DESCRICAO_GRUPO'
      ProviderFlags = []
      Size = 60
    end
  end
  object qryCompra: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT COMPRA.*, PESSOA.NOME_PESSOA'
      'FROM COMPRA'
      'INNER JOIN PESSOA ON COMPRA.ID_FORNECEDOR = PESSOA.COD_PESSOA'
      'WHERE COD_COMPRA = :P1')
    Left = 40
    Top = 176
    ParamData = <
      item
        Name = 'P1'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryCompraCOD_COMPRA: TIntegerField
      FieldName = 'COD_COMPRA'
      Origin = 'COD_COMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCompraDATA_COMPRA: TDateField
      FieldName = 'DATA_COMPRA'
      Origin = 'DATA_COMPRA'
    end
    object qryCompraID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
    end
    object qryCompraSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object qryCompraVALOR_PRODUTOS: TBCDField
      FieldName = 'VALOR_PRODUTOS'
      Origin = 'VALOR_PRODUTOS'
      Precision = 18
      Size = 2
    end
    object qryCompraVALOR_DESCONTO: TBCDField
      FieldName = 'VALOR_DESCONTO'
      Origin = 'VALOR_DESCONTO'
      Precision = 18
      Size = 2
    end
    object qryCompraVALOR_ACRESCIMO: TBCDField
      FieldName = 'VALOR_ACRESCIMO'
      Origin = 'VALOR_ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object qryCompraVALOR_TOTAL: TBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      Precision = 18
      Size = 2
    end
    object qryCompraNOME_PESSOA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_PESSOA'
      Origin = 'NOME_PESSOA'
      ProviderFlags = []
      Size = 100
    end
  end
  object qryCompraItem: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT COMPRA_ITEM.*, PRODUTO.DESCRICAO_PRODUTO'
      'FROM COMPRA_ITEM'
      
        'INNER JOIN PRODUTO ON COMPRA_ITEM.ID_PRODUTO = PRODUTO.COD_PRODU' +
        'TO'
      'WHERE ID_COMPRA = :P1')
    Left = 120
    Top = 176
    ParamData = <
      item
        Name = 'P1'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryCompraItemID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCompraItemCOD_COMPRA_ITEM: TIntegerField
      FieldName = 'COD_COMPRA_ITEM'
      Origin = 'COD_COMPRA_ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCompraItemID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object qryCompraItemQUANT_PRODUTO: TBCDField
      FieldName = 'QUANT_PRODUTO'
      Origin = 'QUANT_PRODUTO'
      Precision = 18
      Size = 3
    end
    object qryCompraItemVALOR_UNITARIO: TBCDField
      FieldName = 'VALOR_UNITARIO'
      Origin = 'VALOR_UNITARIO'
      Precision = 18
      Size = 2
    end
    object qryCompraItemVALOR_DESCONTO: TBCDField
      FieldName = 'VALOR_DESCONTO'
      Origin = 'VALOR_DESCONTO'
      Precision = 18
      Size = 2
    end
    object qryCompraItemVALOR_TOTAL: TBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      Precision = 18
      Size = 2
    end
    object qryCompraItemDESCRICAO_PRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO_PRODUTO'
      Origin = 'DESCRICAO_PRODUTO'
      ProviderFlags = []
      Size = 100
    end
  end
  object qryExecuta: TFDQuery
    Connection = Conexao
    Left = 248
    Top = 32
  end
end
