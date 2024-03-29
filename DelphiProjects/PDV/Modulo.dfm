object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 622
  Width = 841
  object fd: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=tcPIP'
      'Server=localhost'
      'Port=3050'
      
        'Database=C:\Users\desenvolvedor.jr\Desktop\Arthur\NovoPdv\Arquiv' +
        'os\Fontes do Projeto Finalizado\PDV\Win32\Debug\bd\DADOS.FDB'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    BeforeConnect = fdBeforeConnect
    Left = 136
    Top = 32
  end
  object tb_Cargos: TFDTable
    Connection = fd
    UpdateOptions.UpdateTableName = 'DADOS.cargos'
    TableName = 'DADOS.cargos'
    Left = 40
    Top = 104
    object tb_CargosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tb_CargosCARGO: TWideStringField
      FieldName = 'CARGO'
      Origin = 'CARGO'
      Required = True
      Size = 25
    end
  end
  object query_cargos: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from cargos order by cargo asc')
    Left = 40
    Top = 168
    object query_cargosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object query_cargosCARGO: TWideStringField
      FieldName = 'CARGO'
      Origin = 'CARGO'
      Required = True
      Size = 25
    end
  end
  object DSCargos: TDataSource
    DataSet = query_cargos
    Left = 104
    Top = 168
  end
  object tb_func: TFDTable
    Connection = fd
    UpdateOptions.UpdateTableName = 'DADOS.funcionarios'
    TableName = 'DADOS.funcionarios'
    Left = 104
    Top = 104
    object tb_funcID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tb_funcNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 30
    end
    object tb_funcCPF: TWideStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
    end
    object tb_funcTELEFONE: TWideStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 15
    end
    object tb_funcENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object tb_funcCARGO: TWideStringField
      FieldName = 'CARGO'
      Origin = 'CARGO'
      Required = True
      Size = 25
    end
    object tb_funcDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
  end
  object query_func: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from funcionarios')
    Left = 184
    Top = 168
    object query_funcID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object query_funcNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 30
    end
    object query_funcCPF: TWideStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
    end
    object query_funcTELEFONE: TWideStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 15
    end
    object query_funcENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object query_funcCARGO: TWideStringField
      FieldName = 'CARGO'
      Origin = 'CARGO'
      Required = True
      Size = 25
    end
    object query_funcDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
  end
  object DSFunc: TDataSource
    DataSet = query_func
    Left = 248
    Top = 168
  end
  object tb_usuarios: TFDTable
    Connection = fd
    UpdateOptions.UpdateTableName = 'DADOS.usuarios'
    TableName = 'DADOS.usuarios'
    Left = 160
    Top = 104
    object tb_usuariosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tb_usuariosNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 30
    end
    object tb_usuariosUSUARIO: TWideStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 25
    end
    object tb_usuariosSENHA: TWideStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 25
    end
    object tb_usuariosCARGO: TWideStringField
      FieldName = 'CARGO'
      Origin = 'CARGO'
      Required = True
      Size = 25
    end
    object tb_usuariosID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
      Origin = 'ID_FUNCIONARIO'
      Required = True
    end
  end
  object query_usuarios: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from usuarios')
    Left = 328
    Top = 168
    object query_usuariosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object query_usuariosNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 30
    end
    object query_usuariosUSUARIO: TWideStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 25
    end
    object query_usuariosSENHA: TWideStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 25
    end
    object query_usuariosCARGO: TWideStringField
      FieldName = 'CARGO'
      Origin = 'CARGO'
      Required = True
      Size = 25
    end
    object query_usuariosID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
      Origin = 'ID_FUNCIONARIO'
      Required = True
    end
  end
  object DSUsuarios: TDataSource
    DataSet = query_usuarios
    Left = 400
    Top = 168
  end
  object tb_forn: TFDTable
    Connection = fd
    UpdateOptions.UpdateTableName = 'DADOS.fornecedores'
    TableName = 'DADOS.fornecedores'
    Left = 216
    Top = 104
    object tb_fornID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tb_fornNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 25
    end
    object tb_fornPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Required = True
      Size = 25
    end
    object tb_fornENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 30
    end
    object tb_fornTELEFONE: TWideStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      Size = 15
    end
    object tb_fornDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
  end
  object query_forn: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from fornecedores')
    Left = 472
    Top = 168
    object query_fornID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object query_fornNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 25
    end
    object query_fornPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Required = True
      Size = 25
    end
    object query_fornENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 30
    end
    object query_fornTELEFONE: TWideStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      Size = 15
    end
    object query_fornDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
  end
  object DSForn: TDataSource
    DataSet = query_forn
    Left = 528
    Top = 168
  end
  object tb_produtos: TFDTable
    Connection = fd
    UpdateOptions.UpdateTableName = 'DADOS.produtos'
    TableName = 'DADOS.produtos'
    Left = 272
    Top = 104
    object tb_produtosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tb_produtosCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 50
    end
    object tb_produtosNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 25
    end
    object tb_produtosDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 35
    end
    object tb_produtosVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object tb_produtosESTOQUE: TIntegerField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
    end
    object tb_produtosDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
    object tb_produtosIMAGEM: TBlobField
      FieldName = 'IMAGEM'
      Origin = 'IMAGEM'
    end
    object tb_produtosULTIMA_COMPRA: TDateField
      FieldName = 'ULTIMA_COMPRA'
      Origin = 'ULTIMA_COMPRA'
    end
  end
  object query_produtos: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from produtos')
    Left = 592
    Top = 168
    object query_produtosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object query_produtosCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 50
    end
    object query_produtosNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 25
    end
    object query_produtosDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 35
    end
    object query_produtosVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object query_produtosESTOQUE: TIntegerField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
    end
    object query_produtosDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
    object query_produtosIMAGEM: TBlobField
      FieldName = 'IMAGEM'
      Origin = 'IMAGEM'
    end
    object query_produtosULTIMA_COMPRA: TDateField
      FieldName = 'ULTIMA_COMPRA'
      Origin = 'ULTIMA_COMPRA'
    end
  end
  object DSProdutos: TDataSource
    DataSet = query_produtos
    Left = 664
    Top = 168
  end
  object query_coringa: TFDQuery
    Connection = fd
    Left = 216
    Top = 32
  end
  object tb_entrada_pro: TFDTable
    Connection = fd
    UpdateOptions.UpdateTableName = 'DADOS.entrada_produtos'
    TableName = 'DADOS.entrada_produtos'
    Left = 336
    Top = 104
    object tb_entrada_proID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tb_entrada_proPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Required = True
      Size = 25
    end
    object tb_entrada_proQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Required = True
    end
    object tb_entrada_proFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
      Required = True
    end
    object tb_entrada_proVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object tb_entrada_proTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
      Precision = 18
      Size = 2
    end
    object tb_entrada_proDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
    object tb_entrada_proID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
  end
  object query_entrada_pro: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from entrada_produtos')
    Left = 32
    Top = 248
    object query_entrada_proID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object query_entrada_proPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Required = True
      Size = 25
    end
    object query_entrada_proQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Required = True
    end
    object query_entrada_proFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
      Required = True
    end
    object query_entrada_proVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object query_entrada_proTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
      Precision = 18
      Size = 2
    end
    object query_entrada_proDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
    object query_entrada_proID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
  end
  object DSEntradaProdutos: TDataSource
    DataSet = query_entrada_pro
    Left = 120
    Top = 248
  end
  object tb_saida_pro: TFDTable
    Connection = fd
    UpdateOptions.UpdateTableName = 'DADOS.saida_produtos'
    TableName = 'DADOS.saida_produtos'
    Left = 408
    Top = 104
    object tb_saida_proID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tb_saida_proPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Required = True
      Size = 25
    end
    object tb_saida_proQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Required = True
    end
    object tb_saida_proMOTIVO: TWideStringField
      FieldName = 'MOTIVO'
      Origin = 'MOTIVO'
      Required = True
      Size = 25
    end
    object tb_saida_proDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
    object tb_saida_proID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
  end
  object query_saida_pro: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from saida_produtos')
    Left = 224
    Top = 240
    object query_saida_proID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object query_saida_proPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Required = True
      Size = 25
    end
    object query_saida_proQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Required = True
    end
    object query_saida_proMOTIVO: TWideStringField
      FieldName = 'MOTIVO'
      Origin = 'MOTIVO'
      Required = True
      Size = 25
    end
    object query_saida_proDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
    object query_saida_proID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
  end
  object DSSaidaProdutos: TDataSource
    DataSet = query_saida_pro
    Left = 296
    Top = 240
  end
  object tb_vendas: TFDTable
    Connection = fd
    UpdateOptions.UpdateTableName = 'DADOS.vendas'
    TableName = 'DADOS.vendas'
    Left = 472
    Top = 104
    object tb_vendasID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tb_vendasVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object tb_vendasDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
    object tb_vendasHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
      Required = True
    end
    object tb_vendasFUNCIONARIO: TWideStringField
      FieldName = 'FUNCIONARIO'
      Origin = 'FUNCIONARIO'
      Required = True
      Size = 25
    end
    object tb_vendasDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object tb_vendasVALOR_RECEBIDO: TFMTBCDField
      FieldName = 'VALOR_RECEBIDO'
      Origin = 'VALOR_RECEBIDO'
      Required = True
      Precision = 18
      Size = 2
    end
    object tb_vendasTROCO: TFMTBCDField
      FieldName = 'TROCO'
      Origin = 'TROCO'
      Required = True
      Precision = 18
      Size = 2
    end
    object tb_vendasSTATUS: TWideStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Required = True
      Size = 12
    end
  end
  object query_vendas: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from vendas')
    Left = 400
    Top = 240
    object query_vendasID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object query_vendasVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object query_vendasDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
    object query_vendasHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
      Required = True
    end
    object query_vendasFUNCIONARIO: TWideStringField
      FieldName = 'FUNCIONARIO'
      Origin = 'FUNCIONARIO'
      Required = True
      Size = 25
    end
    object query_vendasDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object query_vendasVALOR_RECEBIDO: TFMTBCDField
      FieldName = 'VALOR_RECEBIDO'
      Origin = 'VALOR_RECEBIDO'
      Required = True
      Precision = 18
      Size = 2
    end
    object query_vendasTROCO: TFMTBCDField
      FieldName = 'TROCO'
      Origin = 'TROCO'
      Required = True
      Precision = 18
      Size = 2
    end
    object query_vendasSTATUS: TWideStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Required = True
      Size = 12
    end
  end
  object DSVendas: TDataSource
    DataSet = query_vendas
    Left = 472
    Top = 240
  end
  object tb_detalhes_vendas: TFDTable
    Connection = fd
    UpdateOptions.UpdateTableName = 'DADOS.detalhes_vendas'
    TableName = 'DADOS.detalhes_vendas'
    Left = 528
    Top = 104
    object tb_detalhes_vendasID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tb_detalhes_vendasID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      Required = True
    end
    object tb_detalhes_vendasPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Required = True
      Size = 25
    end
    object tb_detalhes_vendasVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object tb_detalhes_vendasQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Required = True
    end
    object tb_detalhes_vendasTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
      Precision = 18
      Size = 2
    end
    object tb_detalhes_vendasID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object tb_detalhes_vendasFUNCIONARIO: TWideStringField
      FieldName = 'FUNCIONARIO'
      Origin = 'FUNCIONARIO'
      Required = True
      Size = 25
    end
    object tb_detalhes_vendasDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
  end
  object query_det_vendas: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from detalhes_vendas')
    Left = 552
    Top = 240
    object query_det_vendasID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object query_det_vendasID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      Required = True
    end
    object query_det_vendasPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Required = True
      Size = 25
    end
    object query_det_vendasVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object query_det_vendasQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Required = True
    end
    object query_det_vendasTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
      Precision = 18
      Size = 2
    end
    object query_det_vendasID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object query_det_vendasFUNCIONARIO: TWideStringField
      FieldName = 'FUNCIONARIO'
      Origin = 'FUNCIONARIO'
      Required = True
      Size = 25
    end
    object query_det_vendasDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
  end
  object DSDetVendas: TDataSource
    DataSet = query_det_vendas
    Left = 640
    Top = 240
  end
  object tb_mov: TFDTable
    Connection = fd
    UpdateOptions.UpdateTableName = 'DADOS.movimentacoes'
    TableName = 'DADOS.movimentacoes'
    Left = 616
    Top = 104
    object tb_movID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tb_movTIPO: TWideStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 10
    end
    object tb_movMOVIMENTO: TWideStringField
      FieldName = 'MOVIMENTO'
      Origin = 'MOVIMENTO'
      Required = True
    end
    object tb_movVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object tb_movFUNCIONARIO: TWideStringField
      FieldName = 'FUNCIONARIO'
      Origin = 'FUNCIONARIO'
      Required = True
    end
    object tb_movDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
    object tb_movID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
      Origin = 'ID_MOVIMENTO'
      Required = True
    end
  end
  object query_mov: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from movimentacoes')
    Left = 32
    Top = 320
    object query_movID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object query_movTIPO: TWideStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 10
    end
    object query_movMOVIMENTO: TWideStringField
      FieldName = 'MOVIMENTO'
      Origin = 'MOVIMENTO'
      Required = True
    end
    object query_movVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object query_movFUNCIONARIO: TWideStringField
      FieldName = 'FUNCIONARIO'
      Origin = 'FUNCIONARIO'
      Required = True
    end
    object query_movDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
    object query_movID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
      Origin = 'ID_MOVIMENTO'
      Required = True
    end
  end
  object DSMovimentacoes: TDataSource
    DataSet = query_mov
    Left = 96
    Top = 320
  end
  object tb_gastos: TFDTable
    Connection = fd
    UpdateOptions.UpdateTableName = 'DADOS.gastos'
    TableName = 'DADOS.gastos'
    Left = 664
    Top = 104
    object tb_gastosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tb_gastosMOTIVO: TWideStringField
      FieldName = 'MOTIVO'
      Origin = 'MOTIVO'
      Required = True
      Size = 25
    end
    object tb_gastosVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object tb_gastosFUNCIONARIO: TWideStringField
      FieldName = 'FUNCIONARIO'
      Origin = 'FUNCIONARIO'
      Required = True
    end
    object tb_gastosDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
  end
  object query_gastos: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from gastos')
    Left = 176
    Top = 320
    object query_gastosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object query_gastosMOTIVO: TWideStringField
      FieldName = 'MOTIVO'
      Origin = 'MOTIVO'
      Required = True
      Size = 25
    end
    object query_gastosVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object query_gastosFUNCIONARIO: TWideStringField
      FieldName = 'FUNCIONARIO'
      Origin = 'FUNCIONARIO'
      Required = True
    end
    object query_gastosDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
  end
  object DSGastos: TDataSource
    DataSet = query_gastos
    Left = 240
    Top = 320
  end
  object rel_comprovante: TfrxReport
    Version = '6.7.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43649.779677141200000000
    ReportOptions.LastChange = 43649.852918310190000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 32
    Top = 496
    Datasets = <
      item
        DataSet = rel_DS_DetVendas
        DataSetName = 'DS_Det_Vendas'
      end
      item
        DataSet = rel_DS_Vendas
        DataSetName = 'DSVendas'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 100.000000000000000000
      PaperHeight = 130.000000000000000000
      PaperSize = 256
      BackPicture.Data = {
        0A544A504547496D61676592220000FFD8FFE104C44578696600004D4D002A00
        0000080007011200030000000100010000011A00050000000100000062011B00
        05000000010000006A0128000300000001000200000131000200000022000000
        720132000200000014000000948769000400000001000000A8000000D4000AFC
        8000002710000AFC800000271041646F62652050686F746F73686F7020434320
        32303137202857696E646F77732900323031393A30333A31332032313A30313A
        3237000003A001000300000001FFFF0000A0020004000000010000011BA00300
        0400000001000001710000000000000006010300030000000100060000011A00
        050000000100000122011B0005000000010000012A0128000300000001000200
        0002010004000000010000013202020004000000010000038A00000000000000
        48000000010000004800000001FFD8FFED000C41646F62655F434D0002FFEE00
        0E41646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B
        11150F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E
        0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800A0007B03012200
        021101031101FFDD00040008FFC4013F00000105010101010101000000000000
        00030001020405060708090A0B01000105010101010101000000000000000100
        02030405060708090A0B1000010401030204020507060805030C330100021103
        04211231054151611322718132061491A1B14223241552C16233347282D14307
        259253F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3
        D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6
        37475767778797A7B7C7D7E7F711000202010204040304050607070605350100
        021103213112044151617122130532819114A1B14223C152D1F0332462E17282
        92435315637334F1250616A2B283072635C2D2449354A317644555367465E2F2
        B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6
        E6F62737475767778797A7B7C7FFDA000C03010002110311003F00F504924950
        4A92492494A4924925292492494A4924925292492494A4924925292492494FFF
        D0F5049249504A92492494A4924925292492494A4924925292492494A4924925
        292492494FFFD1F5049249504A92492494A4924925292492494A492492529249
        2494A4924925292492494FFFD2F5049249504A92492494A4924925292492494A
        4924925292492494A4924925292492494FFFD3F5049249504A92492494A49249
        25292492494A4924925292492494A4924925292492494FFFD4F5049249504A92
        492494A4924925292492494A4924925292492494A4924925292492494FFFD5F5
        049249504A92492494A4924925292492494A4924925292492494A49249252924
        92494FFFD6F5049249504A92492494A4924925292492494A4924925292492494
        A4924925292492494FFFD7F5049249504A92492494A4924925292492494A4924
        925292492494A4924925292492494FFFD0F5049249504A92492494A492492529
        2492494A4924925292492494A4924925292492494FFFD9FFED0CD650686F746F
        73686F7020332E30003842494D04250000000000100000000000000000000000
        00000000003842494D043A000000000125000000100000000100000000000B70
        72696E744F7574707574000000050000000050737453626F6F6C010000000049
        6E7465656E756D00000000496E746500000000436C726D0000000F7072696E74
        5369787465656E426974626F6F6C000000000B7072696E7465724E616D655445
        585400000017004800500020004400650073006B006A00650074002000330035
        00310030002000730065007200690065007300000000000F7072696E7450726F
        6F6653657475704F626A63000000160043006F006E0066006900670075007200
        6100E700E3006F002000640065002000500072006F0076006100000000000A70
        726F6F6653657475700000000100000000426C746E656E756D0000000C627569
        6C74696E50726F6F660000000970726F6F66434D594B003842494D043B000000
        00022D00000010000000010000000000127072696E744F75747075744F707469
        6F6E7300000017000000004370746E626F6F6C0000000000436C6272626F6F6C
        00000000005267734D626F6F6C000000000043726E43626F6F6C000000000043
        6E7443626F6F6C00000000004C626C73626F6F6C00000000004E677476626F6F
        6C0000000000456D6C44626F6F6C0000000000496E7472626F6F6C0000000000
        42636B674F626A63000000010000000000005247424300000003000000005264
        2020646F7562406FE000000000000000000047726E20646F7562406FE0000000
        000000000000426C2020646F7562406FE000000000000000000042726454556E
        744623526C74000000000000000000000000426C6420556E744623526C740000
        0000000000000000000052736C74556E74462350786C40520000000000000000
        000A766563746F7244617461626F6F6C010000000050675073656E756D000000
        00506750730000000050675043000000004C656674556E744623526C74000000
        000000000000000000546F7020556E744623526C740000000000000000000000
        0053636C20556E74462350726340590000000000000000001063726F70576865
        6E5072696E74696E67626F6F6C000000000E63726F7052656374426F74746F6D
        6C6F6E67000000000000000C63726F70526563744C6566746C6F6E6700000000
        0000000D63726F705265637452696768746C6F6E67000000000000000B63726F
        7052656374546F706C6F6E6700000000003842494D03ED000000000010004800
        000001000200480000000100023842494D042600000000000E00000000000000
        0000003F8000003842494D040D0000000000040000005A3842494D0419000000
        0000040000001E3842494D03F300000000000900000000000000000100384249
        4D271000000000000A000100000000000000023842494D03F500000000004800
        2F66660001006C66660006000000000001002F6666000100A1999A0006000000
        000001003200000001005A00000006000000000001003500000001002D000000
        060000000000013842494D03F80000000000700000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03
        E800003842494D04080000000000100000000100000240000002400000000038
        42494D041E000000000004000000003842494D041A00000000034D0000000600
        00000000000000000001710000011B0000000C00530065006D0020005400ED00
        740075006C006F002D0031000000010000000000000000000000000000000000
        00000100000000000000000000011B0000017100000000000000000000000000
        0000000100000000000000000000000000000000000000100000000100000000
        00006E756C6C0000000200000006626F756E64734F626A630000000100000000
        0000526374310000000400000000546F70206C6F6E6700000000000000004C65
        66746C6F6E67000000000000000042746F6D6C6F6E6700000171000000005267
        68746C6F6E670000011B00000006736C69636573566C4C73000000014F626A63
        00000001000000000005736C6963650000001200000007736C69636549446C6F
        6E67000000000000000767726F757049446C6F6E6700000000000000066F7269
        67696E656E756D0000000C45536C6963654F726967696E0000000D6175746F47
        656E6572617465640000000054797065656E756D0000000A45536C6963655479
        706500000000496D672000000006626F756E64734F626A630000000100000000
        0000526374310000000400000000546F70206C6F6E6700000000000000004C65
        66746C6F6E67000000000000000042746F6D6C6F6E6700000171000000005267
        68746C6F6E670000011B0000000375726C54455854000000010000000000006E
        756C6C54455854000000010000000000004D7367655445585400000001000000
        000006616C74546167544558540000000100000000000E63656C6C5465787449
        7348544D4C626F6F6C010000000863656C6C5465787454455854000000010000
        00000009686F727A416C69676E656E756D0000000F45536C696365486F727A41
        6C69676E0000000764656661756C740000000976657274416C69676E656E756D
        0000000F45536C69636556657274416C69676E0000000764656661756C740000
        000B6267436F6C6F7254797065656E756D0000001145536C6963654247436F6C
        6F7254797065000000004E6F6E6500000009746F704F75747365746C6F6E6700
        0000000000000A6C6566744F75747365746C6F6E67000000000000000C626F74
        746F6D4F75747365746C6F6E67000000000000000B72696768744F7574736574
        6C6F6E6700000000003842494D042800000000000C000000023FF00000000000
        003842494D041100000000000101003842494D04140000000000040000000138
        42494D040C0000000003A6000000010000007B000000A0000001740000E88000
        00038A00180001FFD8FFED000C41646F62655F434D0002FFEE000E41646F6265
        00648000000001FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F
        1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E
        0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800A0007B03012200021101031101
        FFDD00040008FFC4013F00000105010101010101000000000000000300010204
        05060708090A0B01000105010101010101000000000000000100020304050607
        08090A0B1000010401030204020507060805030C330100021103042112310541
        51611322718132061491A1B14223241552C16233347282D14307259253F0E1F1
        63733516A2B283264493546445C2A3743617D255E265F2B384C3D375E3F34627
        94A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6374757677787
        97A7B7C7D7E7F711000202010204040304050607070605350100021103213112
        044151617122130532819114A1B14223C152D1F0332462E17282924353156373
        34F1250616A2B283072635C2D2449354A317644555367465E2F2B384C3D375E3
        F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F627374757
        67778797A7B7C7FFDA000C03010002110311003F00F5049249504A92492494A4
        924925292492494A4924925292492494A4924925292492494FFFD0F504924950
        4A92492494A4924925292492494A4924925292492494A4924925292492494FFF
        D1F5049249504A92492494A4924925292492494A4924925292492494A4924925
        292492494FFFD2F5049249504A92492494A4924925292492494A492492529249
        2494A4924925292492494FFFD3F5049249504A92492494A4924925292492494A
        4924925292492494A4924925292492494FFFD4F5049249504A92492494A49249
        25292492494A4924925292492494A4924925292492494FFFD5F5049249504A92
        492494A4924925292492494A4924925292492494A4924925292492494FFFD6F5
        049249504A92492494A4924925292492494A4924925292492494A49249252924
        92494FFFD7F5049249504A92492494A4924925292492494A4924925292492494
        A4924925292492494FFFD0F5049249504A92492494A4924925292492494A4924
        925292492494A4924925292492494FFFD93842494D042100000000005D000000
        01010000000F00410064006F00620065002000500068006F0074006F00730068
        006F00700000001700410064006F00620065002000500068006F0074006F0073
        0068006F00700020004300430020003200300031003700000001003842494D04
        060000000000070007010100010100FFE10CFD687474703A2F2F6E732E61646F
        62652E636F6D2F7861702F312E302F003C3F787061636B657420626567696E3D
        22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B63
        3964223F3E203C783A786D706D65746120786D6C6E733A783D2261646F62653A
        6E733A6D6574612F2220783A786D70746B3D2241646F626520584D5020436F72
        6520352E362D633133382037392E3135393832342C20323031362F30392F3134
        2D30313A30393A30312020202020202020223E203C7264663A52444620786D6C
        6E733A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F30
        322F32322D7264662D73796E7461782D6E7323223E203C7264663A4465736372
        697074696F6E207264663A61626F75743D222220786D6C6E733A786D703D2268
        7474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C
        6E733A64633D22687474703A2F2F7075726C2E6F72672F64632F656C656D656E
        74732F312E312F2220786D6C6E733A786D704D4D3D22687474703A2F2F6E732E
        61646F62652E636F6D2F7861702F312E302F6D6D2F2220786D6C6E733A737445
        76743D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F
        73547970652F5265736F757263654576656E74232220786D6C6E733A70686F74
        6F73686F703D22687474703A2F2F6E732E61646F62652E636F6D2F70686F746F
        73686F702F312E302F2220786D703A43726561746F72546F6F6C3D2241646F62
        652050686F746F73686F702043432032303137202857696E646F777329222078
        6D703A437265617465446174653D22323031392D30332D31335432313A30313A
        32372D30333A30302220786D703A4D65746164617461446174653D2232303139
        2D30332D31335432313A30313A32372D30333A30302220786D703A4D6F646966
        79446174653D22323031392D30332D31335432313A30313A32372D30333A3030
        222064633A666F726D61743D22696D6167652F6A7065672220786D704D4D3A49
        6E7374616E636549443D22786D702E6969643A62316535623364622D65343935
        2D393234302D386134312D6466356163313930646432362220786D704D4D3A44
        6F63756D656E7449443D22786D702E6469643A62316535623364622D65343935
        2D393234302D386134312D6466356163313930646432362220786D704D4D3A4F
        726967696E616C446F63756D656E7449443D22786D702E6469643A6231653562
        3364622D653439352D393234302D386134312D64663561633139306464323622
        2070686F746F73686F703A436F6C6F724D6F64653D2233223E203C786D704D4D
        3A486973746F72793E203C7264663A5365713E203C7264663A6C692073744576
        743A616374696F6E3D2263726561746564222073744576743A696E7374616E63
        6549443D22786D702E6969643A62316535623364622D653439352D393234302D
        386134312D646635616331393064643236222073744576743A7768656E3D2232
        3031392D30332D31335432313A30313A32372D30333A3030222073744576743A
        736F6674776172654167656E743D2241646F62652050686F746F73686F702043
        432032303137202857696E646F777329222F3E203C2F7264663A5365713E203C
        2F786D704D4D3A486973746F72793E203C2F7264663A4465736372697074696F
        6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020203C3F787061
        636B657420656E643D2277223F3EFFEE002141646F6265006440000000010300
        1003020306000000000000000000000000FFDB00840001010101010101010101
        0201010102020101010102020202020202020302030303030203030404040404
        0305050505050507070707070808080808080808080801010101020202040303
        0407050405070808080808080808080808080808080808080808080808080808
        0808080808080808080808080808080808080808080808FFC20011080171011B
        03011100021101031101FFC4005F000101000000000000000000000000000000
        0A01010101000000000000000000000000000005081001000000000000000000
        000000000000A01101000000000000000000000000000000A012010000000000
        00000000000000000000A0FFDA000C03010102110311000000BC2C8140000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000001FFDA00080102000105
        00539FFFDA0008010300010500539FFFDA0008010100010500539FFFDA000801
        0202063F00539FFFDA0008010302063F00539FFFDA0008010101063F00539FFF
        D9}
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 275.905690000000000000
        Width = 377.953000000000000000
        DataSet = rel_DS_DetVendas
        DataSetName = 'DS_Det_Vendas'
        RowCount = 0
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Unit'#225'rio')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 196.535560000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 268.346630000000000000
          Top = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
        end
        object DS_Det_Vendasproduto: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 18.897650000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'produto'
          DataSet = rel_DS_DetVendas
          DataSetName = 'DS_Det_Vendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DS_Det_Vendas."produto"]')
          ParentFont = False
        end
        object DS_Det_Vendasvalor: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'valor'
          DataSet = rel_DS_DetVendas
          DataSetName = 'DS_Det_Vendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DS_Det_Vendas."valor"]')
          ParentFont = False
        end
        object DS_Det_Vendasquantidade: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 200.315090000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'quantidade'
          DataSet = rel_DS_DetVendas
          DataSetName = 'DS_Det_Vendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DS_Det_Vendas."quantidade"]')
          ParentFont = False
        end
        object DS_Det_Vendastotal: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 268.346630000000000000
          Top = 18.897650000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'total'
          DataSet = rel_DS_DetVendas
          DataSetName = 'DS_Det_Vendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DS_Det_Vendas."total"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 26.456710000000000000
          Width = 332.598640000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
              '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 234.330860000000000000
        Top = 18.897650000000000000
        Width = 377.953000000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'SUPERMERCADO FREITAS')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Top = 26.456710000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RUA AFONSO PENA 4500 - BELO HORIZONTE - MG - 30512-650')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 52.913420000000000000
          Top = 37.795300000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ 15.000.000/0001-55          IE 05151212151')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 52.913420000000000000
          Top = 49.133890000000000000
          Width = 355.275820000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 49.133890000000000000
          Width = 355.275820000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 49.133890000000000000
          Width = 355.275820000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tel: (31)97527-5084')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 41.574830000000000000
          Top = 56.692950000000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            
              '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
              '- - - - - - - - - - - ')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 11.338590000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            
              '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
              '- - - - - - - - - - - ')
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 75.590600000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'RELAT'#211'RIO DE COMPRA')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 90.708720000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'COMPROVANTE DE PAGAMENTO')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 113.385900000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo da Venda')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 128.504020000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            
              '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
              '- - - - - - - - - - - ')
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 128.504020000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Total da Compra')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 158.740260000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Total Pago')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 158.740260000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            
              '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
              '- - - - - - - - - - - ')
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 173.858380000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Troco')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 173.858380000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            
              '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
              '- - - - - - - - - - - ')
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 219.212740000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ITENS DA VENDA')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 143.622140000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            
              '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
              '- - - - - - - - - - - ')
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 143.622140000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
        object DSVendasid: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 113.385900000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'id'
          DataSet = rel_DS_Vendas
          DataSetName = 'DSVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSVendas."id"]')
          ParentFont = False
        end
        object DSVendasvalor: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 130.393700790000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'valor'
          DataSet = rel_DS_Vendas
          DataSetName = 'DSVendas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSVendas."valor"]')
          ParentFont = False
        end
        object DSVendasdesconto: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 147.401670000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'desconto'
          DataSet = rel_DS_Vendas
          DataSetName = 'DSVendas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSVendas."desconto"]')
          ParentFont = False
        end
        object DSVendasvalor_recebido: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 162.519790000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'valor_recebido'
          DataSet = rel_DS_Vendas
          DataSetName = 'DSVendas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSVendas."valor_recebido"]')
          ParentFont = False
        end
        object DSVendastroco: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 177.637910000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'troco'
          DataSet = rel_DS_Vendas
          DataSetName = 'DSVendas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSVendas."troco"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 374.173470000000000000
        Width = 377.953000000000000000
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 3.779530000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'DESENVOLVIDO POR HUGO VASCONCELOS - Q-CURSOS NETWORKS')
          ParentFont = False
        end
      end
    end
  end
  object rel_DS_Vendas: TfrxDBDataset
    UserName = 'DSVendas'
    CloseDataSource = False
    DataSet = query_vendas
    BCDToCurrency = False
    Left = 120
    Top = 496
  end
  object rel_DS_DetVendas: TfrxDBDataset
    UserName = 'DS_Det_Vendas'
    CloseDataSource = False
    DataSet = query_det_vendas
    BCDToCurrency = False
    Left = 216
    Top = 496
  end
  object tb_caixa: TFDTable
    Connection = fd
    UpdateOptions.UpdateTableName = 'DADOS.caixa'
    TableName = 'DADOS.caixa'
    Left = 720
    Top = 104
    object tb_caixaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tb_caixaDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
      Origin = 'DATA_ABERTURA'
      Required = True
    end
    object tb_caixaHORA_ABERTURA: TTimeField
      FieldName = 'HORA_ABERTURA'
      Origin = 'HORA_ABERTURA'
      Required = True
    end
    object tb_caixaVALOR_ABERTURA: TFMTBCDField
      FieldName = 'VALOR_ABERTURA'
      Origin = 'VALOR_ABERTURA'
      Required = True
      Precision = 18
      Size = 2
    end
    object tb_caixaFUNCIONARIO_ABERTURA: TWideStringField
      FieldName = 'FUNCIONARIO_ABERTURA'
      Origin = 'FUNCIONARIO_ABERTURA'
      Required = True
      Size = 25
    end
    object tb_caixaDATA_FECHAMENTO: TDateField
      FieldName = 'DATA_FECHAMENTO'
      Origin = 'DATA_FECHAMENTO'
    end
    object tb_caixaHORA_FECHAMENTO: TTimeField
      FieldName = 'HORA_FECHAMENTO'
      Origin = 'HORA_FECHAMENTO'
    end
    object tb_caixaVALOR_FECHAMENTO: TFMTBCDField
      FieldName = 'VALOR_FECHAMENTO'
      Origin = 'VALOR_FECHAMENTO'
      Precision = 18
      Size = 2
    end
    object tb_caixaVALOR_VENDIDO: TFMTBCDField
      FieldName = 'VALOR_VENDIDO'
      Origin = 'VALOR_VENDIDO'
      Precision = 18
      Size = 2
    end
    object tb_caixaVALOR_QUEBRA: TFMTBCDField
      FieldName = 'VALOR_QUEBRA'
      Origin = 'VALOR_QUEBRA'
      Precision = 18
      Size = 2
    end
    object tb_caixaFUNCIONARIO_FECHAMENTO: TWideStringField
      FieldName = 'FUNCIONARIO_FECHAMENTO'
      Origin = 'FUNCIONARIO_FECHAMENTO'
      Size = 25
    end
    object tb_caixaNUM_CAIXA: TIntegerField
      FieldName = 'NUM_CAIXA'
      Origin = 'NUM_CAIXA'
      Required = True
    end
    object tb_caixaOPERADOR: TWideStringField
      FieldName = 'OPERADOR'
      Origin = 'OPERADOR'
      Required = True
      Size = 25
    end
    object tb_caixaSTATUS: TWideStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Required = True
      Size = 10
    end
  end
  object query_caixa: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from caixa')
    Left = 304
    Top = 320
    object query_caixaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object query_caixaDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
      Origin = 'DATA_ABERTURA'
      Required = True
    end
    object query_caixaHORA_ABERTURA: TTimeField
      FieldName = 'HORA_ABERTURA'
      Origin = 'HORA_ABERTURA'
      Required = True
    end
    object query_caixaVALOR_ABERTURA: TFMTBCDField
      FieldName = 'VALOR_ABERTURA'
      Origin = 'VALOR_ABERTURA'
      Required = True
      Precision = 18
      Size = 2
    end
    object query_caixaFUNCIONARIO_ABERTURA: TWideStringField
      FieldName = 'FUNCIONARIO_ABERTURA'
      Origin = 'FUNCIONARIO_ABERTURA'
      Required = True
      Size = 25
    end
    object query_caixaDATA_FECHAMENTO: TDateField
      FieldName = 'DATA_FECHAMENTO'
      Origin = 'DATA_FECHAMENTO'
    end
    object query_caixaHORA_FECHAMENTO: TTimeField
      FieldName = 'HORA_FECHAMENTO'
      Origin = 'HORA_FECHAMENTO'
    end
    object query_caixaVALOR_FECHAMENTO: TFMTBCDField
      FieldName = 'VALOR_FECHAMENTO'
      Origin = 'VALOR_FECHAMENTO'
      Precision = 18
      Size = 2
    end
    object query_caixaVALOR_VENDIDO: TFMTBCDField
      FieldName = 'VALOR_VENDIDO'
      Origin = 'VALOR_VENDIDO'
      Precision = 18
      Size = 2
    end
    object query_caixaVALOR_QUEBRA: TFMTBCDField
      FieldName = 'VALOR_QUEBRA'
      Origin = 'VALOR_QUEBRA'
      Precision = 18
      Size = 2
    end
    object query_caixaFUNCIONARIO_FECHAMENTO: TWideStringField
      FieldName = 'FUNCIONARIO_FECHAMENTO'
      Origin = 'FUNCIONARIO_FECHAMENTO'
      Size = 25
    end
    object query_caixaNUM_CAIXA: TIntegerField
      FieldName = 'NUM_CAIXA'
      Origin = 'NUM_CAIXA'
      Required = True
    end
    object query_caixaOPERADOR: TWideStringField
      FieldName = 'OPERADOR'
      Origin = 'OPERADOR'
      Required = True
      Size = 25
    end
    object query_caixaSTATUS: TWideStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Required = True
      Size = 10
    end
  end
  object DSCaixa: TDataSource
    DataSet = query_caixa
    Left = 376
    Top = 320
  end
  object rel_caixa: TfrxReport
    Version = '6.7.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43650.612255775500000000
    ReportOptions.LastChange = 43650.648392442130000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 328
    Top = 496
    Datasets = <
      item
        DataSet = rel_DS_Caixa
        DataSetName = 'DSCaixa'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'dataInicial'
        Value = ''
      end
      item
        Name = 'dataFinal'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      BackPicture.Data = {
        0A544A504547496D616765C9890000FFD8FFE106BA4578696600004D4D002A00
        0000080007011200030000000100010000011A00050000000100000062011B00
        05000000010000006A0128000300000001000200000131000200000022000000
        720132000200000014000000948769000400000001000000A8000000D4000AFC
        8000002710000AFC800000271041646F62652050686F746F73686F7020434320
        32303137202857696E646F77732900323031393A30333A31322031363A31373A
        3232000003A001000300000001FFFF0000A00200040000000100000253A00300
        04000000010000034A0000000000000006010300030000000100060000011A00
        050000000100000122011B0005000000010000012A0128000300000001000200
        0002010004000000010000013202020004000000010000058000000000000000
        48000000010000004800000001FFD8FFED000C41646F62655F434D0002FFEE00
        0E41646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B
        11150F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E
        0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800A0007103012200
        021101031101FFDD00040008FFC4013F00000105010101010101000000000000
        00030001020405060708090A0B01000105010101010101000000000000000100
        02030405060708090A0B1000010401030204020507060805030C330100021103
        04211231054151611322718132061491A1B14223241552C16233347282D14307
        259253F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3
        D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6
        37475767778797A7B7C7D7E7F711000202010204040304050607070605350100
        021103213112044151617122130532819114A1B14223C152D1F0332462E17282
        92435315637334F1250616A2B283072635C2D2449354A317644555367465E2F2
        B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6
        E6F62737475767778797A7B7C7FFDA000C03010002110311003F00F414924948
        85249249294924924A5249249294924924A5249249294A8F52E6AFED7FDF55E5
        47A97357F6BFEFA90534D24924E43FFFD0F4AFB11FF49FF47FF324BEC47F7C7D
        DFED56924788A1ABF623FE907DDFED4DF623FE907DDFED56924ACA9ABF623FE9
        07DDFED4BEC47FD20FBBFDAAD249595357EC47FD20FBBFDA97D88FFA4FFA3FED
        569246CA9ABF623FE907DDFED4FF00623FE907DDFED565242CA9ADF623FBE3EE
        FF00CC92FB11FDFF00C3FF00325653A5654D5FB11FF49FF47FF32599D669F49D
        47BB76E0FED1C6C5BAB1FAFF00D2C7F83FFF0045A3126D45CA492494887FFFD1
        F530653A82903292174C9D2492B249248A1492499252E92694A5252E92694A52
        53258FD7FE963FC1FF00F7C5AFB96475F3EEC7F83FFEF88C770A72924925221F
        FFD2F538F24BE497C928F2450BA49BE49D05293274924AC924922858CA5253A6
        D5252B54B54B5F14B5F1494AD564F5F9DD8F3E0FFF00BE2D6D7C564F5EFA58FF
        0007FF00DF118EEA72924925221FFFD3F52DC96E5182941450CB725B9460A509
        2996E4B728A492996E4A5452494CA5295149252E9264A1252EB27AF7D2C7F83F
        FEF8B5564F5DFA58FF0007FF00DF118EEA73124925221FFFD4F5191E0948F04C
        92285E4782523C1324929791E0948F04C924A5E4782523C1324929791E0948F0
        4C924A5F4F04A4782649252F23C164F5EFA58FF07FFDF16AACAEBBF4B1FE0FFF
        00BE231DD4E5A4924A443FFFD5F50493A48A16493A49296493A49296493A4929
        6493A49296493A49296595D77E963FC1FF00F7C5ACB27AF7D2C7F83FFEF88C77
        539692492910FF00FFD6F53D12D132708A15A7825ED48A8A4A652D4B44C02749
        4AD12D3C1327494A81E09E0264E82950128092492550163F5FFA58FF0007FF00
        DF16C2C7EBFF004B1FE0FF00FBE231DC20B9492492950FFFD7F5209D249142C9
        25AF9A7494A4C927494A4E9248294924924A5249249254B1FAFF00D2C7F83FFE
        F8B6163F5FFA58FF0007FF00DF118EE145CA492494AB5FFFD0F5320A6DA567EF
        B3F7DDF794B7D9FBEEFBCA7521D18849676FB3F7DDF794B7D9FBEEFBCA5C2A74
        613ACDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF77DE5
        2E153A492CDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF
        77DE52E153A4B1FAFF00D2C7F83FFEF88DBECFDF77DE551EA6E71356E24E8EE4
        CFEEA206AA69249249E87FFFD9FFED0F1A50686F746F73686F7020332E300038
        42494D0425000000000010000000000000000000000000000000003842494D04
        3A000000000125000000100000000100000000000B7072696E744F7574707574
        000000050000000050737453626F6F6C0100000000496E7465656E756D000000
        00496E746500000000436C726D0000000F7072696E745369787465656E426974
        626F6F6C000000000B7072696E7465724E616D65544558540000001700480050
        0020004400650073006B006A0065007400200033003500310030002000730065
        007200690065007300000000000F7072696E7450726F6F6653657475704F626A
        63000000160043006F006E00660069006700750072006100E700E3006F002000
        640065002000500072006F0076006100000000000A70726F6F66536574757000
        00000100000000426C746E656E756D0000000C6275696C74696E50726F6F6600
        00000970726F6F66434D594B003842494D043B00000000022D00000010000000
        010000000000127072696E744F75747075744F7074696F6E7300000017000000
        004370746E626F6F6C0000000000436C6272626F6F6C00000000005267734D62
        6F6F6C000000000043726E43626F6F6C0000000000436E7443626F6F6C000000
        00004C626C73626F6F6C00000000004E677476626F6F6C0000000000456D6C44
        626F6F6C0000000000496E7472626F6F6C000000000042636B674F626A630000
        000100000000000052474243000000030000000052642020646F7562406FE000
        000000000000000047726E20646F7562406FE0000000000000000000426C2020
        646F7562406FE000000000000000000042726454556E744623526C7400000000
        0000000000000000426C6420556E744623526C74000000000000000000000000
        52736C74556E74462350786C40520000000000000000000A766563746F724461
        7461626F6F6C010000000050675073656E756D00000000506750730000000050
        675043000000004C656674556E744623526C7400000000000000000000000054
        6F7020556E744623526C7400000000000000000000000053636C20556E744623
        50726340590000000000000000001063726F705768656E5072696E74696E6762
        6F6F6C000000000E63726F7052656374426F74746F6D6C6F6E67000000000000
        000C63726F70526563744C6566746C6F6E67000000000000000D63726F705265
        637452696768746C6F6E67000000000000000B63726F7052656374546F706C6F
        6E6700000000003842494D03ED00000000001000480000000100020048000000
        0100023842494D042600000000000E000000000000000000003F800000384249
        4D040D0000000000040000005A3842494D04190000000000040000001E384249
        4D03F3000000000009000000000000000001003842494D271000000000000A00
        0100000000000000023842494D03F5000000000048002F66660001006C666600
        06000000000001002F6666000100A1999A000600000000000100320000000100
        5A00000006000000000001003500000001002D00000006000000000001384249
        4D03F80000000000700000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800003842494D040000
        000000000200023842494D04020000000000060000000000003842494D043000
        0000000003010101003842494D042D0000000000060001000000033842494D04
        08000000000010000000010000024000000240000000003842494D041E000000
        000004000000003842494D041A00000000035900000006000000000000000000
        00034A000002530000001200460055004E0044004F002000520045004C004100
        54004F00520049004F0020004100340000000100000000000000000000000000
        000000000000010000000000000000000002530000034A000000000000000000
        0000000000000001000000000000000000000000000000000000001000000001
        0000000000006E756C6C0000000200000006626F756E64734F626A6300000001
        000000000000526374310000000400000000546F70206C6F6E67000000000000
        00004C6566746C6F6E67000000000000000042746F6D6C6F6E670000034A0000
        0000526768746C6F6E670000025300000006736C69636573566C4C7300000001
        4F626A6300000001000000000005736C6963650000001200000007736C696365
        49446C6F6E67000000000000000767726F757049446C6F6E6700000000000000
        066F726967696E656E756D0000000C45536C6963654F726967696E0000000D61
        75746F47656E6572617465640000000054797065656E756D0000000A45536C69
        63655479706500000000496D672000000006626F756E64734F626A6300000001
        000000000000526374310000000400000000546F70206C6F6E67000000000000
        00004C6566746C6F6E67000000000000000042746F6D6C6F6E670000034A0000
        0000526768746C6F6E67000002530000000375726C5445585400000001000000
        0000006E756C6C54455854000000010000000000004D73676554455854000000
        01000000000006616C74546167544558540000000100000000000E63656C6C54
        657874497348544D4C626F6F6C010000000863656C6C54657874544558540000
        0001000000000009686F727A416C69676E656E756D0000000F45536C69636548
        6F727A416C69676E0000000764656661756C740000000976657274416C69676E
        656E756D0000000F45536C69636556657274416C69676E000000076465666175
        6C740000000B6267436F6C6F7254797065656E756D0000001145536C69636542
        47436F6C6F7254797065000000004E6F6E6500000009746F704F75747365746C
        6F6E67000000000000000A6C6566744F75747365746C6F6E6700000000000000
        0C626F74746F6D4F75747365746C6F6E67000000000000000B72696768744F75
        747365746C6F6E6700000000003842494D042800000000000C000000023FF000
        00000000003842494D041100000000000101003842494D041400000000000400
        0000083842494D040C00000000059C0000000100000071000000A00000015400
        00D4800000058000180001FFD8FFED000C41646F62655F434D0002FFEE000E41
        646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B1115
        0F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14
        140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800A00071030122000211
        01031101FFDD00040008FFC4013F000001050101010101010000000000000003
        0001020405060708090A0B010001050101010101010000000000000001000203
        0405060708090A0B1000010401030204020507060805030C3301000211030421
        1231054151611322718132061491A1B14223241552C16233347282D143072592
        53F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3D375
        E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F63747
        5767778797A7B7C7D7E7F7110002020102040403040506070706053501000211
        03213112044151617122130532819114A1B14223C152D1F0332462E172829243
        5315637334F1250616A2B283072635C2D2449354A317644555367465E2F2B384
        C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6
        2737475767778797A7B7C7FFDA000C03010002110311003F00F4149249488524
        9249294924924A5249249294924924A5249249294A8F52E6AFED7FDF55E547A9
        7357F6BFEFA90534D24924E43FFFD0F4AFB11FF49FF47FF324BEC47F7C7DDFED
        56924788A1ABF623FE907DDFED4DF623FE907DDFED56924ACA9ABF623FE907DD
        FED4BEC47FD20FBBFDAAD249595357EC47FD20FBBFDA97D88FFA4FFA3FED5692
        46CA9ABF623FE907DDFED4FF00623FE907DDFED565242CA9ADF623FBE3EEFF00
        CC92FB11FDFF00C3FF00325653A5654D5FB11FF49FF47FF32599D669F49D47BB
        76E0FED1C6C5BAB1FAFF00D2C7F83FFF0045A3126D45CA492494887FFFD1F530
        653A82903292174C9D2492B249248A1492499252E92694A5252E92694A525325
        8FD7FE963FC1FF00F7C5AFB96475F3EEC7F83FFEF88C770A72924925221FFFD2
        F538F24BE497C928F2450BA49BE49D05293274924AC924922858CA5253A6D525
        2B54B54B5F14B5F1494AD564F5F9DD8F3E0FFF00BE2D6D7C564F5EFA58FF0007
        FF00DF118EEA72924925221FFFD3F52DC96E5182941450CB725B9460A5092996
        E4B728A492996E4A5452494CA5295149252E9264A1252EB27AF7D2C7F83FFEF8
        B5564F5DFA58FF0007FF00DF118EEA73124925221FFFD4F5191E0948F04C9228
        5E4782523C1324929791E0948F04C924A5E4782523C1324929791E0948F04C92
        4A5F4F04A4782649252F23C164F5EFA58FF07FFDF16AACAEBBF4B1FE0FFF00BE
        231DD4E5A4924A443FFFD5F50493A48A16493A49296493A49296493A49296493
        A49296493A49296595D77E963FC1FF00F7C5ACB27AF7D2C7F83FFEF88C775396
        92492910FF00FFD6F53D12D132708A15A7825ED48A8A4A652D4B44C027494AD1
        2D3C1327494A81E09E0264E82950128092492550163F5FFA58FF0007FF00DF16
        C2C7EBFF004B1FE0FF00FBE231DC20B9492492950FFFD7F5209D249142C925AF
        9A7494A4C927494A4E9248294924924A5249249254B1FAFF00D2C7F83FFEF8B6
        163F5FFA58FF0007FF00DF118EE145CA492494AB5FFFD0F5320A6DA567EFB3F7
        DDF794B7D9FBEEFBCA7521D18849676FB3F7DDF794B7D9FBEEFBCA5C2A74613A
        CDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF77DE52E15
        3A492CDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF77DE
        52E153A4B1FAFF00D2C7F83FFEF88DBECFDF77DE551EA6E71356E24E8EE4CFEE
        A206AA69249249E87FFFD93842494D042100000000005D00000001010000000F
        00410064006F00620065002000500068006F0074006F00730068006F00700000
        001700410064006F00620065002000500068006F0074006F00730068006F0070
        0020004300430020003200300031003700000001003842494D04060000000000
        070007010100010100FFE1120D687474703A2F2F6E732E61646F62652E636F6D
        2F7861702F312E302F003C3F787061636B657420626567696E3D22EFBBBF2220
        69643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E20
        3C783A786D706D65746120786D6C6E733A783D2261646F62653A6E733A6D6574
        612F2220783A786D70746B3D2241646F626520584D5020436F726520352E362D
        633133382037392E3135393832342C20323031362F30392F31342D30313A3039
        3A30312020202020202020223E203C7264663A52444620786D6C6E733A726466
        3D22687474703A2F2F7777772E77332E6F72672F313939392F30322F32322D72
        64662D73796E7461782D6E7323223E203C7264663A4465736372697074696F6E
        207264663A61626F75743D222220786D6C6E733A786D703D22687474703A2F2F
        6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C6E733A64633D
        22687474703A2F2F7075726C2E6F72672F64632F656C656D656E74732F312E31
        2F2220786D6C6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E
        636F6D2F7861702F312E302F6D6D2F2220786D6C6E733A73744576743D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F
        5265736F757263654576656E74232220786D6C6E733A73745265663D22687474
        703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F52
        65736F75726365526566232220786D6C6E733A70686F746F73686F703D226874
        74703A2F2F6E732E61646F62652E636F6D2F70686F746F73686F702F312E302F
        2220786D703A43726561746F72546F6F6C3D2241646F62652050686F746F7368
        6F702043432032303137202857696E646F7773292220786D703A437265617465
        446174653D22323031392D30332D31325431363A31303A35392D30333A303022
        20786D703A4D65746164617461446174653D22323031392D30332D3132543136
        3A31373A32322D30333A30302220786D703A4D6F64696679446174653D223230
        31392D30332D31325431363A31373A32322D30333A3030222064633A666F726D
        61743D22696D6167652F6A7065672220786D704D4D3A496E7374616E63654944
        3D22786D702E6969643A62363966383932382D393063382D383934352D613530
        312D3862613432396534356232312220786D704D4D3A446F63756D656E744944
        3D2261646F62653A646F6369643A70686F746F73686F703A3665626435353434
        2D343466622D313165392D613635342D6335636565343334373364662220786D
        704D4D3A4F726967696E616C446F63756D656E7449443D22786D702E6469643A
        34316464636231302D613935342D373234322D616633642D6635663335396264
        66626233222070686F746F73686F703A436F6C6F724D6F64653D2233223E203C
        786D704D4D3A486973746F72793E203C7264663A5365713E203C7264663A6C69
        2073744576743A616374696F6E3D2263726561746564222073744576743A696E
        7374616E636549443D22786D702E6969643A34316464636231302D613935342D
        373234322D616633642D663566333539626466626233222073744576743A7768
        656E3D22323031392D30332D31325431363A31303A35392D30333A3030222073
        744576743A736F6674776172654167656E743D2241646F62652050686F746F73
        686F702043432032303137202857696E646F777329222F3E203C7264663A6C69
        2073744576743A616374696F6E3D227361766564222073744576743A696E7374
        616E636549443D22786D702E6969643A66313461373734302D396136622D3434
        34372D613462352D303737383032663837336362222073744576743A7768656E
        3D22323031392D30332D31325431363A31373A30392D30333A30302220737445
        76743A736F6674776172654167656E743D2241646F62652050686F746F73686F
        702043432032303137202857696E646F777329222073744576743A6368616E67
        65643D222F222F3E203C7264663A6C692073744576743A616374696F6E3D2273
        61766564222073744576743A696E7374616E636549443D22786D702E6969643A
        30393063613532612D396433612D626534392D623635632D6235363861333161
        36326530222073744576743A7768656E3D22323031392D30332D31325431363A
        31373A32322D30333A3030222073744576743A736F6674776172654167656E74
        3D2241646F62652050686F746F73686F702043432032303137202857696E646F
        777329222073744576743A6368616E6765643D222F222F3E203C7264663A6C69
        2073744576743A616374696F6E3D22636F6E766572746564222073744576743A
        706172616D65746572733D2266726F6D206170706C69636174696F6E2F766E64
        2E61646F62652E70686F746F73686F7020746F20696D6167652F6A706567222F
        3E203C7264663A6C692073744576743A616374696F6E3D226465726976656422
        2073744576743A706172616D65746572733D22636F6E7665727465642066726F
        6D206170706C69636174696F6E2F766E642E61646F62652E70686F746F73686F
        7020746F20696D6167652F6A706567222F3E203C7264663A6C69207374457674
        3A616374696F6E3D227361766564222073744576743A696E7374616E63654944
        3D22786D702E6969643A62363966383932382D393063382D383934352D613530
        312D386261343239653435623231222073744576743A7768656E3D2232303139
        2D30332D31325431363A31373A32322D30333A3030222073744576743A736F66
        74776172654167656E743D2241646F62652050686F746F73686F702043432032
        303137202857696E646F777329222073744576743A6368616E6765643D222F22
        2F3E203C2F7264663A5365713E203C2F786D704D4D3A486973746F72793E203C
        786D704D4D3A4465726976656446726F6D2073745265663A696E7374616E6365
        49443D22786D702E6969643A30393063613532612D396433612D626534392D62
        3635632D623536386133316136326530222073745265663A646F63756D656E74
        49443D22786D702E6469643A34316464636231302D613935342D373234322D61
        6633642D663566333539626466626233222073745265663A6F726967696E616C
        446F63756D656E7449443D22786D702E6469643A34316464636231302D613935
        342D373234322D616633642D663566333539626466626233222F3E203C70686F
        746F73686F703A446F63756D656E74416E636573746F72733E203C7264663A42
        61673E203C7264663A6C693E61646F62653A646F6369643A70686F746F73686F
        703A63383837363862342D336162612D313165392D396266372D626532623861
        3737326435633C2F7264663A6C693E203C2F7264663A4261673E203C2F70686F
        746F73686F703A446F63756D656E74416E636573746F72733E203C2F7264663A
        4465736372697074696F6E3E203C2F7264663A5244463E203C2F783A786D706D
        6574613E20202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020203C3F787061636B657420656E643D2277223F3EFFEE002141646F62
        650064400000000103001003020306000000000000000000000000FFDB008400
        0101010101010101010102010101020201010101020202020202020203020303
        0303020303040404040403050505050505070707070708080808080808080808
        0101010102020204030304070504050708080808080808080808080808080808
        0808080808080808080808080808080808080808080808080808080808080808
        08FFC2001108034A025303011100021101031101FFC400CE0001010100020301
        010000000000000000000102030904070A060501010101010101010100000000
        0000000000010203060405071000020103020405040301000301000000000111
        0212131003203021144031041517330607375060323641220523110001020106
        070D06050204050500000001003111214191A1023220305161D133A41040B112
        4203D3E30405B536077181E135757660C122B4065013F0F16214A2247495A552
        921585161200010403010002030100000000000000006001310271A1B1322080
        40A05190FFDA000C03010102110311000000FB0AF59F98000000000000000000
        000000000000000000000000000000000075D9FAB8FCBEC07677F8FB00000000
        000000000000000000000000000000000000000000003AECFD5C7E5F603B3BFC
        7D80000000000000000000000000000000000000000000000000001D767EAE3F
        2FB01D9DFE3EC000000000000000000000000000000000000000000000000000
        0EBB3F571F97D80ECEFF001F6000000000000000000000000000000000000000
        000000000000075D9FAB8FCBEC07677F8FB00000000000000000000000000000
        000000000000000000000003AECFD5C7E5F603B3BFC7D8000000000000000000
        0000000000000000000000000000000001D767EAE3F2FB01D9DFE3EC00000000
        00000000000000000000000000000000000000000000EBB3F571F97D80ECEFF1
        F6000000000000000000000000000000000000000000000000000075D9FAB8FC
        BEC07677F8FB0000000000000000000000000000000000000000000000000000
        3AECFD5C7E5F603B3BFC7D800000000000000000000000000000000000000000
        00000000001D767EAE3F2FB01D9DFE3EC0000000000000000000000000000000
        000000000000000000000EBB3F571F97D80ECEFF001F60000000000000000000
        00000000000000000000000000000000075D9FAB8FCBEC077CDE1FEE0056B8B5
        9C6B000022D40000000000000059B025C0B340A012596680008014800882A81C
        F9E8C801480E957D97C1F82EF903E87FF9E7E90002B8379C6B24022D0800E2A0
        00A002000AA2255000214042B9337535400002805894956585A359BCB8D80001
        D117BCFCBF5DFD1903E87FF9E7E90000B75E36F9E759245A1000335C5B850000
        00000000002428896DB973635B9A00012BC8C6B774240A485B20881699A001D1
        17BCFCBF5DFD1903E87FF9E7E9000019B78378C59AB90000066B86CBAA000000
        0000001001168172E6C6B535400012C110000004DE7A7918D950259D11FBBFCC
        F5DFD1903E87FF009E7E90000545278FD312E400000335C5B000000000000099
        5A014032A73635B9A00019B9DCD6A68500080069778D0523A22F79F97EBBFA32
        07D0FF00F3CFD2000504095E3F4C4B9000000CD70EA5B4000000000224975409
        2555002C7373D6A6A800039F3A5A1900042821A5B9A3A22F79F97EBBFA3207D0
        FF00F3CFD200282001357C7DF39720000019AE2D8000000001248BAA001332DA
        A005CB9B3ADE74000066E753433723534258204D4BE4E7AB17A22F79F97EBBFA
        3207D0FF00F3CFD20141000026AF8DBC2E4800000C5716A5B400000022497540
        000490B6802C7373D6A6A80010E696CD0001424034B65E88BDDFE5FAEFE8C81F
        43FF00CF3F48290000029136F1B585840000062B8F60000004492EA800000224
        97540172E6C6B7340000724D000022550217A27F71F9DEBBFA3207D0FF00F3CF
        D252000000056F3BC78FAE79AA800000C5716A5B400842C9175400000001332D
        AA02C73F3D59AA000012C4B4C5CD00D4D429D157B7F83D79F4640FA1EFE7BFA5
        600000000559ACEA78DBE52AA00000315C7B002E521A2800000000020280B973
        635B9A0000B3C9C749282001681D11FB9FCCF5DFD1903E82FC27D65F379F4E7C
        6900000003537C7D39F8FAC4AA100000C570EB2CDD154B2E5AA0000000000224
        97540B1CDCF5A9AA003373C99DF3E365400001D117BCFCBF5DFD1903E813C3FD
        229FD3E3DF9F968000000568B8D63C7E9CC02000018AC994AB29A00000000000
        009996D50B973E35A9A000CDCF2675CF8E8940000E88BDE7E5FAEFE8C81F409E
        1FE9029FD4E3DF9B9E900000002B78DE3C7D7350202E2C08D2E2B29351680000
        0000000002495542C7373D6A6A8337356272677CF8E810001D117BCFCBF5DFD1
        903E813C3FD200B1FD4E5DB9B96C00000059BA7174C706F902887159A548519B
        26C0000000000000001124BAA2E5CF8D6A6B373A9A19B91CB9DF363A20003A22
        F79F97EBBFA3207D02787FA40029FD4E1DF9B1A40000000D37C3BE7C3BE6004D
        4AE3B988B0456A8000084405D40014202824821692C72E75652669608BCB9D72
        677598BB97933BE88FDDFE5FAEBE8C81F409E1FE9000165FEA71EBCDCF600000
        02DD55E1DF3E1BCCB5512B16096042B1B000211C7ACF8FBE79BA2405812AA422
        824B51A922AC1C990160A2ACB2CA2AFF005787D1D14FB7FCFF005DFD1903E813
        C3FD2000058FEA71EFCDCF640000000AE2DE784A5258B9E133B9562112ACB740
        00386E7C4E98D482000025A00B1A44B2CCDB64E4CB5340002168597A3CF63F37
        AF7BC03E813C3FD200000B2FF578F6E5E7A00000015A9670EA71DCB592010C51
        2AC4CDB34000124E2B38772A580005B6282255405B4458E6CDAD24145A8E6C6B
        95B47451EE3F3BD77F4640FA08F0BF50A0012A89A97FA5CBB6A56400002AA962
        70EF1C7AC08B5218A5225019A500000190902E8A02665D5002249755172E7CEE
        A80489579F1BE4CEBA22F77F99EBAFA3207D0C780FD1012800691036BAC80002
        ADA94335A9E3EF963590520E331A85B0A94A0000249E3EF9C582DA9010B10580
        149951516F2628325A44CAEE5E8EBD97CDEBEEF00FA04F0FF480000001A8FEA7
        1EFCB8D20142ADA9249A9D06758E0DF3C6B20B003082D23358DCAA00038D9F13
        A73CDA00000B20968000153979D0285113A3DF63C3D7DDE01F425E0BEF160290
        8A833ABA9059BF2716C05BA5952422353A089358F1F78CEB20A09C1A8A0866DD
        2680001971EB3E2EF0A8551A90010D012904B51691CD9A8AA42C4E8E3D9FCDEB
        DEF00FA0DF07F658540500AA02053CACF4E5C52DA922000353A133BC78FBC66E
        4028200071D6351680001249269A50400000005925B570E79BD4B2883A2BF6DF
        0FAF3E8C81F40FE1BEA804102A0028406A5FEA70FA39705A900006A7412E66A7
        8FBE59B000000071D6360000892716A67524514428000008322B79BB96CA64BD
        1B7B3F97D7BDE01F431E03F42C45D848B5742412DB150B8AD46A02000001A9D0
        6779F1B5CA6B2002900038EB1A8B404492DB867C4EBCF16800000000002C8397
        16A8E8F3D8FCFEBEEF00FA04F0FF004810A0080A416A4294B2FF004F8F7E5C50
        00006A7404C6F1E3EF9CB0005200071D63608925D508C33E275C44CDA00D4822
        8025002C0D49C99D17A3CF63F37AFBBC03E84BC17DE22DB2466C2EA494922D32
        8B4CD8559AF3B9F4B900001A9D0019DE3C6DF296000A0800E3AE3D445D500004
        13341001540500008CEE6B9B1AE8B3DB7C3EBCFA201F435FCFFF0054000262B5
        2DDE732D89A854586A4A962140001A9D000B31BCF8FBE510000A400715674500
        0018673480A000080000A65A5E8DBD9FC9EBDEF00FA1EFE7BFA400000290042A
        C0000000000D4E800C74C78FBE510000A08071D629A0000CC9E274E5C7AA0000
        00000001D217ADE1EBFEF00FA1FF00E7BFA4000042C280000000000000D4D800
        71EF1E3EF9900186EA6990071D63600008CA787D39E340000000000379747FEB
        F87AFF00BC03E82BC2FD600E3B38F59B28291400000000000000B1CD9D846779
        C2008AA40A090634CD116D800433600010011400017A41F5DC3D7FDE01F409E1
        FE9000E2DE78F50021410440001A6C0000000B97366D94442AAC010A01104B33
        650B650204A40A00000025511D1FFB0E1EBEEF00FA04F0FF0048000E2DE7152C
        1490AB2CB080005B29400000068E5C2CA000000000A2652CB54000000000019B
        2C551D1E7B1F9FD7DDE01DF6F87FA40CD962AC1400492ACAA040014000000008
        216168000204B45012D8D00000000000085003A50F5BC3F03DE01DF6787FA442
        80000002522800000000000020AB000000021400351A0000000000428003A51F
        5BC3F03DE01DF6787FA400000000008500000000000101400000000405000000
        0000010255000E947D8FCFF81EF00EFB3C3FD440000000000214000000000101
        40000000001014000000000D4D66C200001D28FB1F9FF03DE01DFB788FAB8AE4
        000000000010588000000002D320A80000000160B352C4000002A89672E7496D
        9C3720000749BEBF8FE07BC03BF8F17F4000000000000138AE4B400000400D4D
        40500000000101412C45500019B8DCD7262AB2716F3A9A00003A49F5DC3F01DA
        01DFDF89FA400000000000010B24B4000062CE2D66CD80000000000000292C45
        580A42B3C99D58C59C7B965280001D257AEE1F80ED00FA0EFE7FFA0000000000
        000001116D8004B2CA0000000000000000024B6C0A42ACAD44B240000007467E
        E3E1F5EFD1903E807C37D7400000000000000085008500000000000000000000
        03971AB5C361028000000747DECBE5F5F778077E9E2FBD5000000000000000CD
        CEA544D44B54000000000000000003373A9752D814E3D42800000003A49F5DC3
        F01DA01DFA78BEF54000000000000003373AC8B2CAD0000000000000000000CD
        CEE5DE2DAD4BC1ACAD000000000E927D770FC0768077E9E2FBD5000000000000
        0044966A6866E753400000000000000000009C99BA978F59C5168000000001D2
        4FAEE1F80ED00EFD3C5F7AA00000000000004B11540110550000000000000000
        227366C33671EB3A9B88AB2800000003A49F5DC3F01DA01DFA78BEF540000000
        000004B986A680004B05940000000000000CDCD379BACDD1C7A98B4500CDCD96
        A8000000E927D770FC0768077E9E2FBD500000000000097296A80000222ACA00
        0000000001139212EA2D7156358B3740009725B28000007493EBB87E03B403BF
        4F17F450000000000012C4550000000337365AA0000000003373A979B1752E6B
        8ECCE90A000019B9A59A000007493EBB87E03B403BF3F17DB4D000000000012E
        52D50000000009730D4D00000000066E772F262CAE3D3371A9B00000011259A9
        A00003A49F5DC3F01DA01DFA78CEF12CB5400000001966AD500000000002584B
        340000000088525500000000002588AA001D24FAEE1F80ED00EFD3C5FD149725
        B28000000CDCEA6800000000000044966A6800000066E6CB540000000000004B
        226A6801D24FAEE1F80ED00EFD3C5F7AA337365AA00000CDCEA6800000000000
        0002588AA00004415400000000000001105503A49F5DC3F01DA01DFA78BEF540
        892CD4D0000CDCEA68000002148500000000960B28004B115400000000000000
        00CDCD96AF493EBB87E03B403BF4F17DAA800440B02696594000000445B96373
        60000000082CB28102550014100000000000000895AE927D770FC0768077F1E2
        7A94000096EA4CDB6400000000BC7B89AE4CE0A000000000B5209560012B16D5
        DE72000000000000001D237AFE5F80EF00EFE7C4F51680089756245D64000000
        0048B0D2140000002512CDCDC230A001065695014000000000009443A46F5FCB
        D7FDE01DFE78CEE0002259A32550000000010005000000011059A22800000000
        000000000001194D7489EB787AFF00B80EFF003C5F7AB100960D4D0CDC92CD00
        0000000000000000290055CDC8B28000000000000000004B1157A43F5DC7D7FD
        A01F405E27E84000000085000000000000000002C4A000428000000000000000
        00000E8FBD870F5F77807D06F84FB00850000002140000000000000042800000
        10A00000000000000042800E8D3DA7C9EBDEF00FA1FF00E79FA4255100000012
        8580005000001000128580000001285800000000000012A88007449EEFF3FD77
        F4640FA1FF00E79FA59B752000000002545D480294000004204A028020000002
        50B00000000000095600007449EEFF003FD77F4640FA11F05F6D0000002D6B3A
        D000C94F1F78E1D60000003CBE7D779D0ABC7738DE5007367540000073E37602
        02928005000A44AAA80A201D11FBAFCEF5DFD1903E82FC1FD2000000391BE694
        0011C1B9E0F5E566400001E4E3BF95CF60B9B386F344D652F335C928000039B1
        D3931400001A9D000005466CD0BD20000E88BDC7E67AEBE8C81F417E0FE90000
        00D5D73E77500030781DB966E22D9000072E7AF9BCFA2325AE1D7396149BCEB9
        66824B6D2141BCEB9F1B812A8010353A00005912CD017A40001D117B8FCCF5D7
        D1903E82FC1FD200000B6F919DD000965781D7971DE6066DD2200D4DF9FCBB12
        04E2D670C6A685396DB1532D724D6359C5BBCE6CBE4F3D802AEB3B0A080353A0
        0B2259A000BD20007445EE3F33D75F4640FA0BF07F480000AE7CF4D800097C3E
        98F1F7C40025A4B15BF3F8F6A133666E38D986A695CD2D02B79D645C0E39D3CB
        E7740035376501410353A09722CD000017A4007445EE3F33D75F4640FA0BF07F
        4800069CB9DF2CA0028E0D67C2E9C4800000F2F1F473F3B8B1666CE399A08725
        D72CC896EB3A96E6E2C439F1D3932006A6ACD000050D67A4B91668000002F480
        7445EE3F33D75F4640FA0BF07F48000DB5CF340008C69FCFEBC632000146FC9E
        7D3C9E7D32CE759B6713280356DBBE5CF306ACD6359A88DE77CF8A00B2EA6C00
        00504B5AB28000000BD201D117B8FCCF5D7D1903E82FC1FD20069737C89BA000
        23C4E99C6B2000044DCDF95CBA66C8CB6E39890055E4D6B368DE33C937C7732C
        1BCEBC9E7400353A5800001402353A000000017A41D117B8FCCF5D7D1903E82F
        C1FD202AE9CFCFA680001C1A440A000B26B3BDCD66E66B0309862CD09672DDCB
        A49A4E4C6A8055F239EEE68805580000A2A4015ACF4000000005E93A22F71F99
        EBAFA3207D05F83FA4361CD8DF24A0008F1B73C5E9C400010D6F3AF231D3926B
        3BC6A4CA70A0D44396EA6B4359CEB376A0179F1BDE2800000001480028A9353A
        00000001D11FBCFCBF5D7D1903E82FC2FD2C9B6F1BE7940004250002150D4D40
        71EF1A9331C57165CD0E595BD8D4CD9AE4C801CB9E9CBCE80000000148000015
        66ACD0000000E88FDE7E5FAEBE8C81F417E13E946B579F1D2A000653F9FDB397
        35A00D4D25A72E75E573DE6F3CEE8E398400AE46E6A8D49CB8A00DE75CFCF600
        0000005200000000D4E8000001D117BCFCBF5DFD1903E82FC27D34E7CF4D0000
        38EB3400011A9656A25CCB25B8989002B99ACDACA69CD8B402CBE473E9600000
        000520000000015AB3400000E88BDE7E5FAEFE8C81F415E13EAE7CEB91400078
        BBCF0EB200006A5AD7938D5678F7522678E66A85723535A164DE6EA5A8266F93
        9DEB3400000000000000000353A4B916680007445EF3F2FD77F4640FA0FF0007
        F66E6F49500195F1778200009565E4979A5E3D496DCE78E6401BB574B472626E
        58B0D272E3A72E280000008500000000000D4E825C8B34001D117BCFCBF5DFD1
        903E857C17DA228A838CE1DE41002C22D39737965E3D633AD6B39E2990259B6A
        DD2D1A9397140171BF233AB00000012AC0000000000000D4E92E459A007445EF
        3F2FD77F4640FA15F05F681161A4F0778C6F12D08115572D1E772E99D31A5931
        33962CD0572DD66E926A4E4CEA8026BC9E7B292C0000128580000000000001A9
        D0446A336A8E88BDE7E5FAEFE8C81F42BE0BED000E1AA94000C9A11C8B8B25CE
        A4E2B712085392EE5A3526F2D28097C8C74D64250B0000255800000000000000
        0D4E825C96CBD117BCFCBF5DFD1903E857C17DA00F1F53C4E9C336D0044B7532
        5F2F9F6E6CDCEB14B262D96865E4635A9445D5BBC5956017500084AD40105580
        000000000000001A9D009723A23F77F9BEBBFA3207D0AF82FB40E3B3C0EDC648
        2B711512C839F3D7CCE7BCEB1C7AD8006B33979DE7CD0235C99D000000003342
        C2AC00000000000000001A9D0012E7A23F77F9BEBBFA3207D0AF82FB40F0F79C
        DC80585082B5E673DE2E71BA001ACCDE2F938A00D4E96000000001C7AA393300
        0000000000000000353A0026B3D11FBAFCDF5DFD1903E857C17DA00032B402A0
        18B38F7400127261E4F3D500D4DD94000000094850B000000000000000000006
        A749724E88FDDFE77AEFE8C81F42BE0BED000CB5A4202E574CCB38B4968006B3
        3C9E5ADC006F79A00000004A4500942C0000000000000000005692D5E88BDE7E
        5FAEFE8C81DD4794FA0012DB20000CDB2C00003797266812B534000000008500
        00000000000000000000002CD750FEA3E3FC4F6807677F8FB000000000000000
        00000000000000000000000000000000000003AECFD5C7E5F603B3BFC7D80000
        000000000000000000000000000000000000000000000001D767EAE3F2FB01D9
        DFE3EC0000000000000000000000000000000000000000000000000000EBB3F5
        71F97D80ECEFF1F6000000000000000000000000000000000000000000000000
        000075D9FAB8FCBEC07677F8FB00000000000000000000000000000000000000
        000000000000003AECFD5C7E5F603FFFDA0008010200010500FE8FB7FE7FA56D
        FF009FE95B7FE7FA56DFF9FE95B7FE7FA56DFF009FE95B7FE7FA56DFF9FE95B7
        FE7FA56DFF009FE95B7FE7FA56DFF9FE95B7FE75EFB74EFB74EFB74EFB747EB7
        745EB770EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370E
        F370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370
        EF370EF370EF370EF370EF370EF370EF370EF370EF374EF374EF370EF370EF37
        0EF374EF370EF370EF370EF370EF370EF370EF370EF374EF374EF374EF374EF3
        74EF374EF374EF374EF374EF370EF370EF3747EB774EFB74EFB74EFB74EFB74E
        FB74EFB74EFB74F4B537B5C94F97041041041041041041041041041041041041
        0411CAB8924B892492E2492791E8FE8F297293F0D248DEAD0F911AC11A24410C
        B48208E2F47F479484C9E4A6353E0D8C5C2C8E4469041041041041040D09F07A
        3FA3CC5CA4FC32E06343E4492492CB8B8B892E2E2E1BE1F47F479B3CA4C6A79E
        DF32391041690416969690410411AFA3FA3CD4C5CA4FC2C09F0B43F0703D3D1F
        D1E727CB4CF3F091CF6CB892492492492492493D1FD1E6B5A2722E527E2DA1F1
        B45A5A8B516A2D45A8B4B4B4B4B4B4F49F4BC5A679F0B291F3A09E0688E4CF04
        924F07A4FA5CF6313917293E17E0609E0687C6C6CB8B8B8B8B8B8B8B8B8F49F4
        B5B0B074C7393E5267993C0BC03E28E2631A1723D1FD1E16A4AA98E5B114BE5A
        7C097876B8E0688E47A3FA3C75531E1208D234425E1589F29150D09F17A3FA3C
        6D49528E6A7C53A493A27E1DA275687C6D0D717A3FA3C974C731F4170CF05A5B
        C9F32D2D2DE6753A9D482D2082082D2D1523A0B0B0B074E9E8FE9725A92A51CB
        A8A593C324E924E93C74E905A884416905A411A41047022081F29A2AA4F47F47
        94D0E98E6262279108845C4AE34F49249249249278FF00F2F4688E438140E993
        D2FD2E5B454A398842E2B4B48208E37D05517171797179797979717171717990
        559717978EA2E2E2E2E2E2E2F1D4C92E83D27D2D6E2E2E2E2E2E2F2E2F436344
        2E627C525C49717170B932492C964F2635688E381A7A7A3FA3AC104104104105
        A432D2DE4C93A27C882D2D65A2E4C169616969696A2D2D2D2D20821102A48442
        2D2358208D2D47A5FA5CE6874F31313E3924927934D5CA927C07A5FA5AE43217
        9797B2F65ECBCBCBD8F705B837C73C5227C524925C88278FC855124925C5C892
        4924B8B8B8B8924B8B8B87521D45C5C5C5E5E7A5FA5AE33198CB0B0C6632C319
        8CC6633198C74C13CB4C5CB4C6A790CB89D649249249249249192344717A4FA5
        ADC5C4971717124925CB49D5A92A51CC9E627C95496961616169696969696969
        6969696969696169696969E97E96B0C820B59D7586433A9D74EA753AE902E9CB
        427CB4C6A78E927C135C1E97E96B0410410410411A4105A8820843A4AA9E5A27
        989F1B62A89E64924924E8F5F4BF4B5BCBCBCBCBCBCBCC86432190C85E643219
        0C83A87CC5CC4C7CA75171717171717171771C11A7A4FA5CC83AEB0493CF4C9E
        627CA82C2C2D2D2C2D2D2D2C2C2C2C2C2C2D63A0C6CF4BF4BF829297CC4CF3E3
        42F05E9BE9F1C104704104104104104104104104104104104104409F313E4489
        F80A8F4DF4F5B4B4B4B4B0C6633198CC6633198CC6633198CC6633198CC66331
        98CC6633198CC6622C2C2C4585A5A8B4B4B4B4B4820B4B482D2082C2C2C2C238
        A0820820820820820F4DF4F909F8A688E19E5492492492492492492492492492
        4924925C49E9BE9F253E19D649F02C8E74788F4BF4B9524924F0492492492492
        4924924924924924F0492492493C3249226410410410410410410410411A4104
        107A6FA7FCAA64924924924924924924924924924927A6FA7FD2BD2FD2FE82C5
        C8F4BF4B82D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2
        D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2
        DD2048B4B4B4B4B4B4B4F4DF4F5820820820820820820820820823973E3DEA90
        B91E9BE9EB0410410410410410410410410416905A5A5A5A5A5A5A5A27E39888
        122393E9BE9EB9D99D99D99D99D99D99D99D99D99D99D99D99D99D99D99D99D9
        9D99D99D99D99CCECCECCECCECCECCECCECCECCECCECCECCECCECCECCECCECCE
        CCECCECCECCECCECCECCECCECCECCECCECCECCECEE199D99D99D99D999999999
        99D99CCECCECCECCECCECCECCECCECCECF48E76B5C48C48C48C48C48C48C48C4
        8C48C48C48C48C48C48C48C48C48C48C48C48C48C48C46246246246231189189
        1891891891891891891891891891891891891891891891891891891891891891
        8918918918918918D18D188C4623123123123123123123123123123123D2AFFF
        002F12FC73D3C87D443E77A6FA7E25F8E63D3CB45CEF4DF4FF009791B244BC07
        A6FA7FCC40A9F03E9BE9FF0026864E902F05E9BE9FF27237AA5E0FD37D3FE45F
        0411E13D37D3FE458F48F0DE9BE9FF004AF4DF4FFA57A6FA7FD2BD37D3FE95E9
        BE9EB24924924924924E924924924924924924EB2492492492492492493A4924
        E92492493AC92492492492492492492492492493A7A6FA7ABE54F313F0689E19
        F0F27A6FA7AC1041041046B0410410410410410411A433AE9041041041041041
        0468C488208208D7A90F582082082082082082082082082047A6FA7C12492493
        AC6924924924924924924F0C924924924924924F0C9249249249249249249249
        2492492492492492493AFA6FA7FD2234F4DF4F592E2592C92492492592CB8925
        92C964B2592C964B2592C964B2592C964B2592C964B2592C924B8964B2E2E249
        2592C964B2592C964B2592C964B2592C964B2592C964B2592C964925C4B3D2FD
        3D6F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F
        2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F
        2F2F2F2F2F2F2F2F3D2FD2F0F041041041047147F0DE8FE978682592C964B259
        2C964BE38208FE0FD1FD2D6C2C4588B11622C4588B11622C43A4B4B4B4B4B482
        0A682C2C4588B11622C4588B51622A42A4820815258584104104104104103238
        238A492492395E93E973678994D3CAA993AAD6091F25BF00B95E93E9783484B9
        353D208D11248DEB04F137C73E13D27D2E5B7C53A534F25B2758D172A746FC67
        A4FA5E060A572AA7AA5A473193E33D27D2E4A637C6972AAAB58E4CE890F56F98
        84FC07A4FA5CF6CA57264AAAE17C084F856ADF8EF49F4B8EAE44099722E45C8B
        91722E44A2E43AB9AF482082A7E3FD27D2E37C8B4B4B4B4B4B4B4B0B4B74489E
        521BE16FC7FA4FA5C2941237C4D1493C725C3625C086B8A389BFE03D27D2E1AB
        C043D1B12D18B54C6B810DF0B7FC0FA4FA5AFF00E46F8D212E26488AB85F0CEB
        E5C2FF0082F47F475FFCF2131D42A8B8B99732E65C4924E887C88247C0C9FE0B
        D1FD1D50F8E9A47496969696969696168C4B8DF03E16C6FF0083F47F4756F917
        17979797979797978EA122796DF0D4FF0084F47F479291696161616161696160
        D11C688E07C2DFF0BE8FE8F25124924924A24B912362E05C723E06362FE13D1F
        D1E45A5A5A41041043208D121F22491F0C8FF86F47F478E95AB5AC7054C489E2
        6C7512C964B249249249FE1FD1FD1E24B9553E4B7C13CD823C7FA3FA5C499717
        1722F2E2F2E2E1D648B890DF8262F1FE8FE97804B8EA7C2F9D24F8FF0047F479
        E909F13637C0DFF1FE8FE8EBEDC7B71EDC7B71EDC7B71EDC7B71EDC7B71EDC7B
        71EDE7607607607607607603FF00E71ED87B61ED87B69ED87B61ED87B61ED87B
        61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B6
        1ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61
        ED87B61ED87B61ED67A7A6DDBFE95B7FE7FA56DFF9FE95B7FE7FA56DFF009FE9
        5B7FE75FFFDA0008010300010500FE8EFF00A5BFE96FFA5BFE96FF00A5BFE96F
        FA5BFE96FF00A5BFE96FFA5BFE96F8315262A4C5498A916D523DA4588B11622C
        4588B11622C4588B11622C4588B11622C4588B11622C4588B11622C4588B1162
        31D263A4C749622C463A4C7498E931D263A4C7498D18E931D263A4C7498E916D
        A1D1498E931D263A4B292CA4B2931A31A31231A15148B6A930D261A4C3498693
        0D261A4C3495A87C96B973E0249249249D249249279369690416969616160A81
        53C8DCFF005CAA972A3C4C6AB8E04F592492759249278B73FD7290D0F94DF865
        C33C8924B8B8B8B8B8B8B8B891313E066E7FAE527A55FC32E34882C2C2D2D2D2
        D2D2C2C2D12E1DCFF5CD6B97E5E03CF973C8B8B8B8B8B8B8B8B8B8B8B8B89D77
        3FD739AFE1972275964BD64920913169B9FEBC4B5E3279091696969696904169
        69691A6E7FAE7B43FE1971A65C5C5C5C5C5C5C5C5E5E5E5C57FEB9E864729A3C
        BC5CF26DE0B4B4B782BF3F014952FE1D71A122D20B4B4B4B4B4B4B4DCFF5ADEC
        BD94D53CD6B99E42F153C54E93C9DCFF005C2994D53CBA468A97F0EB8A44C5C8
        DCFF005C74D53CB9132A5CA9249F173C305452F91B9FEB8D329AA796969553C5
        02A48208F1AB87CC4CA5F1EE7FAE4D354F310D70C12497171772E49249249E39
        2513A49249717176B714D66445E5E2AB4DCFF5C94E0A6A9E5D23435A411A470C
        7259248DEB3A4F0C6BD783A9D4EA753A89E89EA994D46E7FAE5262AA44F98D11
        ABD6DD3A9D4EA75E36B49249249249278A5923D193CA4E0ABCF969C14B9E5F4D
        1A1F1CE92895C687496969696B2D2D20B4B4B4B482D2D2D2D2D2D2D2D2D2C2C2
        C2D2C152588B0AFCF5B596B2D65A5A5A5ACB596B1213E6B5C4F58208F113C0A0
        9249211D0915449B9FEB5B8B8B8B8B8B8B8B8B894362AB9703435C725C493CAB
        8B9925C5C5CCBCB8B8B8964925C5C5C3A8B8965C5C49248C551732AF3E726535
        7318D731AE3A972208249E4412470A1F9EB8CC66331988C6632C2C3198CB0547
        1413C2D1035C505A432394E923582D2D65A5A4696B2D65A5A5A5A5A5A582A0B0
        B19616161579EB7979797979797991990C86432B323320AA9E5BD2A5E1639D1C
        13A410415F9EB696B20B590410410411A41027052E79690D0D78382E2E2E2E2E
        24B8B8B8B8B8B8B8B8BCB892E2F2E2F2E2E2AF3D6F44A2E44A25128944A25128
        84743A1D0E84A131F2D8D783635E0A04F5ABCF952492492C924924B8A5F2DA1A
        1F836881E92493AC10411C51A410CABCF5C66231188C43DB3118CC4CC6633198
        CC658636631524732A435CCF2238E082082082082082393257E7CC83AE9E6412
        493CE68A973239324971717171717171717171717171717171795F9EB2492492
        493C33E16AA7C231AF04FCFC7C924924C9553C4D8B9B6F827E7ADC5C5C5C5ECC
        86466432190C86432190C86432190C86432190C86432190C86432190C8642F65
        E5C5E642F2F2F2F2F2F2F2F2F2492492E2E2E2E249E182082082082082347E7C
        86883A1D3450743A1D38D41D0E8743A1D0E8743A1D08279D041075D3A1041041
        0410410410410410411AC0FCF9304104104104169690410411A4104104104104
        11AC6B0410411AC1046AD13E096B579F2638A08FE0649F10FCFC027E15BFE15F
        9FF4AABCF56BC7C78F81AE455E7AB249249249249249249249249D27993A493C
        D9249279324899248DF21F9EB24924924924924924924924925CC86753A9D4EA
        753A9D4EA752D248F09027C7E62E0AB90FCF5B91722E45C8B91722E45C8B9172
        2E45C8B91722E45C8B912892492492492492746BC33427C2C5AC971E7C87E7AE
        0460460460460460460460460460460460460460460460460460460460460460
        3023023023023023018118118118118118118118118118118118118118118118
        1181181181181181181181181181180C08C08C28C28C28C28C28C28C08C08C08
        C08C08C08C08C08C08AD43D72332332332332332332332332332332332332332
        3323323323323323323323323323323323323329919919919919919919919919
        9199199199199199199199199199199199199199199199199199199199199199
        197B3233233233233233233233233233233233233232AF3D5786A49D18978AA7
        5F2F00FCF55E1A910DF8CA74F2D5F39F9EABC2B625AB7E2DA168DF807E7AAF08
        D8970C09F8A91B129D1A279AFCF55E0DB12E3689F09514E923E3F213E5BF3D57
        82912E4B44F826411A468DF1B427CA7E7AAF03225CCF213E7D3C1237CA813E4B
        F3D67C0A5CE689E75232757CB68F2E43F3E0F213E779780684F9AD888F01027C
        4FCF55A409F2FCFC1B47972DB12F06D09F0BF3D56B027E3E04F90D89785689E0
        7E7AAE068F2F1ED09F13625E2204F47E7C98208208E6F973BCF8978A6B47E7AB
        E4C13CD6BC0C0993C33E21F9F0C92493C324924924924924924E924E92492492
        49249249248B8249249D649D649249249249249249249249249D1F9EB05A5A5A
        5A5BAC105A5A5A5A5A5A5A5A5A5A5A5A4104105A5A5A5A5A5A5A5A5A5A5A3425
        ADA5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A35A3F3D
        6749249D2756C9249249249249249249249249249249249249246C4493A32492
        49249249249249249249249249249249249249247E7C10410410410410411A41
        0410410410410410410410410410411A41041041041041041041041041041041
        041041041041041041041579EB616161616161616161616161618CB0B0B0B0B0
        B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0C65858585858
        585858585858585858585858585858585858585855E7FD2ABFF5FD2ABFF5ADE5
        E5E5E5E5E5E5E5E5E2AC5512492497125558B70C8CC8CC8CC8CC8CC8CC82AD97
        17124923A8BCBC550AA249249249249E382082082D2D2D2D20B448B4B4B4B4B4
        B4B4AFFD7352E248A9F2A94411A3D234812E4A5E07CF93B9FEB98971B654C5C8
        A56924923AB8249244F824929249279B3CBDCFF5CB4B91555C13C2A92092746C
        AB544EAB59D12E14B96D91CBDCFF005E0AA7C49EA8A50DEAD97094F174121EAB
        892F0FB9FEB94971B63E4245348F491BE15AB625A31890970A5E2373FD7252E3
        63AB9105348F4918B817025A2D570A5CBE9CEDCFF5C84B90D161616161616169
        60A9D1BD27931A345A5A25E3F73FD71AE43A855171717171717A2E2E5A3245A5
        4F542D57125E3F73FD71A5C7510C86432190C86416B2D121B1F147040B852FE0
        373FD7125CDE9A4224824918C6F542D57125E1BCF97B9FEB852E36C91B2592C9
        64BD5A29431F1A42E425FC16E7FAE18E368820820820B448B74A9948C6F86390
        97F07B9FEB5812E375179797979797978AB2747AC8F5485AB42235484BF83DCF
        F5AA5C8748A82C4588B11622C4582A11031BD678172578E9E2DCFF005C3235AB
        65C5E8BD17A2F45E8B8B8B89E4342E4AF1F04F0EE7FAE4B20820820B4B482048
        9E0A9EB491ACF0A5A4F8F8D275DCFF005C87512492492497124EAF47ACF0B447
        02FE1674DCFF005C753244C65CCB9923649225A4EAC82048820820B48208208F
        E1609373FD71363D5245A5BC14D3C8812E05FC6366E7FAE268C6633196161698
        CC625C8425FC8A2BFF005CA9E6A5C297F1DB9FEB9EC4F8D702FE3634DCFF005A
        E432190C86532190C86432190CA2DC32190C864321905B86532994CA673399CC
        E673399CCE673399CCE673399CCE673399CCE673399CCE673399CCE673399CCE
        673399CCE673399CCE673399CCE67339DC15397FD29FF4B7FD2DFF004B7FD2DF
        07FFDA0008010100010500FE8FF7BFFD9FF4AFBDFF00ECFF00A57DEFFF0067FD
        2BEF7FFB3FE95F7BFF00D9FF004AFBDFFECFFA57DEFF00F67FD2BEF7FF00B3FE
        95F7BFFD9FF4AFBDFF00ECFF00A57DEFFF0067FD2BEF7FFB3FE95F7BFF00D9EB
        F1B7D947C6DF651F1B7D947C6DF651F1B7D9457F8DFECDA4F8E7ECD3E39FB34F
        8E7ECD3E39FB34F8E7ECD3E39FB347F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7
        ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3
        E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E38F
        B30F8E3ECC3E38FB30F8E7ECD3E39FB30F8E7ECC3E39FB30F8E3ECC3E38FB30F
        8E3ECC3E39FB305F8E7ECD3E38FB30F8E3ECC3E38FB30F8E3ECC3E38FB30F8E3
        ECC3E39FB30F8E7ECC3E39FB30F8E7ECC3E39FB30F8E7ECC3E39FB30F8E7ECC3
        E39FB30F8E3ECC3E38FB305F8E7ECB95F8DBEC96BE35FB28F8D7ECA3E35FB28F
        8D7ECA3E35FB28F8D7ECA3E35FB28FCA9E9B63D17E50E4D745BC2E785CC5ECBD
        97B2F65ECBD97B2F65ECBD97B2F65ECBD97B2F66466466466465ECC8CBD99199
        199197B1549AE3892CA8B2A2CA8C7598EA31D463A8C5518EA31D4534D74BE3FC
        BDFB6793D0AA8B5EBE5C55533E2D369D2D35C4BA14D772D3A1D0E87425128BA9
        2EA4BA93A3E2FCBDFB6795575556DDA53C9AA991F865E5AA6D35526B8E512892
        4924924924928A9D2D435AB3F2F7ED9E53523529D163E4D54CF83F3E426D14B4
        F8D229A2E31331331331188C46231188C4534BA787F2F7ED9E6352AAA5D2F935
        533E07CF949B42A935C49B4D6E52D64A4BE92FA4BE82FA0BE92FA0BE92FA4BE9
        2FA44D3D7F2F7ED9E6D54AA934E97C9AA99E7F9F31368A5A7C89D7A9D759248D
        28A9D2D35523F2F7ED9E7554AA93A5D2F935533E1609E14DA1549F229A29A963
        A4C7498E931D263A4C7498E91EDD22DBA116522A552CFCBDFB679F552AA5552E
        97C9AA99E54C733CB85369D2D3E3A6A74BCA6532994CA653375CA6532994CA7E
        5E73F9639E8AE955269A27935533E2D369AA935C88E08208E0FCBBFB5F54D3E6
        A2BA5549A3CB935533C294B87E15382969AE2A5C34A86ADA4B692DA48A48A48A
        4B692DA4B693F2F7ED9D7B9DD4775BC6CEF2DD5CCAE8B8F2E5554C9E47412509
        52CA5B9F03E5C09B4D549AE14515DAD43E4FE5EFDB3C34D4E97B3BCB757290D1
        5D12B955D32269A50D28A7C2791E7AA6D09A6B8A8AEDE4FE5EFDB3C54D4E97B3
        BD4EEAE5A65744E913C0DC2BD17A2F45D4A2B74B1BA5F868E04DA69A6B5F3D19
        4576F23F2F7ED9E3A6A74BD9DEA77572A34AE89E17D56363DB6DE392C70E9716
        D5E2D382969A3CF5F324A2B8E3FCBDFB67914D4E97B3BB4EED3CCAE89E26DD25
        553464AA2FA8C8C6E7C4CA2EA455A4D6E50D64A0C941976CCBB665DB33ED147A
        ADB4773B2773B0773B06DEF6DEE33F2F7ED9E4D353A1ECEF53BB4F29695D1AB5
        047489150A2DA0B682DA0B291D1C8AEF325664ACBEB664ACC9597D65F517545C
        C9649249D04A5B490E981C09C34E4EA753A9D49E14DA7B1BEB757E5EFDB3CAA6
        A7455B3BCB769E66E510252293AD23F31F9DBA753A92C97C7B9B7710D3B4B482
        0B4B4B4B78544B83A5AA20A5C133CA4DD2FF002DB757E56E5D353A2AD9DEA776
        9E574D2BA14B7C2DC2BCC85E64A46D37C75EDDC60ACC15982A305460A8C0CC0C
        EDD981980EDD1811811811DBA305260A4C140B66942D8DB676D41DBD076F41DB
        D076FB676FB66DECECB3B6D93B7D83F2F24BF2C6B8774C3BA60DE306E98374C1
        BA60DE306F18378A76B7E8AA875554F32AA1D3AF968D4AB19632C658CB18E869
        781F3E4D2ED134F83A1D094515DC433F2FFED9D726D9936CC9B665DB32ED9976
        CCBB665DB32ED99768CBB6535D15723C89D2082BA2DD7AEB5B69CB2E65D5173E
        4B98CB5A79EA33B33D667A8CD599B70CBB8CCBB866DC32D665ACCB5197707B95
        9937117EE32FDC16EEE216E56CBF70C95992B2FAC75564D5392B3F2D75FCABCE
        A2BAA8AB6B769DDA787A42FF00DB85A2BA6D7AC8D265B49FFE67FF0099141141
        5243E3AF6D569A74BE2964B2110B909B5A470F43F2CFED4D7B4DB3B4DB3B5DB3
        B5DB3B6DA3B5DA3B5DA3B4DB3B4DB3B5DB3B5DA6769B653B14D1579F07467FEB
        1FF9E0686A4AA974BD7CB4B6A2D65B511516B21F22BDB55AB2B459598EB31D66
        2ACC7598EB315662ACC3598AB315661DC316E18B70C3B862ACC358B6AB42D8AD
        98370EDEB3B7ACEDEB3B7ACFCB4ADFCABAAF5559DDD6777B877551DD5477759D
        DD677551DDD4776CEED9DDB3BB6776D1B5BB4EED3CB84D554BA5F2AAA793D3C0
        79694D4E9134F482083F2EFED7D716E18F711656595965659596565B516D45AC
        B6A21EB45555156D6F53BAB9486935552E97CAAA9E479956EDA6746746747708
        CE8EE11DC23B847708EE11DC23B846793399D99DA33B29F51552D7A9677151DC
        5477159F969CFE55D6EA055D25D4A1574B528913489E0EBAF98940B99524D34E
        97CAAA9E198D6BA154AAA5D0FC07989C3D7F2CFED4E28E44B45CC9A855548BEB
        29DDDCA6ADADDA7769E5D54AA934D3E5554EB3025C1550AA5552E96886C86432
        190C86432190C86432190C86410C52886D4547E59FDA9AF6DB676DB676D41DB6
        D8FD2D076B4A7DAD27688ED51DA1DA33B36768D9DA5476959DA567695947A7DD
        A2A4E572EAA5549A69F2AAA639BD0E8743A72BC8A6AB44E4FCB9FB5F93D69254
        1723FF0053CC9549722D65AC8E7D74A6351CBAA88E4BAE9A4CB4196832ED9976
        CCBB666DB336D99B6CCDB665DB32ED9976CCBB665DB32ED99B6CCB414FA8A293
        F2DB557E56D6110884422110884744743A32085E16BA1549A8E2F2E1AA9E4554
        AA9574BA1A71E07F2C7ED3E57FE7C4D7426B869498FA70D54C721D29AAE87435
        D79F41F963F69EBDC6E9DC6E9DC6E9DC6E956FFA84775BE775BE777BE777BE77
        7BE775BE777BE777BE777BE777BE777BE777BE775BE775BE775BE775BE775BE7
        75BE775BE775EA0EEB7CEEB7CEEB7CEEB7CEEB7C5EAF7D35EA775AEE374EE378
        AB7B76A32EE19770CBB885BDB864ACCBB865DC9CDB866DC335666AC75D664DC3
        25664DC325664ACC95992B1D75B44924B2597171717125CCB99732491368FCB1
        FB4F915D30743A1D0E8283A1D0E9C6A0E8743A1D0E8743A1D0E840AA869CAD60
        853C8843A4B510422D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D1D2A6C45A7E59F
        DA9C9AA9D20823482082086432190C8E626D09CAD6190C864321EB0C8643D234
        EBE05B128D7F2CFED4D6592C965CD92D12CB99D4EA753A92C96896CEA753A9D4
        EA753A9D4EA753A9D4EA753A9D4EA753A89B2E67526A26A26A26A26A26A258DB
        2EA91351351351D4BAA2592C964B2592C964B2592C964B2592C964B2592C964B
        259F957F68F0CCF2DAF09E425CBF2F15F957F687F07E5CFF003F11F957F686AE
        9AA9F01E5CF6E08E7F992B9D452AD69AE47E55FDA1AD54D2A8C68C68C68C68C6
        8C68C68C68C68C68C68C68C68C68C68C68C68B2931A31A31A31A31A31A31A31A
        31A31A31A2C42DB48B116231A31A31A31A31A31A31A31A31A31A31A31A2C4588
        C68C6918D18D18D18D18D18D18D18D18D18D32C462DBA13A12A6AA29B31A31A3
        1A31A31A31A31A3F2B74FCA3AE6DC336E19B70CDB866DC336E19B70CDB866DC3
        36E19B70CDB866DC336E19B70CDB866DC1EF6E33A9D4EA753A9D4EA753A9D48F
        0E9F1F994BB6ADC54C34B70AADA697C8FCAFFB4B5CBB665DB32ED9976CCBB665
        DB32ED9976CCBB665DB32ED9976CCBB665DB32ED9976CCBB665DB32D065A0CBB
        68CB4196832D065A0CB4196832D0575D152F0F3C54ABAA75529B6A8753A19279
        F23F2BFED2D7DB364F6CD93DB364F6CD93DB364F6CD93DB364F6CD93DB364F6C
        D93DB364F6CD93DB364F6CD93DB364F6CD93DB364F6CD93DB364F6CD93DB364F
        6CDA17FF0037659ED9B27B66C9ED9B27B66C9EDBB33ED9B27B66C9ED9B27B66C
        9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B6
        6C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B6ECA3DB364
        F6CD917FF3B651EDBB285FFCEDA4DFFF003B62A6FF00F9FB551ED9B27B66C9ED
        9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9F96E9547E56D7DC3D49EE1
        EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A
        83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0
        F70F507B87A93DC3D41EE1EA0F70F527B87A83DC3D41EE1EA0F70F507B87A83D
        C3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70
        F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D
        41EE1EA0F70F507B87A93BCDF477BBF0FD7FA94DFF00F47D437EE1EA4F70F507
        B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83F2CD4EBF
        CA9AAF2F0A84BA7418BC52126CA69BC854555D355D57FEB45553A9F33F2BFED2
        D57978544A85E6FC5A29BA6D8A632AA5BA4AA53E6FE57FDA5AAF2F0A96ADF8B5
        4BA8A3FF0054BFF52B74AAB9FF0095FF00696ABCBC225E3EB6E9537EDBAFFF00
        5F3D1AE77E57FDA5AAF2F05225E3188DBA555565735D54A75572B87CB99F95FF
        00696ABCBC5B5E0D8E84E9A55293A9535BA36E92AA9D4DBF05F95FF697855CCF
        2F0085D44E9DA6D50E86E855535BA572A793F95FF697F228A5C3AB6EAA9D714D
        1CDF2E47E57FDA5C1E5CEF33CBF804DAF029F17E57FDA5E07CFC27972DBF091C
        5F95FF00696ABCB99E7E1D3E437E2FF2BFED2D579707971F9F888FE03CB5FCAF
        FB4B586432190C86432189496B2D6410D90C86432190C86432190C86433C910C
        86432190C86432190C86432190432190C86410C86432190F586432190C864321
        90C86432190C86432190C86432196BD3F2BFED2D52850C86432190C87A742191
        D6190C86432190C86432190C8634E1AD2190C86432190C86432190C86432190C
        54B218D74B486432190C869690C86432190C86432190C86432190C86432190C8
        64321907E57FDA5C524EB56889249249249249249D6116AD6492492492492757
        E4C5AC93C16A21704924924924924924924924EB5797E58FDA7AC10410411A42
        3A1088208208208208208208442211088208208208208208204B582082082082
        082082082082082082082082082082083A1F963F69F0F53A9D74E9AB6893A9D4
        EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9223A9D7593A9
        D4EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753AEBD4FCB1FB4
        F5B692CA4B692DA4B292CA4B292CA4B292CA4B692CA4B692DA4B692DA4B692DA
        4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4
        B292CA4B692DA4B292CA4B292DA4B692DA4B692DA4B692DA4B692DA4B692DA4B
        692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692CA4B292CA4B693F2CFE
        D4D7B4DD3B4DD3B4DD3B5DD6FB4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD
        3B5DD3B5DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4D
        D3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD1FA5DD42F49BA769BA
        769BA769BA769BA769BA769BA769BA769BA3F4BBC8ED774ED374ED374ED374ED
        374ED374ED374ED374ED374ED374ED374ED374ED374ED374ED374ED374ED374E
        D374ED374ED374ED374ED775BED374ED374ED374ED374FCB69D3F95B87CF993E
        0DB12E6273E0FCF8BF2F7ED9E0F3E77978094F44B9D3E07CF8FF002F7ED9D73D
        4CCF519EA33D467A8CF519EA33D467A8CF519EA16E56D64ACC95992B32565D5A
        3256CDEF515D2FB9DF3B9DF3B9DF3B9DF3B9DF3B9DF3B9DF3B9DF3B9DF28AF76
        D75D62AEA9756E4D5BB5A59B74CDBA66DD16EEEB6AADC8BEB2FACBEB2FACBEB2
        FACBEB1555CA4D2E182190C8643208208219044904104104107E5EFDB3CDA299
        E3DDAD514A7C9D9DB244FA4B6E5524BA9C6B4531C9DBA5AF03E7C9FCBFFB6799
        4D373885C3554A8A6AA9D4DA4CEAB8F6B6EFA9B4855175A5D45255537A492505
        E8B8BA04E74944A2514529B9F01E7CAFCBFF00B6796BABA55AB86616EEE64AB5
        8684E7828A1D55529509B85FE92A995391EB4A92235EAC4A07D4B58E0A55CD28
        F01E7CBFCBFF00B67974530B8B7F72789A139D14B746DA49BA5910A545754127
        9E8BA94A54AD3FF610DCEAA9753A6954AE04A1786FCBFF00B6795453C4D49BBB
        962E4ECED5ABA1524C86371C34D31AA50529A553829F243706DD16AE05C89F01
        F97FF6CF268A65F16E56A8A5B753E263A5D251B499E74FF9122552A67829479E
        ABA8DC27D47D046DD13C2972FA73BF2FFED9E4252D285C5B946ED6F06E98374C
        1BA60DD306E98374C3B861DD28F4ED35FF00E638436989153B9EB4AB9FFE745D
        5F449B6DDC5C50AE7D2383CBC4FE5FFDB3C8A69B57167A13EE283B8A0EE283B8
        A0EE283B8A0EE2817A8A1B55A9FF00D1BA9968FCABAA47AA4D9D16886E44A16A
        94B4952BC77E5FFDB3C7453C7BFB9690753A9D4EA75204AA652AA54EC6DD83AA
        1A527FE6A7034E539D6951ADC52B868A6D5E0BCB9BF97FF6CF1514CF1CA4743A
        1D0E8742693A17286E1A6EDAAA70948941368DB91A913295AD4534CF0EDD3E1B
        CF97F97FF6CF0D2AE710B86AA9534D753AEAE1A1D25915BAA69DAA3236C5FF00
        B1E6FAC373C14D2AA7D56A93AB868A6E7FC0FE5EFDB3C094BA69B571574535AC
        1B660DB30ED9876CC3B661DB16CED42DBA1BC7B4C487353A85E75552F54A5AE8
        79BEA85D44A16B4AB9A50BF81FCBDFB6759828A61716EEF34F2EE19B70CDB866
        DC336E19B70CDB82DDA9A5BB5D250AA54D5569E656E13D521285A2702A44F5F3
        74D36AF15E5C8FCBDFB675A29970D09A7C355D6F6F59DBD676F59DBD676F59DB
        D676F58BD3D6CEDAB36B66C6DC24A74A9C2E0A547052B469325AD36E8B7F84FC
        BDFB6785A13D6BA96DD3DC1DC9DC9DC9DC9DC9DC23B893B946DEE641B84DF525
        24DCBD194A2754A5F06DD1E3E09E1FCBDFB6789A4C96B4DCBF72AC7598EB31EE
        18F70C7B8595A31D6CB2B29DAAAA74D34D29BBB4892A72DEB4A9138D111D5285
        AD14BA9F911CA8F0DE5C1F97BF6CF21EE514BCDB666DB336D99B6CCDB666DB32
        EDB79B6C5B9B6D95329F22A7C090946AAA84970436E9A552B553FC04CE9F97BF
        6CF1EF6E5886BAA724104C289724B3676ED553856A3C90A9A5914914908A36A9
        4ACA0B281D14229A292DA4B282DA4B691534AE2EABF81FCBDFB678B73716DD2D
        B6F5871E4253AECEDDC3690BABE1B8DBA38129E6DC8552D174F1BF97BF6CF157
        46ED7560DC305660DC16C6E2787725EC6E3305660ACA7D3D6EA4924DDCF86A36
        E9B9EBE6251CDA20ABC723F2F7ED9E4CB9820885AD5571212BDA492D2509473A
        110BC7FE5EFDB3C899128D5A925AD2A709A8E248A29B56B4AE637FC079EBF97B
        F6CEBF319F319F319F318FF3149F319F319F319F319F319F319F31437F9824F9
        80F980F980F980F980F980A7F312A5FCCC7CCC7CCC2FCCB07CCE7CCE7CCE7CCE
        7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE
        7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE
        7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CD07CCE7CD07E4AF5BEE5F91BFA57DE
        FF00F67FD2BEF7FF00B3FE95F7BFFD9FF4AFBDFF00ECFF00A57DEFFF0067AFFF
        DA0008010202063F0043B22D916C8B645B22D916C8B645B22D916C8B645B7C27
        84F09E13C2784924924924924924924924924924924924924924924924924924
        92492492492492492492493C2784F09E12492493C2784F09E13C278493C27855
        DFF8C8BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BA
        E1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE
        1B88BAE1B88BAE19175C322EB8645D70DC45D70C8BAE19175C322EB86E22EB86
        45D70C8BAE19175C322EB8645D70C8BAE19175C322EB8645D70C8BAE19175C32
        2EB8645D70DC45D70C8BAE19175C322EB8645D70C8BAE19175C322EB8645D70C
        8BAE19175C322EB8645D70C8BAE19175C322EB8645D70C8BAE19175C322EB864
        5D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45
        D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D
        70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DCF84924924924924924
        9249249249249EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB
        47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB4
        7AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47
        AD156FE3322D916C8B645B22DBE1FFDA0008010302063F00FD03A08208208208
        1D16E8B745BA2DD16E8B745BA2DD16E8B745BA2DD16E8B745BA2DD16E8B745BF
        D2C7FA58E8B7FF0073DFF627745BA2DD16E8B745BA2DD16E8B745BA2DD16E8B7
        45BA2DD16E8B745BA2DD16E8B745BA2DD16E8B7FCC8208208208208208208208
        208208208208208208208208208208208208208208208208FAF9FFDA00080101
        01063F00FC0FFCBBEA9DBFF77CE7E0BFE5DF54EDFF00BBE73F05FF002EFAA76F
        FDDF39F82FF977D53B7FEEF9CFC17FCBBEA9DBFF0077CE7E0BFE5DF54EDFFBBE
        73F05FF2EFAA76FF00DDF39F82FF00977D53B7FEEF9CFC17FCBBEA9DBFF77CE7
        E0BFE5DF54EDFF00BBE73F05FF002EFAA76FFDDF39F82FF977D53B7FEEF9CFC1
        7FCBBEA9DBFF0077CE607C9769ED7D2AF92ED3DAFA55F25DA7B5F4ABE4BB4F6B
        E957C9769ED7D2A8FF00F0D27FD476AE957C9B68ED5D2AF936D1DABA55F26DA3
        B574ABE4DB476AE957C9B68ED5D2AF936D1DABA5501DCDB476AE957C9B68ED5D
        2AF936D1DABA55F26DA3B574ABE4DB476AE957C9B68ED5D2AF936D1DABA55F26
        DA3B574ABE4DB476AE957C9B68ED5D2AF936D1DABA55F26DA3B574ABE4DB476A
        E957C9B68ED5D2AF936D1DABA55F26DA3B574ABE4DB476AE957C9B68ED5D2AF9
        36D1DABA55F26DA3B574ABE4DB476AE957C9B68ED7D2AF936D1DAFA55F26DA3B
        5F4ABE4DB476BE957C9B68ED7D2AF93ED1DABA55F27DA3B574ABE4DB476BE957
        C9B68ED7D2AF936D1DAFA55F26DA3B5F4ABE4CF37FB8ED5D2AF936D1DAFA55F2
        6DA3B5F4ABE4DB476BE957C9B68ED7D2AF936D1DAFA55F26DA3B574ABE4DB476
        BE957C9B68ED7D2AF936D1DAFA55F27DA3B574ABE4DB476AE957C9B68ED5D2AF
        936D1DABA55F26DA7B574ABE4DB4F6AE957C9F68ED5D2AF936D1DABA552F7347
        37FB8ED7D2A88EE593FEA7B5F4ABE4BB4F6BE957C9769ED7D2AF92ED3DAFA55F
        25DA7B5F4ABE4BB4F6BE957C9769ED7D2AF92ED3DAFA55EA4763ECD63FB7D9BB
        277F77C766ECFCDC49E2D8E6FBC39EB36446D124C009F13C2A22E9AB064A7064
        7DC64C993264C993264C993264C993264C9934A993264C99328D231122BA6857
        4A65755DE04DC09AB09AB09AB4CA462F2E23D50FB8BBEFC4B9EC57B6651174F0
        EEF09C3887DF31DC88511EF18881BC2BDD74E9D3A714A70AF0A55E14ABC29510
        6385EA87DC5DF7E25CF62E0E0B8460C5BFC654464C4C43EFB8851A779E69C288
        310707D50FB8BBEFC4B9EC57E5B902C8CB1067C5443EF3E0C444288F78C44844
        9314E1384E2B4E9D3A74E9EA57AA57A42E307D50FB8BBEFC4B9EC5709DD8382A
        07DD8A887DE3F962A2149EF18608994A6072417F9A74F527A93D49D39A13A74E
        9D444BBBEA87DC5DF7E25CF63A07DC542D7B88C5443E3F34C30A4A30A214463D
        9327DC88972833A88DCF543EE2EFBF12E7B11C3864169910E3F2CD8A8879F1B1
        3EE189817C19144622209CE1394E5394E53953A9D4E9A59C9299446E7AA1F717
        7DF8973DBC20694431134D8A887C5C4FB862FF003C188F785118711EF0AED6AE
        D6AED6AED6AED6AED6A4B3416577DF14D5A6AD3569AB5EA81CBFC8BBECFF00E4
        B9EDE390CC510642A071310F9313C031B2518311EF5263201E73930FD4FF00B8
        7BEBC4B9EC0931D9E6502B362621E7C18292CC00DEB11EF0A230E51113C5022C
        829930F6ABA15D0AE8574264C997AA1F7177DF8973D812103DCAF0A028192D87
        18DCE18A815251898879C6E694496120032A801C522E90A36ADC26E2AC91961B
        C65A70223DE14461E5138524A32E27D50FB8BBEFC4B9EC216818112C540C96C5
        E18D887DCCF9567C4443CE14C6D8108146C992704E5512624301BD3F2C08D214
        66C2CCA1C99C28C6319F11EA87DC5DF7E25CF618B564C0862B25A0E31B117B87
        765A7762A753EE09224CBEE46D59FD3684A649913C5FD464CDBDA33E07085113
        E0C9B9032D9C47AA1F7177DF8973D8816AC9811282B25B17ACE3621F26090866
        960A366102EBF49973A02D484480E5500231739936F8969DDFC9472EE66DDC9B
        902DC187EA87DC5DF7E25CF6245AB260431592D8BD671A4D912CE32E0C6640D9
        311389D3FE92C5432E697718289C53A7C738578529C6795478C21ED0AF0A42BE
        290AF8A55F14ABE15F15A85AB724C6557EA3A15EA8ABC682B8B62D7EA78110DC
        F543EE2EFBF12E7B142D5930227592D0BD671BC61EF1F9EE4B27B5466C884265
        122400840549EB57AB57AB4F5A925CC7111B260722BD50578ABC55E2AF157AB0
        AF1A55F34957CD253D69CD29CD2A7A7720A597D8A2E3D9B92290EEBA7C204181
        1282140C9CE07197D8BD50FB8BBEFC4B9EC58B564C08C8B25B17ACE3499A70A5
        888B45716D52A318E50818C416CDB8705B111B3219F3AC89D3A74E9D3A74F820
        CCB4414232AD3BB2628106044A17A9B68BDAFE43DF44FBFBCB9EC60B564C0851
        6B42F59C6F185AF6013220DE124306299326DC88F7E2222F6E384E138AD5EE15
        7856AF0AD5E57EA57AA0AF2BCAF2BCAF2BC6A4E6A4E6A4E5441268D09CD2A7A5
        4F4A634A63494C692A16ACCB34A55CACAD5D76B4AF53C0900FE45DF600FF00EC
        B9EC0D595AB2AE1A95CE0573815CE05AB2AE15AB35216ACD92086281B567896A
        718A2770C99A289174BFB7773706E413EE3A994CB2E61BCB36273288C3817E14
        CBD50FB8BBEFC4B9EC0BD6691A15EB348D0AF59A46857ECD2342BF6691A15FB3
        48D0AF8A46857C5216B05216B054AF887B57E9B42D7B311C2570A9043732E651
        0DBBF96E8814E53A74F89307CEA0408870629856AE84C1327142F82CDEC4F527
        15274FC09EA57B814B6B815EF7ABC55E2AF957CD2AF9A55F349578D255E34957
        8D255E34952DB3495EA61CBFC83BE7C4B9EC78B564C0851125A17ACE070284E8
        C0640B3B152339F6E040CEEB28DDFCD4AA50997F9AFF0035352A6A5441F76232
        10C542D4D361BA74E9F787A99F7077CF88F3D80F6A9F827B54FC139A7E09CD3F
        04E691A15E348D0AF1A4684E691A139A468578FF008F7292D1AB427348D085AB
        36AD023D943604B2059D3BCAA4F60C294485669B099315F04C684C98E233862A
        E9F72BA55D2AEABAAE702B9C0AEF026E04C9B81370261526AD3569AB4C01F6A6
        14A614A04112E7F827149D09C57A138AF42BC2B57856BD4D05C7F21EFA1FF92E
        7B02E598E68ABA15C14957056AE057456AE8A4AB82B5705255CACAB9595AB14A
        D58A55CAD444845EB266DCCE26513898162B80E049461C47BC62BF2C7CBB99A7
        0A49F07D4FFB87BEBC4B9EC0D59A0AB87DB0570D0AE1A15C341570D055D34157
        4D0AE9A131A15D3426DD16ACC84288908BD64CD8C81503EEC5923DF888D08836
        7815D2AE9A95D5755D5755D5755D5755D5755D576B576B5764C9157692AE884F
        2ABA295745255D0AE8A4AF534973FC87BE89FF00B973D81785215E1EF2149681
        192215E1484F595785255E09EB4C9D356A6DC65003DA5087BF1B03EE2A069C5C
        47BC6144FB86E40D2A07FCF78E7C8B3607A99F7077CF88F3D8F73494E69578D2
        A4B4692AF9A4A1685A324C4A8871786320540B8C5C47BC6044FB86040FB8A81F
        7109AADC64C993549AA4D526A93549AA4C993264C684D5263051164D098D057A
        99F7077CF88F3D80E69F82E552342BC6AD0AF1A94968D4A5B66196015F3405AC
        3405ACABE2AFFF00C3F157E3EC1F157EA5273926581525B10F6157856AF057C2
        16ACDBB31F7CAA579E18C95D40BE2E23DE3733E29B1F9A70A2258AF53BEE1EFA
        F12E7B159464C8A224381FE9E150C0931F90CCA070A5A7078C3DE3132986457B
        855EE157AA2AF5455EA8ABD5157AA2AF5455EA8ABD5157AA2AF5455EA8ABD515
        7AA2AF54548639A055E927102BD4E218FF0021EFA23FEE5CF603264C993264CB
        228C37088489B7AE433152E2E21A718881956505AD268EF1F52FEE0EF9F11E7B
        FA2C43E14AA419B0623DE311033ACA32EF02BD4BFB83BE7C479EC0BE6A57CD4A
        F9A95F35288E70C3248B58681A16B4D4B5A680B59C0B5A680B5A680B58680B58
        680B58680B5A680B5A680B58680B5A681A16B4D0342D69A0685AD340D0B5A681
        A16B8D0342D71A0685AE340D0B5A681A16B4D0342D69A0685AD340D0B5A681A1
        4BCE139A4D0A22D9A95F352BE6A51E3CAAF9A16B0D014B6CD4AF1A95F352BE6A
        D0AF157D5F578ABC5445AA60AF702BD5057B815FE057B815EE057F8140DA8839
        60BE014D40535015D142BB52715A715A715A715A6180C134BB9EA5FDC1DF3E23
        CF626207B77D669C288C18D18B65F14E5394E5394E5394E9D394E5394E5394E5
        394E5394E5403EE395EA5FDC1DF3E23CF62A207BB072E29B17C2A2378326DE30
        0FC181EA67DC1DF3E23CF60394E5395089AD39A4A729CD69CD2539A4A73494E6
        929CD25484FB22539A4A73494E6929CD2539A4A73494E6929CD2539A4A73494E
        6929CD2539A4A73494E6929CD2539A4A73494E6929CD2539A4A735A73494E692
        9CD2539A4A73494E6929CD2539A4A73494E7DB129CD2539A4A73494E6929CD29
        CA729CA729CA729CA729CA729CA729CA729CA729CA729CA729CAF523EBFDF1E2
        3CF61494E2E21D427DE912F8BCDBEBD48FAFF7C788F3DBCE5A77944BE373EF29
        29C3F523EBFDF1E23CF604A200FB28DE19B7844BEF08638DB364DA31E28B2265
        2D9364168E23D48FAFF7C788F3D806CF1CDB2658E44E5394E5394E5394E5394E
        5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394
        E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E7DC
        9D016BF5DA7CC171F9B240325AB2608D936F8E498C42729CA729CA729CA72BD4
        9193BFFBE3C479EC0BD57C15EABE0AF55F057AAF82BD57C15EABE0AF55F057AA
        F82BD57C15EABE0AF55F057AAF82BD57C15EABE0AF55F057AAF82BD57C140DA7
        9186320B3EF4FCB120E440D91FA4F2865408B50B4C415C4B262498DA2313EA57
        D7FBE7C479EC0D48A56A452B52295A914AD48A56A452B52295A914AD48A56A45
        2B52295A914AD48A56A452B52295A914AD48A56A452B53656A42D48A56A6CAD4
        D95A9B2B53656A6CAD4D95A9B2A1679B160BC41DEF9F0C5968BA80B008139518
        46C5B11E2A02C8694938AF52BEBFDF3E23CF606B2D55A16B2D55A16B2D55A16B
        2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B
        2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B
        2D55A16B2D55A15FB5568527396AAD0B596AAD0B596AAD0B596AAD0B596AAD0A
        1C7B55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB5568
        5ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB5568
        5ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB5568
        5ACB55685ACB55685ACB50CB2685ACB55685ACB55685036AD1E3491934231B76
        B336842D59E72D187B3428FF0076D08CB09342BF6801206D0B596AAD0B596AAD
        0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD
        0BD4DB025163F90F7D5904E6EF2E78603D9FFDBF15C9A172685C9A172685C9A1
        72685C9A172685C9A172685C9A172685C9A172685C9A172685C9A172685C9A17
        2685C9A147F4FB609ECD0B9342E4D09ECD1F15C9A172685C9A172685C9A17268
        5C9A172685C9A172685C9A172685C9A172685C9A172685C9A172685C9A172685
        C9A172685C9A172685C9A172685C9A172685C995A4F8A85BB7641C90F8A81366
        5BB6A1270A20F141F67C57244D20F8AE4D0B9342E4D0B9342E4D0B9342E4D0B9
        342E4D0B9342E4D0BD4CB65ED7F20EF9B46194F78F3C77D839660A45ECDF9002
        2720444605C2B11319CC26448110588566C9BD1E3289F6637D4AFAFF007CF88F
        3DBEC08B4C9F811DF9FA5F32E358278C24B40BE791445F0E32AFEDDA3026E913
        2209899F1DEA57D7FBE7C479EFEB1FA447D8AD59278969C13911B766D71BFF00
        5E751B25E592482FCF1FEA57D7FBE7C479EDFDF96FAB366CC8211F6A26D4A6C9
        90D0B8A2CF162F0C0FCF1BEA57D7FBE7C479EDEF26FF009584A46552002CE4CC
        8036636611080038A04C30B3633D4AFAFF007CF88F3DBDA4C5CB4EF3E358960E
        11B76844300AC9E2C0112819D0B529B2E0289C4442CF8AF52BEBFDF3E23CF6F5
        863728DE200F628131B53C194230B36A5198A36A3C6B4D640951044419B159D4
        B89F52BEBFDF3E23CF607E7BC3F3C7C42CF8F0724AB8D64C41962ACD88C4DE30
        FF0019F1D9B11EA57D7FBE7C479EC00B28C7426CBBC73A81C7C86148DE1F961F
        A95F5FEF9F11E7B0A459F179BFAA4B83EA57D7FBE7C479EC3CFF00D03F2FE81F
        9E07A95F5FEF9F11E7B139BFA367DF9EA57D7FBE7C479EC01229D4EA753A9D49
        46E3264EB329D4EA753A9D4EA753A9D4EA7C09D4EA753A9D4EA753A9D4EA74CB
        F353A9D4E9A54CA753A9D4FBB3A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9
        D4E9B73D49FAFF007CF88F3D82E9D3A74E9D64F6A7F7C24518C7D8A51009D3A7
        4E9D3A74E9D3A7463BAE9D3A74E9D3A74E9D3A74E9D343DA9A3EC2A01674E9D3
        A7453EE3A74E9D3A74E9D3A74E9D3A74E9D3A74E9D44C9ED5EA57D7FBE7C479E
        C264C9936E0932AE04646907B13264C993264C993264C9B75B7193264C993264
        C993264C8C8994A37193264DBAC9B7593264C993264C993264C993264C993212
        457A95F7077CF88F3D8A852B2A6E14DFD7732F52FEE0EF9F11E7B0993265C384
        C993264C993264C993264C993264C993264C993264DBAC9B77F24C993264C993
        264C993264C993264C993264C993264CBF352265EA5FDC1DF3E23CF603264C99
        3264C993264DB8C993264C993264C993264C993264C993264C993264C993264C
        993264C993264C993264C993264C993264C993264C993264C9932F52FEE0EF9F
        11E7B026A54D4A9A952421398A9A95352A6A54D4A9A95352A6A54D4A9BD91534
        72454D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A5
        4D4A9A95352A6A54D198454B0A54D4A9A95352A6A54D4A9A95352A6A530232C5
        4D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A54D4A
        9A95352A6A54D4A92109CC54D4A9A95352A6A57A9B64BD9FE43DF40FBBBCB9EC
        2CD8C817DE79E618C928526F3FCF0BD50FB8BBEFC4B9EC1CD8ECD977848B2ACF
        39DFF9B2E1FAA1F7177DF8973D819BDD2E2B4C1024C233489F813F027E04FC0A
        4B5EE91486A0B8B66D40B93250B59559D0B59559D0B59559D0B59559D0B59559
        D0B59559D0B59559D0B59559D0A4B64FBACE85FAED46D3969332BD5043F5C685
        188C83FC414232FB95FA82BD5057AA0AF4A732BFEF82BD52BD52BD52BD52BD52
        BD52BD5290C72040131339DE39B11EA87DC5DF7E25CF63A25B0E4BE58FF8994B
        29329267C48B644BC9078533CA11B508C240142D07C88931244408224CF294FB
        B12F89897C9BC73627D50FB8BBEFC4B9EC6C29524984496E146D196356652A95
        B2E1C4DD0F09CE45087B00950B328394A811ED2A23F5648CCA2536EC48902629
        8A651DC74E9D44B0619D3EF0CD9315EA87DC5DF7E25CF6320A184F084E57FA45
        D1F9E048D93078B4E619D7143597421213292AD03C9962B3B44A8061819A7500
        D3EE90A01664CB2414260E5406FBF543EE2EFBF12E7B1919CE19B0185E861443
        AC877042532421957FA8DF8284200480850238D6728500200B99D407BF0009CA
        03766DC86E800C62A14EF0E0C67AA1F7177DF8973D8B89F761C05E2D986559E7
        C4F1EDCF25913A301FAB215C60D3ACC5C059CB60E7321C095D403E044DE356F0
        97DD8DF543EE2EFBF12E7B159861C4CA580CE89B4E5F10232878665C72C20409
        A2A13D998A249CC0297DA724513919470227DD811994548A40A2D95718B4C378
        7B31DEA87DC5DF7E25CF62A187187E96128902BB58576B0AED615DAC2BB58574
        5215D1484CEC22142D8005A9220C501C960A22D7B02043990852ACD930333AFD
        3BB184AB32804C997FA44CB363E18FF543EE2EFBF12E7B139CB9C3225C910245
        CAA172A85CAA172A85CAA172A853D0A001A159803688C8254D18CE8D978314E8
        162A01B2E0410130DD0A18100A01863736F2F543EE2EFBF12E7B1119CB61F12C
        DE37889826C39013056E485A9BD881E517CDED46072A82B2A1397510F9167C9B
        BC270225F07FD45CEF3CD971BEA87DC5DF7E25CF61C4B09F2E1BD2AF702BDC0A
        F702BDC0AF702BC2A57B8165E042C83002599120CA18A7847DCA44E892E5673B
        990E5502EA27DD8119B078C5E6FE83EA87DC5DF7E25CF61429425801844960B8
        D6A8C8371AA4D526A935488B424B53C2A42C9110FED0ADE41201EF405B120941
        CA14210166580A944EE44991669B02244814B28CB888961FD0BD50FB8BBEFC4B
        9EC186550A4E18E333C2298D2531A4A63494C69298D2531A4A89B318C8012540
        D9842510251FD0EE25752084180FF0EA561221B900C1F024F794042033EE4436
        4522860001A7391406F981C4FAA1F7177DF8973D819B2A8CE70F8B61C5E2AFD4
        AF1A95E352BC6A578D4AF1A95E352E2DAB7C522506447F5F1ED1900004E871CF
        1AD3C7F2500FBB00FC1819CA8527022C540C8774012C54279CFF0043F543EE2E
        FBF12E7B038C42886C8A4C13C572CAF034ABC2B57856AF0AD5E15ABC2B57856A
        22D0AD5E15AE35A2090D059F7419E618312FC18113B92A816CBB91378EFD9164
        C2F543EE2EFBF12E7B0A2242A0643BA6D1F70CEAE1A55CAD5CAD5CAD5CAD5CAD
        5DFF00895C30F6AB869448B3002494CEA2819B70C583295E6C0896189E338174
        6FFF00CD4B83EA87DC5DF7E25CF61CAA05B2EE4788602402069574D6AE9A0E95
        74D074ABA683A55D341D2AE9F7C5478861EC2AEDAAF4A8104672182003090291
        84FBB09860669D4BBB050C0CC2F1500A224389CF9167CBBEBD50FB8BBEFC4B9E
        C4DF1908C8AF857C2BE15F0AF857C289B608982BE1002D024B01B901BBC5133E
        0003D880CB812E040280A7025A77FC8BF2DCF543EE2EFBF12E7B11C5B378CF90
        6E443E04AA27DC3778D6AF160660B3E032FF0035FE6A0044A96CCA55DA95C575
        44D90322BA15D0AE857429043D985946FF00C9B9EA87DC5DF7E25CF61C4CA587
        B51265267DD90473ACF914A20A27DDBBC7224174652A25470A5A571AD0979230
        3364C6C92FB164390EFED0BD50FB8BBEFC4B9EC38F1601808891356135615DAC
        23256137BA210FD3ED64D584D585FAA41398CA800C0420B365C2072A89BB6702
        0A18DE159346FF00F543EE2EFBF12E7B1500C1CA787B13A94C7DB8107C3007BC
        A80DE1F96E326DFB22C8BD50FB8BBEFC4B9EC4C034E54376054B28CBB99F0C00
        224ACA673811A3199E61839F7F7AA1F7177DF8973D81E5CDB3A85E5CDB3A85E5
        CDB3A85E5CDB3A85E5DF6FFCDF50BCB9B6750BCB9B6750BCB9B6750BCB9B6750
        BCB9B6750BCB9B6750A4FE3B0193FDDF52BCBBB5F52BCBDB5F52BCBBB5F52BCB
        BB5F52BCBBB5F52BCBBB5F52BCBBB5F52A3FFE72266FF9CEA1796F6CEA1796F6
        CEA1796F6CEA1796E4FF00ACEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA17
        96F6CEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA179
        6F6CEA1796E5CBFEF3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A
        85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A8
        5E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85
        E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E
        5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5
        ADB3A85FCFFBC7FB5FD9FF007FDF7DEBDB7FB3C6E3713FBBDBF9DE738B1808C2
        2F0FC17FCBBEA9DBFF0077CE7E0BFE5DF54EDFFBBE73F05FF2EFAA76FF00DDF3
        9F82FF00977D53B7FEEF9CFC17FCBBEA9DBFF77CE607FFD9}
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 151.181200000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 555.590910000000000000
          Top = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date]')
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 3.779530000000000000
          Width = 294.803340000000000000
          Height = 113.385900000000000000
          Frame.Typ = []
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000032000
            000160080600000043B71D2D0000001974455874536F6674776172650041646F
            626520496D616765526561647971C9653C0000032269545874584D4C3A636F6D
            2E61646F62652E786D7000000000003C3F787061636B657420626567696E3D22
            EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B6339
            64223F3E203C783A786D706D65746120786D6C6E733A783D2261646F62653A6E
            733A6D6574612F2220783A786D70746B3D2241646F626520584D5020436F7265
            20352E332D633031312036362E3134353636312C20323031322F30322F30362D
            31343A35363A32372020202020202020223E203C7264663A52444620786D6C6E
            733A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F3032
            2F32322D7264662D73796E7461782D6E7323223E203C7264663A446573637269
            7074696F6E207264663A61626F75743D222220786D6C6E733A786D703D226874
            74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C6E
            733A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F786170
            2F312E302F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E73
            2E61646F62652E636F6D2F7861702F312E302F73547970652F5265736F757263
            65526566232220786D703A43726561746F72546F6F6C3D2241646F6265205068
            6F746F73686F7020435336202857696E646F7773292220786D704D4D3A496E73
            74616E636549443D22786D702E6969643A373845424139464332453933313145
            38384135324243373835443934393734362220786D704D4D3A446F63756D656E
            7449443D22786D702E6469643A37384542413946443245393331314538384135
            32424337383544393439373436223E203C786D704D4D3A446572697665644672
            6F6D2073745265663A696E7374616E636549443D22786D702E6969643A373845
            4241394641324539333131453838413532424337383544393439373436222073
            745265663A646F63756D656E7449443D22786D702E6469643A37384542413946
            42324539333131453838413532424337383544393439373436222F3E203C2F72
            64663A4465736372697074696F6E3E203C2F7264663A5244463E203C2F783A78
            6D706D6574613E203C3F787061636B657420656E643D2272223F3E3B6DFC8B00
            00B8544944415478DAEC9D059C1C55F2C76BD693DD64E34E0CB760871C76B8DF
            FF700F040B1E0E8760C1DD3D5890C3E170087010DCDD354182C565372B23FFFA
            F5EBF1999D9E99EE7EDDD3F5CDA7B263DD53FDA6E5FDFABDAA0AC562310A4D7C
            810421B8C494C5525F8AA5BC97F99AC7088588A251A2258B958F789E8B6884A8
            A191A85B0FF558100441288E681F5ABEF663FAB0E7C1C6E9B6835F8A854A5B55
            A8D072A1225FB7F01DB12ED69173B5395E4CDFDE8C0F84AA32DEA966AB4A79A1
            2EE3F3F0A83EE5859A1CEB4BFD8EAA8CEFAFE27FA1C4637C36FDFDEA94EFAE4E
            733BC4CF1397F550E6E76349BFCD0F84521B3394FA5EEEB688253E1FCAF15B63
            3B6289C7A15CEB0AA5AC3394EF3B941FA150113B4BDA76A43CAECAB58EAAACF5
            E5F23556957C9CB5DE2423F98DB5F9EF8E6C1B87448008820810411004C10222
            404480646C67BEB6100142ABB2ADCEB621DB3AE6E33837880011041120822008
            821544808800C9D8CE7C6D114001B21A3F86E8D88A6D15B635323EF805DBB5FC
            9DB7F3DF4E112082200244100441B0820810112019DB99AF2D02204046B2ADCF
            AFB119A31CABA57896BAD093FC991B59A43CABB62B6436B1081021F088001104
            41102C2002440448C676E66B8B0A14207D78814DF953EBF2E32DD956A4F41F2F
            157432EE60BB91EDC3E428890810414841048820088260011120224032B6335F
            5B54800069E21731956A6B32463A8C518EEED43573D930C5EA46DEEA1F53FD10
            012208598800110441102C2002440448C676E66B0B9F0A9015D83660DB9C6D13
            B6C1648DE96C37B34DE615CD33B73ACD0F11208290850810411004C102224044
            80646C67BEB6F08900E10E01FD9D54E03884C77A541C9F1302CBAB4277F2DFF6
            E4EF200244102C200244100441B0800810112019DB99AF2D3C2C4096E6FFFF41
            C9A955C3A878DE62BB8AD7F5A0DA84F4DFC8DCEA343F44800842162240044110
            040B8800110192B19DF9DAC263020481E35BB0EDC0B6165B2D95C654B6ABF90B
            9F35BFD8DC0411208250022240044110040B8800110192B19DF9DA42B300E945
            6A9403D9AAB6651B4DE5F1107FCB4DFCF725F30B29EDAF081041280511208220
            08820544808800C9D8CE7C6DA141808C60DB94543CC7366CBDA97CFE43986A45
            F47EDA778B0011043B1001220882205840048808908CEDCCD7162E0990954889
            8E7F9A7FEBA87CC26CB7F2F6DEC07F3FCBB97D224004C10E4480088220081610
            01220224633BF3B5858302640D52D3AB7634FFDA053A06B7B2A8B982FF7E9B3D
            AD4B048820D88C0810411004C10222404480646C67BEB6B059808CE1FFB72725
            3AD621FBB98DBFE432FEFB75FEB81211208260332240044110040B8800110192
            B19DF9DAC20601B22AFF07C1F17F6C7F23DB31BE7F8A213C42F445DC7F112082
            E01A2240044110040B8800110192B19DF9DAA24401B20ADBCE6CDB914A9DEB04
            E800DCCE7E5DC55FFC65E6688B081041700D1120822008820544808800C9D8CE
            7C6D518400593EA4463930C5CACE988E4C3AD96E65BB86EDEB34E12102441074
            200244100441B0800810112019DB99AF2D0A0890A12C40203AFE45AA5647AE15
            DAC964FE8ACBD88DEF321A814480088236448008822008161001220224633BF3
            B5450E01D29D54BADC5D49D5EAE849CEF300DB65ECCBFBD9B126224004413322
            40044110040B8800110192B19DF9DA2245806CC10F7721253CFA913B3CC1763E
            DBBB495F44800882C710012208826DACC83694D4D51AB6806D3ADB5FBA1D136C
            40048808908CEDCCD31663B8D30FD1B107DBF2E41E8FB15DC1BEBC96EAAE0810
            41F02422400441B08D66B66E6CC3D856601BC536908D0F3EE3CAFC15DB376CEF
            B1FDAADB59A14844808800C9D8CE941787900A2687E8D884DCE525B68B59683C
            9FF437F9A6081041F02422400441709426B60D48DD09DD886D2552A2642EDBEF
            6C8FB27DCEF626DB12DDCE0A5D2002440448C676928AE7D897547C472F72179C
            372E6487EEC5937C81EF224004C19388001104C17520449076131970D64C79FD
            53B667D8DE677B8D64EA96B71001220244F9B532A9988EBDC8DD295671BE65BB
            9C8CEC56C90D10012208BE42048820085A4160EA16A43A33FF97F1DE076C5349
            4DD99AC6365FB7B3814604489005089CDB9DD471BA83C59FC06E66B15DC0ED72
            2DA98282691B200244107C85081041103C037A68DB909ACE81691D0D29EFB592
            12216FB03DC5F619A59FB904A71101124401B206BFB00FA9D88E61D65BDF56C2
            6C57B328B8803075332B0645048820F810112082207812F4CCB62575D71505CB
            BA67BCFF35DB8BA4C408A66BB5EA76B8E21101121401C217CAAA1DF9D17EA446
            2799A8F586B795AA5BF8BF4BD8A9EF13A240048820540222400441F03CC8B0B3
            13A95191F572BC8F54BFB8983F4E2A234E9B6E872B121120952E40C6F07F6349
            8D762C65BDA51DE1496E9F49BC5D1FC69D140122081585081041107C05326AA1
            83B4275BFF1CEFC7C508B26B4DD5ED6C452102A4120508DE4040F93EFCEA3FAD
            B7AEDDC4E29BCA8223741E6FCF7FD3A782890011840A4304882008BE04293F21
            420E62FB5B9ECF205BCE23A67DA0DB61DF2302A49204C8D23135C56A2C37CC28
            EBADEA18B87180188F5BC9140C224004A1A21101220882EF41E0FA61A46245F2
            318DED3F6C0FB22DD4EDB02F110152090204311D10EDBBF3EBB92A0ABA0D02CC
            2FE40EFBF9B15855BBF257048820040011208220540CA82902218279EC0D793E
            830288F7B1DDC3F6B66E877D850810BF0A909EFC18A38507B2AD6BBD059D2211
            7C723B196975E90774D863B1785B890011840020024410848A6334DB116CE3D9
            7A74F1B95708533E881E60EBD4EDB4E71101E23701B21CFF378ED454ABA1D65B
            CE71FEC7AE9ECEFEBD1D6F1B11208210384480088250B12093CF216C47B1F5EE
            E273DF931222B8233B4BB7D39E4504885F04C8C66C07F36B7B65AF54078914BE
            DFB19DCFED7267DAB43011208210444480088250F10C623B8EED48CAAE2792CA
            3C522204B507BED1EDB4E71001E2650182DEED9EFC3E46FD36B1DE4AAE801A3D
            E7B25D4EC64863358900110122041E1120822004068C889C4E6A6A5657E08477
            1BDB756C9FE876DA338800F1A200E94B2AA8FC60B665ADB78E6BDCC77EF23117
            FA31E9BB08101120822002441084E0B12ADBC964D43E280802D62F23A33E41C0
            1101E22501B21219D30BABC6914A49ED355EAB32C47EE8D5ECF8141120224004
            4104882008C10573E5CF61FB8785CF2246E442B61F753BAD0D11205E1020D867
            9160610FEB2DE12A7FB14D62BBB18AE2FE8B0011012208598800110421F0604A
            D6696CC30B7CAE8D547CC8256CBFEA76DA754480E81420A8520EE1B18DF51670
            9D2B797B2FE0369A4DA42688890051CF44800842162240044110183E41D019A4
            A666156211DB356C97B22DD0EDB86B8800715B80A0C78A9A3687B3AD677DCB5D
            E755B613D8DE4B9D26260224B9AC081041C84204882008420AEB108AA3116D6E
            E1B3334989963B743BED0A2240DC1220B5A40A6A62C46305EB5BEC3A18053C99
            42D5F7265F1201627A90B6AC081041C84204882008420ED001C408479385CFBE
            452ACDE8B3BA9D761411204E0B906652FB1D6CA4F52DD5024600CF248C0086AA
            535E1601627A90B6AC081041C84204882008421E90B617F11E7B5AFCFC3D6C13
            D97ED1EDB8238800714A80603F63D1518574BA038B69470DBCC87622FBFA7172
            3B4480A46EBFE941DAB2224004210B112082200805D89FD468487F0B9F5D486A
            0AD7C5BA9DB61D1120760B901144B547911AF1B032D2A6933F785B9031EE46B5
            4D2922400448DAF69B1EA42D2B024410B210012208826001DC994661C25D2D7E
            1ED3B28E657B47B7E3B62102C42E01B232DB045275681A4B693F9799CC3DE653
            88EAE7A9A72240D2FE8A001184521001220882500407B25DCBD6DDE2E73157FE
            24B676DD8E978D08907205080A6042941E505AABB90EC4F3E984695769F12A22
            40D2FE8A0011845210012208825024CB11EE0A5B2B6008BE61FB37DB73BA1D2F
            0B1120A50A108C78204DEDB8D25ACB75A2BC01A7B2FF972445820890E4431120
            82600322400441104A0499AF4E2FE2F3180D419D9136DD8E978408906205080B
            8FAAE3488D9AA1014B6B2C57A97A8490482144DF2A81200224F53B92FE910810
            41280F112082200865F07F6CB7B3F5B5F8F91FD80E669BA6DBF1A21101625580
            AC1052235E87505A4FDDD3A0A6CD2944B5F724374D0448E67724FD2311208250
            1E2240044110CA046954A7B06D56C432E75371A327FA11015248808C22A3134F
            48A75B4DFEE17AB6D342A8E961D440241120224004C1694480088220D8C4E56C
            C715F1F9D7498D867CA3DB714B8800C92740962135E281DFB29EFCC34704C114
            AA7A3EB9352240940B224004C1614480088220D80852ABDE4DD6BBCA8807196F
            2EE36D4480640A104CBB434CCFF1E49FA9567150D3E32CB519F14E331001A25C
            1001928FA5C97A0AC0256CDC3BD3321C8826C7396ABEF9BCC45355D9F833E0CF
            15022440BA3529011209EBF6DA2D0690F7ABEAEAE05BAA8494A882975983EDBF
            6C238A58E626B62328FD6CEC2D4480C4B7174503914EF718B21EFBE315FE4746
            5AE8D087C9ED14012202C41ADDD86691F5E235F8055199558700C177E2423F9B
            F4888FF877CE31FDD025C25A48FD069944CDB6C1FB7F92FA5D7F31FD9D69BEE6
            3001112078AF8A7FFEC65EBC1754076514E461B65D743BE14120CAFED2ED8450
            F1F4637B808A8B0BF9806D5FB6AF753B9F131120F5BCBD986A7524A9B81F3F81
            7EC624B6CBB2364E04088900B1C68A6C5FEA7642701C0893196CBFB2BDC7F615
            1BEE58FC64EFD7044480007C0E22A4A997FA1BF3434AC4B2C03EB3826E273C06
            C43D04482014A8E009EEA0E2EA3FA0A3B83FDB23BA1DCF22D80204D3E4505072
            E9D2B6582B53D98EE2DFEAFB9C1B2702844480580377341FD6ED84A08556B6EF
            D85E667B930D81630BCA5B658004088886896AF824DAA38F12205EDDAEF2E10D
            A4DFD9EA743BE2315E62DB5CB71342E0C05CFB49452E939CA3EF158229407660
            3B936DEDD21B4E1B73491540BCC3D8FE7C19BC44809008106B9CC6769E6E2704
            4F80D81A8891A7D91E659B57FC2A022640003EDFAD91A8A1A992A7626DC8F69A
            6E273CC8B56C13743B2104126448BAA5C86570B3716FB64EDDCE1B044B806CCE
            2F22A5EE16E5369B269E203555ECD7C4F68B00495F460448D1DCC9B69F6E2704
            CF81919027D9EE622B62A70EA0000108446FECC9E7D326352A5279A000D664DD
            4E7890C34905FB0A820E50B410378B8A8947FC9C6D27B6EF8B58C61982214056
            2535F2E4D7F8B945A482E3EFC8DC4E112019CB8800299A77D8D6D1ED84E06910
            C8883B6D53A860B69F800A104CBFC2671B7B13D5D456E248C815A4B2B408E96C
            C2F68A6E278440B33EDB736C3D8A5806A3DDE810BFA4D5F3CA1620C81A8894BA
            C716F72D9EE2415253AE7EC9B59D2240329611015214F8F5FF60EBA5DB11C117
            FCC0760DDBCD9457880454800023289D3FDFC422A4AAA6D282D21174B8956E27
            3C0686BA06934AF020083A5999ED45B641452E87E0F4BBB4795D9902A48154A7
            1DA306FD1C68353740728D53439953FC4480A4BC2E02A45C3034F8A96E2704DF
            81A17BC40DDD99FD56800508C0C847358B8F9E7DCDA6A81811F233F92F4DA4D3
            A0DAB4640513BC02AA67438414532B04E02EFD255A3CAE3C0182A2919348FD16
            7EE531B6A3D86666358D089094D74580948B64C012CA611ADBE96C6F245F0AB8
            00011021F5DD89BAF754EBF0BF08419A4814DBF35B655EA7C1DC7BBFCEEB162A
            1364AB7B9D547AFD62B892ED38D7BDAD1C01B229FF7F06DBA60EB79893A0B618
            84C7DD799B460448CAEB2240CA0519192ED4ED84E07B50880877D1A222404C20
            421ABAB1F5AC0401B22DDB33BA9DF02038774ED4ED842064C0271D23ADFACA45
            2E772FA93BF8EEE17F0182918E73D9F674A5BD9C03096726705BCCE8B2694480
            A4BC2E02A45C2403966017988E329E0FB7574580982033168A14623424E2EBCC
            58B8337AB96E273C083A6BF7EA76421072808074A4CD5EADC8E530856B6B326E
            26B9807F054813A9E072DC806870A5AD9C01B19CC773D35F9FAB2D4480F84E80
            3C4F3EE25DF267311CC1BBE0847C619AC008AA003196E7BFDD7BA9CC58FE1D09
            B98DED40DD4E789035D83ED6ED8420E4A1995486B662450896417ADF858E7BE8
            4F018294E4A89F566CAC8DD798C67628DBB7F9B2798900F19B0039752AF984EE
            A4024BFBEA7644A8381E611BCBB6C478165401023015AB8ACF143DFB25D7ED3F
            DE625B4FB7131E0375721094BF48B72382D005B8BE7F44C5279040AD10141F5D
            E0A877FE1220EBF07760DAE5668EB6893BA81B852622404480B8CD18B64F743B
            21542C5F90BA8BF663A00508C0FAEA1A54A142FF65C6C27CF21F496E5464F236
            DBDF753B21081618492A26647091CB7DC5B601DB3CC73CF3870019462AEBE3FE
            8EB5837BA0A6D791DC56EFA4BE2802A45204C829CF914FD8991D7F44B7134245
            836257DBF359E04DF534A002046024A4AE9BCA8C65C4C87874FBB35993D4454B
            4807B5132AA143220483D16C9F919AF9500CDF912A74E84CAD1BEF0B10D4F240
            907931451EBD4A22D399D5828A2240448038C5A96C17E876420804C8A2F45CA0
            050840207A63335143133FEED4BDA556D98B24D03A1769531804C107FC8D54DC
            67B127352418C1742CFB45887705C8766CE7B3AD6EFB36BB0FA6DA8F27554C56
            6DB208101201A217DCC11BABDB0921306CCF876232956B1005483C3B18A662D5
            36A85111EF83BB7FA7EB76C283ECC0F6B46E2704A148D0B12E65BFFD926D23B6
            B9B67A13ED4D54F3032D68DE936A622A25936601825819088F4AE91BA1A60746
            71D2A6D18900511FAA4001F22CF904CC615E57B71342A0601162D69308A40031
            B71BD6D4CC17DE3A2542ECFE0E7B41B1BD9D743BE14150E8ED6BDD4E780F4FEF
            CB82E200B6DB4B580E717D6B91D209F610ED4F7BD73F4E77F798448BF9B48B5B
            321A05C889A48A0956C2742BBE8019D3AD6EC9B9C922404804883E7080FDC0D6
            5FB72342E0D892906B3EA8020460FDD5D5AA4608F06A5B283E655B55B7131EE3
            27520264896E473C47D6855CF028E8689F53C272C888F70F367BE6904687D103
            3D0EA7DD1B5EA13911D5D5D220403625554C774D5BB6493FAF934A9BFE5DDEA6
            1001422240F481BCE092BF5ED001A6F9FE8DCF0C9FE9762427389821085A1739
            27400044484D8D0A4A8F7FA7F7184AEA22D64DB7231EE325B6CD753BE14D42CE
            1D3382DD945ADF671ADBA6B678101D4AB7369D4407757B9AE69933525D1420C8
            0A763155CE742B702E6FE799853E2402447DA8F204C8C9CF900FD89954AD0641
            D001B263E10EF21FE4B57E374E1611D6486DADCE77A4227CC56DE8CEDDFB46F5
            D87B60CEF7ABBA9DF020D7B11DADDB892C627DD86A757BA12E9E5573F84198D2
            3A15821779835496AB6241FF61D7B2BF5D9F00398C54AC479FB2B7C11B4C673B
            88ED652BB3204580A80F8900D103824ACFD5ED8410683E24CC27F6A200E95842
            D4D9E6CE74128C7C3434AA3A21DE0B4A3F9CED06DD4E7810745E6ED6ED84823B
            F9B11E6C3D69A5DA7768F9AAF9B438A6AFD3DF40115A106AA0573B59BB8620E2
            314B4D448887692215605E6CA1427023DB11657DBBFB020471AF48475B49357C
            90500881E6F353B6B3EBA61001422240F4711FDB9EBA9D1002CFDD7CE6DB4FB7
            1369E06401F10111E29600A1285137EE44D6D69B22C4335358AE653B4AB7131E
            04D34FA6E976C298861FEDCFBB4B94A6349D45631B5E5473E8358AFAF8F5F3EC
            D6036952EB697CEDFC554488F7C1946CDC102AE547C2CDCCF34BFE66F70448A3
            3935E9241BDACB2B603AF304CABC19220224C002E4245F0890F748E5041704DD
            1CCE87E84DBA9D5098278EB6163525CAADB9EC4665F490CA8C859395772AA5BF
            C0B6856E273C462BDB726C33F5B9808B28EF9F11D496EBA0E77B8DA52D1BBEA0
            367E69494C6F571F9E35F0AEDCC04E9CDD628A90EA5FF85516F52242BCCC1E6C
            F797B8EC3E546AAD207704C83F498D7A2C6D535B7901C4F0EECF978D4FB31BA2
            F0C22240D4872A5080783E353CE63C2203562FDD8E0882C90A7C987EA3DB09E3
            408F8689DA5BD599D5CD8108888EAA6A33289DBC10948EABC6F76CC3753BE231
            305D6565BD2EF0BE1119C9BFD03BF4618F33698DDA5F8DCE1BF6182F8C9DA11F
            D9C88E74E3C3E9BC96FDE88CD6B378DF6611121211E2719009EAF81297DD98ED
            B5E216E13D363A92AE6B9C4847767FC4090182696597B3EDE64C73690323D313
            D446E76A88C22B1001A23E547902E4C4A7C8E3ACCD0EBFABDB094148E16B3E53
            ACA8DB09E32414EE20EA68CD3801BA04A65F55F3C9BAB147B25E883E70B7F07B
            9D0E7894C7D976D4F6EDB8D68447D34AF52FD017BD2618CF6745D465D70BE223
            4EBA08D99745C8D93212E20F5E2125268A05F3EC56629B617D912A2371C2034D
            C71A69786D16208790CA70D5DBE9067311D4F640A0F983C98DCED51085572402
            447D480488FBE06EC08365AF4510ECE552D23D3F1707727BBBCA82A52B9528D2
            F3D677636B508FF5814ADF4FEA74C0A3207947C13497F68360F3EEBC6F0EA7BF
            373C436FF63AD6787516B239EB6E913CA03FD9644EC74A8E84484C88C7C10C09
            DC7828A5E3FE2DDB2A64B54648AC27F71767D0DC9E7B1AD3F6DACC5E70990204
            37B290A56E33575BCD795E2695327946FA46E76A88C22B1301A23E2402C47DC6
            B1DDA1DB0941C8268660C84FCB5E4D29E02046DC47FB127DE243B5811AF9A8E7
            CE665DBD4E117232DB451A1BC2ABEC4D2A89878BB0F88822C56E1D5DDDE3229A
            D0FDBFC6AB5E161F715245C8392DFBD359ADACDDAA66AA0C592242BC0A3AEFFF
            2B7159CC41DFC1D22763CDDC5F9C6EA7004171C58984646C95C525A4CEC73936
            DAE26B991F110142152A403C7FD3109D8A93CB5E8B20D80FC4C76A5ABED91020
            9D6A04447721B5F8D42B64C6425C889EA074DCA418A7B7213CC95AA43206B904
            E6C9F7E33FDDE8BEE62369CFC6D7A9837BF50B62DE171F7152A7639DD3328E45
            08F713AB7F25356B474488474166AB89252F1B8B9E5EF053481F5DFD3BFDD9BC
            2B35F3FED15ABA005987ED2AAAACD4BA602EDB217C397A34EF274480988800F1
            8B008183D6EE500882FBA0F684FB59B1BC2440805185BD4A15294C64C672D5AF
            B749E5CC17922C601B466A2EB6C39899AEA283F86F3B3DD47C32EDDAFD2D5A10
            561D7A0FECA1456F0DEE727737A6638DA5335A27494C4816DA134F64B8137B93
            4AEFD4A32EC535F9DFC68E3C8255F40FB4B0F78E461775496902E442B6537437
            9503A000ECBE6CBF7479391201622202C42F0204F33497D5ED8420E401733306
            B0B5B8FAAD46FCC71277D3EF16C2C88CC56799861E6E67C662D543BFB1F5D4DD
            041E03E9CBD771E7AB549ADD7E756FD057BD0EA37E7C5D9D1F312AC6F84E7CA4
            6C516224E4FC967DE87423301D232122428C738ED70A91C66243F93F64CCAC2F
            61690480E711066125AC439DF46AF381B451DD37342F6590D7A200D992D46C8E
            3575379303A4B59D08101120A60769CBE61620273C411E864F28F43305FE6C2F
            789CABD9FEEDDAB71917FFB077463F528108A9AD23AAEBE66666AC35C8D56946
            BE610ADB018E7E4308F9741BB88F368206D4BF463FF5196FC44FCC35FBA61EDB
            3B8B263526E4FCD67DE9F49649664C4840A76385CCD4DF88F5F2DA8F6B9C6A62
            A8F1714F114BA13ECE783E8F3E937B855195423AB490DEEDB507ADDDF02BCD09
            AB77E3BF7E0101821E2BA687959A2ED8CBE0A6DB38B687535F14012202C4F420
            6D593F0A907282CB04C14D86B0FDEECA3719A31F6DEA0EA4D704083044488312
            22EE0810045AFF47F7667B106469BBD4B9D547D4BCF868334D6ABA8ACE68BAC7
            B80EF921D8BCC8AD4C8A9096B1743AA6630535301DC733CE3B5E3CF7C43B51B1
            183AC4BB5858E201DE8623D9E6E4D850B52E8C7CD47C496FF79848EBD6FD4C73
            22D9BF781702044551AF275508B4D2400D15DCDCF821F30D112022404C0FD296
            F5A30041F19AAB753B210816B899ED30C7BF0527874898A8A3CD7B1D8054D041
            69E8C617EF7A37A66A9CC7769AEE4DF620FF6273E804CF2A23DA9BAD175DD73C
            918EECF9B4F133CFA930F1112767B1C22006A687DBC97B431F59F4E29E1C7E9C
            C63CEF23EDEEB17CFEBCDE3887669D474DF1115E9AB6EAF6304D6D3ECD783A3B
            92E82EA67F3ABB39EA4865823A4677433804D2061F9DEF4D112022404C0FD296
            CD2D408E7F9CBC4BE8065241BE82E075302B1855B8673AFE4D9D6DE614080F77
            048CA0F490AA1182B8106747421E61DB59F7267B101467FCD1F6B58610903BC0
            B89ADFDC7C2E8D6F7A8E1671E7AC33E683AE69194084743703D393232101A813
            82E317B166FE101F26B15DB897FA70C66BF8EF433E2F1DC8DBF149427CA49D47
            51BFA689FF2C43DB74FF0F3DDB7CAAF1EAEC686EF161AC35BD49501411FD9695
            75B7800360F2D9C16C7776F521112022404C0FD296F5A10029B9CAA920E8A0CB
            3B43E58303973B021D1DBAB7D31A31F34E6243776783D243A16FA832A7399403
            82F29722258C6D84FB20E1917C8DFE8CA6F7D99F46D6102D8CA89E895FBAA6E5
            902A422E6ADD9B4E6D3997AFB7BFF0C65768603AC447B8538DBA7A71DA5557C4
            624807BB53CA2BD7B2FF13D436A4888FC43685550AE950842EEA3E994EEA7EB7
            F156A12985299DDA4A2E19F025DB1E6C9F17FAA008101120A60769CBE61620C7
            3D461E05C73C2EA2FD753B220816412F048913E63AB276230014B79A3D187C9E
            0FC48354F3A15CD7E09400410632E447ADD3BDA91EE379B6ADED5B1DBADE7C61
            EE1CCD2DFD21CDED37967AF3CF3A2F9C98B012188CE9586CDDAAE322E41CDEC7
            31F05981232138663B96A8C0736324D327BF343A6EB150333F9A4F4A84EFCEE7
            CC479282235380604746FD9A5A7ABAE7A1B45DF70FA99D7FE88516EAD7709320
            F52F52B18FD1BDD90E713FA9AAE64BAC7C5804880810D383B465FD26405660FB
            4AB713825024484778B1636B87F8F01B8608A95595D2ED17219BB0BDAC7B133D
            888DA3710836EF6E049BFFBDE135FA6FAF9368205F3767452A33DEC3628B2462
            422E68DD974E6B39BBB202D38D4C7B7CDCB62F8ABFA0DBA3D288C536E1DF631E
            6F4FC694AB54011251353E421D34B5E781B455C367340F71F6214BBF24AA999F
            A37B331DE478EE345F51CC0222404480981EA42DEB37018239DD8FE87642108A
            643ADB68DBD78A8336DCA1A642847CD8C189A7E7ADAD571D1BFB184F2A018090
            CE116C3796BF1A049BF7E4FDAE3F9DDD7C219DD97C9FF152A565BA2A85541172
            61CB589A88C0F4AABFF8F844A7DDA71DF6380901821A963E1EE38A991DB854F1
            911020E6585694C547DDFBF46AE379B451FD97C9FA355D6FF24AA4463D36D2BD
            890EC13B32EDC736B5D8412F112022404C0FD296F59B0099482A7FB620F88D6D
            D99EB3758DB8904280F8B93300DF310A12AA352BA5DB02B2E44DD0BD651E04B1
            73AF95B50623D8BC1FF7C6EAE9A25E57D1C93DEFA725115501DAAF7BA0DD1831
            2130EE475CDABA2F9DD48ACCC72CB4AB50BECAC7C76AC50B10DEB6D84063B38E
            EEF6005DD2745576FD9AFC9B8CF3CD55FE6D9482BCC1B627DBAF46138A00319F
            8B00C9FA412A5880A098D03EBA9D10841278842F70BBDAB6361CB09D9D66A7DD
            C7D7BCF8F42BC483D897190B758236D3BD691E03C3648845FAABE43584787FEB
            1C4E5433833EEFBB1FAD5CD7462D51253EAA4B5E6965823E6BB7901A0DF93ADC
            44672F399EEE6FDF97DB70B11A1131F0D3711B531DAA4833FFE02DEA7915EF0F
            A105E4BBE965390548D4AC6CDE4EF7369F457B35BE421D7CC42CC88CF7C8FEC9
            50EB6932DBF6BA37CB41B2A66E8A00110192DD5E760990633D3BCBE913AADCA0
            2EA1B2C150C5405201906582A3962F98E1B0EE6DB287787A5E8890F2C1950269
            6687E9DE2C8FF105DB2AA52D8AEE345F143B46F16FF43DFDD27F171A56C73B72
            A7392D45F7967994F818416FB35F704FDB9634BE7D3F5AD2B9161FC273CD6959
            5E936E662727DA47FD4D74EBAA0DC13132F40135762E3284D5BB91BEBC4F202C
            B33DFFAA62E6D4A65C54B37831328565B681C33582D204085297730732329A7A
            D7BF46DFF63E94FAB13B0B22CA8B029DD7BDD8AE61EBE7ACC35AC174D65B325F
            1401220224BBBD2A5B80F42295D9A649B723825022394FE6C5831CFC1530FA91
            0A3A05557CE2ADA92D774DE811213D6485348C6DFC974AAA8B826929E8A0F5A6
            C1F51FD0EB7D26D068161FB3C212EF6115746421AD9BAAD50CA633961C4D172C
            19CBAFF450E97AB54D67327FC118FF8DF5357D6837460136AC799BD0E9DAA9E6
            7F34A67A3ACD89D652B7D012DAB4E6336AE08FD5B2FDC0FBC0EB1DEB5253A825
            E7DA9BF834F544DBDFE985F00A342CB428F13AFA1C58FEB98ED588C27D8DEF4B
            03C90D8C4E58CA6868F57C23209C62A91DBC30E591095D931020501983091DC8
            89CD37D0994D77507DE694AB4CD48B48787625DB211A7E34B740B6D1DD494DBD
            CA4204880890ECF6AA6C01B21EDB5BBA9D10843278916DCBF25661A6DD8D7692
            EFA63E14C210217CA2AF2D2B1E0453219ED2BD291EE44252317445608A8FCEA5
            E8E8E6EBE99A3E9325D8BC0CD06DC0C8013AB9AF772C4BFF6C9D44F3C363F8AA
            DB624E65725284E078AA531DF8586F3614039DADDE0A2DA6BD6A5E63FF6A69FB
            9AA9B45CF50C161D330DD194E9520B6F4434A6BAFD4DFC5E4DA153502C5B2218
            6322FCDFFBAC27FE8C2ECBC246099878B7ECA1B6EDE9A7C8006EAB36AAE6CE16
            BA6377B7AFADEA71A48EB644B01DF0D2540C552C72AA901536DEF18B9A232C99
            3E45D567C243F95CF307DDCDFBF6BE4DCF5BDBB743B421FF7F1B55768DA19748
            8DEEE49DAE2902440448767BD925408EC92816EA0DC6F206DDA5DB094128035C
            29310D6B4E698BE3C48379D81DE645B4C204487C136BB90B5055536A3CC8896C
            97E8DE0C0FB237DB7DD63F8E42737DB99336848EED7D395DD1EB56EA88AA1A08
            5E9B34E437B057F7310FDD3BDBB7A4712D67285160C486D8796301E708EEA047
            7BF0FAFBF06A67191DF26DAADFA6D5AB7FA7CD6A1EA3C1A1DF09A58A56C9E875
            2F8AAA4292717F4B25EF042C7EB1571559D65CDF76A2F278236F4D8BB1084650
            1E6BDB85BE8F0CA59EA1252C56627455FB9AD4161E610A3A38CE82AB73A8F925
            312546AAF9BD08CE2D3DB9DFF839CDEC77200DE1BEE5FCB0A5E984414882731D
            3742C154DD2240448064B757650B904AAE282A04072451B8B7B44571B4465401
            B0FC97F60A20A6A662952642709362ACEE2DF0206BB17D68E99346B03977DCAA
            E7D06DCDD7D0814D2F523BF7CE1689F8B00D1CC1184140A0FA1F7C488F6BBD82
            A6B66FCBFBFC626E7FDC9F285584C454E71AD398624DBC9A3F59687C401B557F
            C1A2E31D5AABFA231AC4ABAE35C3C8E2CC75A41E687E8AA9990AD7104793B323
            696A0BFC9DC38DFA076F13A688D587205858A42CD993373344FDAA3AE9E58E65
            E9B1F6B58CC28227373E4A1735DF69ACE6AF68A27B998F51A4A6CE6EEE6E2BB9
            CE6184F4E5167E1B11202240B2DBABB205C833A452990AF6328BD41DF93F49DD
            7E03D82D06B1F5661BACDBC10AE33F6CFB96BCB4213EE273C62B558090DAC6DA
            920A99BFCBB6B66EEF3D068E6FD4A159D8F5C7CCFDAA6304B7FD5FF465FFED68
            C56E448B3B708F5CC487DDC43B4C7DCCFEC89D4BB6A7714B4EE4637C209F8131
            05DFCA6888316468068D57AB15554FA7A36A5EA135F8EFCA55CFD0BA354B12F1
            E461B6B698FA3D758E9F162340AC002DD5644E6F8B5262AC38B59F4631167ABF
            468C896846D14C0C47CF8B16DCAF317288DA1E3D343697D3E0DA8F788F57E36D
            550811202240B2DBCB3601F2107990EFD896D1ED4405804EC82B6C4FF3CF8D60
            DDCF287F662604DBADC6BBDF8AFC7707B6ADD9BAE9DE009F03C187D48D45A6B0
            0AA96957B1D419D5152E4070D2AB2EAADB8B4415DFB3F5D5EDBDC740ECDCFA5D
            7F0417B51A15145CF7357DDE773CADCCD7D5D961111E4E8396C75DFBEE6C33F9
            F03EA4F5527AB66333D5D108C5676B86523E6DCE97326222F871683EAD5CFD19
            1D58FB3F5ABEEA571A53FD162D656A1132A7CD7592B7CE16760B90E48A73BF8C
            B3264645E217AFD6983A0177E1067A95A82774A8AE367209641B407AF8998957
            4480980F4580E81120133C274046B07D4D2A9988501A68BF3BF8B7C63CF05FD4
            4B56CF2289437B343FC4F416CC11954E5EE9FC9DD489BF386299E929BDD4A570
            82541192316724379866F4BE6EAF3DC8DDA42A18E7C1ECD4768CA03D7ADE4DF7
            F7BDD278757644C4875BA48D8630AF772E4F1BB59CC3BDE435F8473047431070
            6D14CA5B683C1F5EFD251D5EFB1A6D5D339505C8EF54679E0E3A6266B03879F7
            0CE1B6002992D5494DE55CD5ADF6D004B6F140CACC7B2C02C47C280244930079
            903CC6166C2FE876C2A7FCC1762EFFB437134E34F90EB62E89653E1CC00F2E23
            996B5F2A0894BEACA825A266E7BBA4DFCFE7182204777D0B0A10646E2931BEA6
            A24129EE4B73BF1556C5E53A87D37EBD26D39DFDAE3606DAE6149E9A2238407C
            7CA367951212A7B74EA04BDB8E2463DFAFFE9176AF7E8F76AF9D4ACB577D454B
            57CF376248C0C268D143AA5AF1B000398AD4C8470566F848E374CA17502F02C4
            7C28024404880227856B753BE143D0193B866D766247B14780C41F1CC476ABEE
            8DF4218FB1ED64F9D308C48E0763075180189B1ACA7182CD02A9664FD1EDAA07
            416AE267B25F461D8401DCAEAD4696AB637B3E6648BCB9223EB40331D1CFBC2E
            3FDEBE26FD12194CBBD43D4D83E387404C250540525A3FF6943D28407A928AF5
            D84B477BB80866E3ED41AA2E506E4480980F45808800514CA6CA2EFAE304B86D
            7643F2A92302046C466A74CA8FD7415D600ADCD2940CFAEF1A11208AAA8253B1
            20ECFEA5DB4D8F81E9152BB17D9BFE72D4141F617A63E07EB47ED3EFD4DAA1A6
            EE488D0F6F801F0EBF452F1CE688E3605BECF1A95556F19800D998ED4EB6919A
            9AC32D7E2075E3EBB32E3F2502C47C2802448F0039FA01F218089ADE58B7133E
            0137CF76E21F34A3189B6302049D6304A83FA97BC37D06E6197F62E993A9A968
            832C404055DE7BF338957DCEB6A26E173DC60C5245D34CB16BEE4BE161DC620B
            E9ED81E368DDEE7FD05CF3DD00EE51DE27462596C4F12E1E122041A91B84E282
            08369F57F0932240CC8722404480A84C4CB87B3744B7233EE11F84747AF97614
            670408FE3F95ED02DD1BEF2330D47F7FC14F65F63C822E404055CEC136A48B9E
            4EC9AB81A078916DCBE4D3284B9191B44EE3547AA4EF5934AC86686E24B07B92
            3F100152C48A2D7F1229E631B36257DD6DE102A8DC7EB0E54F8B00311F8A0011
            0142B40A151A3214E2E064FA88F1C80D01927D557C8FED6FBA1BC1272008FDC4
            2E3F91ABD72102C4DCEC2C1102E13D4DB76B1EE41A527160640C8E768EA2318D
            2FD32783261AED2869767D80089022566CE9531B91CA003552773BB8C06954EC
            8D411120E643112022408876A4AE02A6843893D8CE4E3C7352801857C39C57C4
            35D93ED0DD103EE179527555F213CB31DB5B0448CAA6A76DFF116CD7EB76CB83
            2076EE56D58B6D32FE7C3764075A86AF99B3C212EFE10B448014B1E2829F388E
            ED72DDDBEF0208214271C1478B5E520488F95004882601527866888B9C49A91D
            6B21171F91EAFCA763FCA8C99D2FF54F8E275D104B7E1EB528625D8641221664
            07DD0DE20330AD7065CA973D3316FF4F044897244F8848B870B86E773CC826A4
            62E88CD18F1BFA9F4887F77A8566758AF8F00D22408A5871DE7750436C0AA90C
            50950E52EF23F3DD87252D2D02C47C2802448F0039CA530204CE04E1A4510ECB
            5356961B4AD991528448A902043B4A84FF462285AE1E6BB3BDABBB417C4007A9
            E0E09F72BF9D22FA521101924E725F44ACC3E6BADDF1184BC8986612FB8BC2FD
            F81AFA132D1E7A9051111A752364EFF10922408A5871CE57714DBA87D4F9B6D2
            7987D4AC913F4A5E830810F3A108104D02E43EF21050F16BE876C2C32090EED0
            2E3F819D27BE73963C0202F151B0105CFCF31FF37FABE96E181F80B9C8AF77FD
            11112016F99D6D906E273CC6578414BC31BE78C61AE97F83F6A3CDBAFF4573C3
            B2E7F80A112045AC38EB15045FDF48C118F07B986D1F5237B74A470488F95004
            48D005083255A06642A36E473C0AE6790EA382773B62EA6008F13938942A22AC
            9C45780F89718F251AB6F8798393D92ED2DD383E607F52C1905D609B00C1B184
            C31D09577BB13553F6F42F9CF970F19A43FE2937D046AACEC57BBA1DF1208FF0
            C1BB2B52EE6ED8F812BD36E42C5AD069FCB0B862A2F05A44B7831960FF439A50
            3F15F5761E112045AC38EDD9CD6CE3756FAB4B5C492ABEA57C4480980F4580E8
            1120477A4680AC436A4851C8CDEDA4AA9117065730D450A8C6CE9D677A4F26D8
            8130EA1129BA3FB002A9BBAF42D74CA2CCF8A64267CBDC274B9C014792AA8131
            8254CAEAA5488D080C34DF87E0C0E18E1FB389AD3B6567120899EF2F24FF0810
            082674A6E5264536E7F2017F2645FAD2E47E93E890E657E359AF50F119D35ABD
            2640B07F3E448546748386089022566CFC3F92ED5EB6BFEBDE4E973896ED2ADB
            D62602C47C2802449300B9973CC201A43AD9426ED6A26202CD7015ABAE21AAE1
            1D3C9A23C0391563E7E1CF7474AAE542E673EBA0EAEA68DD0DE471B205645707
            78F2E9B2A40A7322F607F39B11CCDE5FF7C6089E632F8AD5DC4FD48D3E1CBC03
            ADC1D7C9794A72E0E6C00ABA9DCB0346DF209C6514C4247FD241FFE2A000D986
            94F8E8AD7B1B5D003789907ADFDE2CA12240CC872240822E40902ECF9E61C5CA
            0355B4572F7E318C84D47455515AED38513EB78553C547D1DC42C5143F0A26CF
            B26D977816CA7B26C634BB0DD8B660DB90BCDB7914BCC51A146BF898AA5AE9E3
            81FBD06A752C40A2C6F4BB99A446C0BCCABA24892C1254DAE8077048809CC176
            8EEE6D73893F09D92643F4BEED6B1601623E140112740122295DF373029594CF
            DC3C4C6BEA5445E968C6D5CD101F6CE1B672C407404AD41B743792C741276BDD
            C4B3F4B6C6542A54B0DE9954913D2F771805EFB18077A841141ED4B64B8FA7E9
            E10197C5473FFC30ADF524B64B753BE1052A517C009B0508CE8D77933A570601
            CC7A40A6AB5F1C99242B02C47C280224E802E447B651BA9DF020D80347B2FD5C
            FA2A426A3A56750E1112E9542320E55D25D0797E5E7743799C9F48A58654594B
            92EDBD1EDB0BA4623504A11494B80D0FA1F51A5FA2B7069D43F323C689631CBF
            7E876EE70AF018DB4EBA9DF00222400A8204140F929A861A04704DFD17A9E41B
            CE44E98900311F8A00D123408EB8873C0002697FA1B45F543079957FB07F94B5
            06880EEC54F5F5C9E79896D5B1841F17ACF56185E194B7C6856082606FC473FC
            651C8455895D7D53B697743B27F81A1619A10351FFE3B4DE93E9BC3E0FC505C8
            25FCDE89BA9D2B00E24070FE2F2F9D68052002A44B7661FB0F257B8095CE1452
            71B1494480247DCAB3AC08101120A5B035DB73BA9DF028254EBFCA20668A90DA
            3A951DABB39328DC61D7D50147ECAF6C03F43695A74110E1326CD38D67C91308
            5EFB9A12672241289A93F8A47F29457AD06B43F6A40DBB2FA6792AACFB09B67F
            EA76CE0248B2F09A6E277452A9E203D87089399BED4CDDDBE122486B7F6AD6AB
            2240923EE559560488DF04C8E19E1020C7B05FF6A596AB2C1084FC8D2D6B8A45
            9341E9F6898F381FB0ADA9A17DFCC4AA6C9F1B8F922710A4CE451631492D2B94
            CA76AC6F9FA5F0607A68D051B46BCFAF695EA7F1FA0C52F1455EE774B6F3753B
            A1131120394141C1FB498D7E0485A3D8AECFF98E0890A44F799615012202A414
            825444A818BE24DBE7BBC6D4D19BB2C3D90446B0B676A95DFC0A72D5BF6D3C0A
            250E449CED90A94852EB0AA5328AA23D6750ED74FA75F0041AC027FAC531635A
            1346259DE8B6D80DCE1DDBEA7642272240B2C08D3754FB0E4ABC0780D07A34EF
            BB2240923EE559560488EF04C8DDE40130FCBEA16E273C08B2C39CA4DB098BE0
            6211A43B55A580589E578D4738C84389A31E1DC521BA9D137C09F69D51141918
            5EA5DB5BF4D99033E219B0B6629BAADB398B2C203512D8AEDB111D54B2F80025
            0890ED498D7C042531C762525325A775F9291120499FF22C2B02C46F02E430ED
            02A4867DFA83FFF6D5ED8807C15D41BFC4C66047DA57B7131E07E9141F371EA5
            1FDC1F5149755E04C1C894B33545FAD3F8E607E9E6FEB7D38288117034815FBF
            5AB7734510D83810112069A01658F9318FFEE137525924BF2CF8491120499FF2
            2C2B02440448B16088F573DD4E789025A4A6E5B4E876C42288E13946B7131E27
            5D80248F4FA4515D5BB773822FB98EED680A0FA027871C4E3BF4F8311EFF7123
            DB61BA9D2B82896C17EA7642072240124C663B44B7BF2EF20529F1F1BBA54F8B
            0049FA9467591120BE1320779166306DE761DD4E7810D486D84AB71345700DA1
            232474050A6D3E6D3C4AC680808FD956D3ED9CE04B0EA350F466EA184E370F3C
            9DC6F77983E6A984B67E9BD68AE962DBE876C26D2A5D7C000B0204D913FFCBB6
            BE6E5F5DE465B6FF2335FDCA1A2240923EE559560488089062398DED3CDD4E78
            10B4CB05BA9D280211208519CBA6B23E180761E20085D8DC42B773822FD980A2
            8D6F52F55CFA7AE8C1B41C5F3BE7478DEC41B8ABDA4FB77345803810C441B5EA
            76C44D4480D0DF4815A31CAADB4F1779806DCFA297120192F429CFB222404480
            140B82CDF6D0ED8407F1DB9C681120853994D43483CC33EA236C3BEB764EF01D
            E8AC8FA6709F3F8774FB947E596A22B546883AD5B4D6CFC8992E8B9324933404
            8020880FD04587747736744082525C10DC4AA54E33130192F429CFB22240FC26
            400EBD93B4129200DC1C6058763015333CAB1F1120853998ED36E351FA0808E2
            42FE4FB77382EF80C81843915E7C5DFC86160D3BD1B89CB5C50C31FB886EE74A
            20507120011720A750807E6B938BCDED2E0D1120499FF22C2B0244044831F461
            FB8982936ECF2AD3D836D5ED44915CC9F66FDD4E781C1120829D60DEFCCED439
            98CE1D70059DDEEF599ADF695C9C5145D94FD337E3203E6A07DD4EB845800508
            46010ED2ED97CB9C40E566F7120192F429CFB222407C2740A6904636607B5DA7
            031E059DF9E3743B5124184A1FABDB098F83629BB7188FD20508E640FF4BB773
            82EF388F287A06758CA64B079D4327F4FB1FCDED30F6AA7BF9BDBD743B570248
            C73E8AAD4DB7234E1314F10152FA313D499DEBFC7673AD5C0E609B52F65A4480
            247DCAB3AC08101120C5B03FD97160561EBB91FF3283E16EEC8EBA9DF03807B2
            DD613C12012294CFEE146B7808511F6F0FDB8FD66D88C68B10FA39AB1A6E4ABD
            A9DB09A709A0005991ED2942CC52B0E8B2BA796A37366A5A5E4480247DCAB3AC
            08101120C5804ADF27E874C083608F5B8EED7BDD8E140977846857DD4E789C8C
            42848903141DAEBFEB764EF01D6B52B4C747543B93162F75B4710D688B19055D
            7F2475B7D98F9CC876996E279C2448E203F0A90EE9E4717DF0EB3E590AEDA4D2
            4A4FCBF56698AD77888C74759DE66B46B737D4F50A3B63E97DBD90F95A984AD4
            272240CC872240F40890F1534823CF90AAF62D24F9816D79B6886E478A44B299
            1506711E4F1A8FD20B114A2206A158FE625B96A24D0BA96616FD36EC70EAC3D7
            B296A82164FD3C8280E079B991513960FAD1EDBA9D7019A494DE9C4FF11FE47A
            1362A13F77C6FE8A12EDD57239CDA2EE14E59EE9EA55336997BAE72912C3C53F
            D9C18C722715978A4DEB5E37444B478A808578E91DEFDF66C29F6B8D25BAB8C6
            DFF698AA709CE82E8B00311F8A00D12440EE204DA0E5BF225C4485545460A9FF
            78916D73DD4E789C9D484DB7CA1C01914AE842B1BC4528DC161E4247F5B99DAE
            1D703FCD0B1B17E6FDF875AD9945CAE417B6A529796358F02F67B14DD2ED84CB
            CC245540F8CB5C1D71ECD403AA8C1B05D4B4E83E5623EBF36560AEF96E3E2581
            D7F8C8AEF99C5664F9B020A563F75BAC071D54F3016D56FB292D8825AF290BA2
            3D69C3DA69B466CD4C5A64F6D6213E86F2AAAA53BF021F8FAABB9DC6B7AB5154
            5A9C225C44808800C96E2FFF0B10CC05FD86D428A490E46CF2E7495BA6111566
            7B52A37E99024446408462B99D2F150751C7289A38E00A3A7FC013344705A063
            FAD2F1BA9D2B131C0B9FE87642280B8C7A1CA0DB0997C1EC858D481501CDEA34
            C7473E5AB84FD9B4F001EEF5F36E5E85D992D5D6D61EEBC9569DD1A966F5106B
            60AB4B7F3DC61DE5AA9F79D5B392BD6E5E7EA79AF758AC7C45F3A3D5EC4F2DD5
            863AE95F757751337774D5E848888655C5A8375C42DF378738C014C2795D4C23
            14012202C4F4206DD9DC02E4106DA3A3B84B3055D7977B965028394DC76E9C9D
            7CFC36DBBA4E7E4105B03EA93BD7E614ACC419E857B641BA9D137CC571BC035D
            49E10174F9804BE8B83ED3686ED878BD12A6B51ECE76936E2784926824358ABF
            A56E475C06D3AD10F3313BFE426AFF2D213E8C910F161FE135F9CC8F304F8BE2
            A368204CBAF1DFBA94D722FC5A93F97ABC63CB9FABFE85125124B1461A59F31D
            ED5BF3112D8AD5D042FE3957A89E4EDBD73D4A6DB1EED44EDDA957E8375AA926
            CF0CF1905AF5DC58F2CE7224F3FD5CCB14400488FA900810FB40CD882B757DB9
            47C1B18A00F41F753B5224D8A3BE655B46B7231E2799E1272940F0DF6F240244
            288EED28DAED59AA6AA5EF963A9046F335737EB462A6B5620AD938DD4E084583
            590D4FB0ADACDB11977983D4F4E3F6D417E37DB3B8F858CC7DFD1E101F9135B8
            8F86C112A7C44791600425DE590CB1B7D14635DA121729A136FE33CFECBDD719
            53C6C6D6BDC3EF866871AC9EFA845A698FBAA7A8813F372FD69B9665F1B2524D
            1B45E301F319FDD885DC0E35FC1A625D3A89BA1E31C968CB84CB8937323E97B5
            60C6722240D29709B000096231A242E096C80AE4BF00F47AD3F761BA1DF138AB
            B07D613C4A9E40508C733A052B438C501EE8D3ACC802E47B08906F871F48CB70
            BF605E8446F2EBDF91FFA7B57E4D2A6DABE01FD623253EFAEB76C4655E2035B5
            363B66C9ECD7613A534BC48CF988AC59DCB42BED981DE098794A096164853BE8
            D13E29DBC9AFB108313E1BEBCE9BF613ED5CF335FD1CEB412B56FD49BBD6BFC0
            62A48A16C49A69ADDA376995DAB9B408234121F3326886B8B4993988F114C1F3
            514A76794580A80F8900B18F57D836D6F5E51EC5AF95809B49DDC5EFAEDB118F
            83E05A35BA953CB8972225DEEA4A5BA510406610461B3B074576E9FD383D3CF8
            665A1031EE2862DACBF3BA9DB38951E6760ADEE79FA4926B5495BB229F816DDE
            29D71BE836D6F129BE07B7C89B9DCBD306AD9388C26B707F13F79AFC223E8A21
            FED347940889F654C224D11AA4A67ED5FC401B54FF426F447BD3EEFC78A7BAD7
            68360B937E55F369AB7A35231F4BF54313C52F912941F28B6219B5524480A46D
            8B0F05C86DA4812652015B03747CB987398754E610BF3194ED27AACC33AB5D2C
            263545ED4FE359F20482E90A9F91A599B08260808C735B52C7083AA4DF1D3479
            F03D34BBC338ED1FC3AF5FA5DB399BD89BED3EDD4E080519CF76B36E27348042
            C1BBE57A035D4674617BD610DDDDB625EDB7F8463EBBF3E9BF6A26253AB78124
            6AC498A81814488A1A33809ECF5C554BF829066F55F4FBE9F5D3A86FD5429AC7
            42669BFA976974CD97D4CEEF0D47EC891967921A243FDF1429591D10112029AF
            7B51801CAC4580A0D3F5B98E2FF63421DA9D54C12667702E067D55B64F1D5B7B
            65801122C4F7B418CFAA1227900DD95ED3ED9CE02BAEE093C5F1D439904EEA3F
            992E1EF018CD5513402A695AEBD5A4E20405EF12C434BB0082EBB05C6F24C407
            9FDEA7B46F4507B45EC787EA6CB68514BC0122ABA0D5AA55EC49E2A51E2AE317
            DAAC9A2F9D552DC6E726D4BF61FC5DAAFA2FDABE612AB5F2E7EA434B6895BA9F
            13AB821831677565A510160192B18C7E01722B69001DED07747CB187C19E3686
            FC29CC3095EE15DD4E781C8C728C493C4B9E40307DE109DDCE09BEE2608AD51A
            778EDE5B6A3FFA5B37A2B92A6AEC555269402B81F7D8D6D1ED8490971B48652B
            0B1A37B21D91EB0D63DA155B0FEE53DED1B6251D68888F396CA84B987772403F
            4AC99C256412532985E3ED17ED65A61C6EE597E6AA7894501B6D57F705ED54FF
            B6318D6B78EDFCE4E8484805FF87E331252240D29709A80009EA9D93AE406563
            C40374E876A404762135242DE407A31CC998A7E409645FB6BB753B27F80A1619
            55AF53A407BD327C57DAB8BB214030AF01D3202B2508B8C3DC9685BA1D11D240
            EFE17E52371183C664B64373BD912A3EA6B46D4607B4DE60648B2A30F2F138A9
            A9B9FBE8DE307F110F8C875080ACE0468FF4519DF59A9F68B7DAAFE8FB686FDA
            01A2A4DB0B34A6F60BA3F822AA10B49B4BB41BB3414480E81720076911203881
            EDA1E38B3D0CEA68F8B5901F86A36FD4ED84C7798AD4688779672671701ECB4F
            AED0ED9CE01B700D1DC6E26336D5FF4A33861D47436A0859659035EA4BDDCED9
            0C6A45BDA0DB092101623751A36A13DD8E68E05AB609B9DE489F76B58539ED0A
            231F8BA80BF13189D48D5814DC9422B4B61053F12551338530A670552FA0656A
            7EA043BBBD450736DE4CB521D5576E4452AFA8AACBD216ABE3D7D410B2089060
            08908FD956D3F1C51E26EFDD151F7006A9007A213F38D00E311E8542A9C7F2A5
            6C27E8764EF00D10192B53C730DAADEFA3F4E0D0C9F4578711CEB92B39193FA6
            0774D0E4BCE20D50A708C90F8256E303E4DD0F13E283FB91B7B76D490725623E
            BA141F67B39D693E563714641A9603C4CC94C110247C86AC4506B208AD58B588
            F66F7897366D789FD6A97BCFF8998C9A25A4AAD4B7C77AF2E30E1120EE08905B
            9CF8E5BBA237DBEF94FC2505831032D85CE3DCFA1DAD821ED4F9C0C590BC8825
            8B1082296CFBEB764EF00D1019BB23007D5CDF87E88E4177C52BA057E2B4D6E4
            A8A1A01324CF788954B6C3A0711ADB05B9DE48171F5BA5888F2EA75D9DCF3631
            E3B59D49558F179CC40872378543A407F7FDE7D3F0BAEFE9861EF7D298BA4F68
            4E7480F1B78A7FCF708468A1214452726B89004979E85F01B22EA9E946423A28
            66F48C6E274A04F11FBBE876C2E360F4430D3786CCE83805EE2A6EAEDB39C137
            4CE213FCD91469A4E7871F4E5B36CD8D0B904A9CD68A94D5888BEB2C774542C9
            A0C0E0B36CBD743BA2812EC5473CE6438D7C5C6F457C1C4B4606BB2C2E613B59
            F7C6068BF8E808EE8787CD80F6065A9D05C9DE0D1FD0C18D7751EFBAC5C627C3
            C654AD46BE6C87598EF430AFDC2240D2FE962E40263BFA33E7E000366DD50F3D
            4CB2489DFF788724634D21B6237521CF3C7920EB5910A73508A5B1179FB9EFA7
            8EFEF4DF1147D08E3D7F8FA7E0FD882A732E39B6E913DD4E0414DC147B948259
            2415D38ACFCBF546BAF8D8C2141F05B35D6186C00D79DE9BC6B6A9EE0D0E26F8
            356BCC4AEF112548A20D44F55FD3910D1FD1660D9FD246F56F51FFEA3F133A60
            61A417458D3D4004881F0588CC79CF06158A70A7CFD179520E5165FA3F48B723
            1E27D9914A9E3C10D4892AE803753B27F8865529DAED7304577E3AFC485AA59E
            685E849A498D1654E2B4D683D9B414AB0A3841CE6C88188D49B9DE484FB5BB05
            1DD8721D5F010B069C77253E00864D700D68D3BDE10288AAB81163CA5698CFAA
            DFD12AA125B45AED9F747AF37DB442DD27463F3A1CADA6D6685F962D35199D75
            1120A60769CBE6162007BA2E4030AF777BB7BFD4E320D3CB56BA9D2811CC0B46
            7457904BBC16623EDBF2A4522DA79E3C5660FB82A44295600DDC621D4C9D0397
            6CD96B2A3D3FFC7A9AD3619CCF2B795A6B327983E01641AD6E0E269112205964
            C77C5C634EBBC2549DBCA7F0BDD9FE63E17B9101B3528F611F8302223D54ED91
            683D51CD5C5AA3FE073AA5692A6DD9ED35EA5DF35BA2EAE1C2F020EAA47A9614
            5143688463B5D4BF66BA2122E686974DBCAE1001620A10D7CF33E8AC8E74FB4B
            3DCEF56C47E976A24436607B5DB7131E072203D5E2D50857F2E48161F797743B
            27F8061C671B51B83F0D68FC887E1B790E2D8A18F7EB304AE07A309F4B2063E2
            1ABA9D0810A7529EB887006029E0FCD6B6ADE990966BB99F35ABD0C8473199E9
            90CA3EA8A2CF27445551C4482FFEDDF9C45B33932674FB88BA57B5D3DFEAA7D3
            2E3DEE37FAD7EDE1DE140ED55063DD2CFA68F1C6F4DA92317468F343D44E8DBC
            8678A75C04880E0182747333A88B89920105F9C5AFD5ED448920F0F57EDD4E78
            9CA96CDB188FD203D091FD6A8A6EE704DF80D8B98328DC97260DBC99CEEAFF3C
            CD0B1B9DA38BA872835891A67414A9CC8982B39CCB76BA6E273401E17551AE37
            52A75D19E2A3F55A2B01E73B527199ADFC9C863F60608FA856B122D126353252
            B598FEDEFD63DAA9E1733AACE703D4A3E60FBA6DC14174F02CFE496B7FA1D8F0
            5D68616CB40810CD0204D38CA6BAF9853E615BB6E7743B512241BE636695EBD8
            8E361EA50B10A4E53D43B773826F38912F0F976104E4C91147D00E3DFF8807A0
            A338DC0EBA9D7310A4E27D4AB713150E0AC91EA6DB094D7439F281C0AA26EE3C
            DDDABE158B0FA4DA2D38F2F10F5281E5C580442EEBE96E08A1144C9110EE6B88
            92E1DD3FA44155EDF4EEE2758D4C5B3B353F438F0E3C8905C8522240B204C801
            AE0A1074C21CAC75E15BFC9C016B0A491D8B42246BBCA41721ACC4D4A98273A8
            1B15E17E74CF52A7D23EBDBE8D0B904A9FD63A89F2CCCB176C019D80F1BA9DD0
            040A029E9BEB8DC4C807779C6E6FDF920E3202CE0B1619DC88ED652A7E9607E2
            BB86930A48177C4B942882C287D5469D110AF7A1ED1BDFA2A7061D2F0224B700
            B9C9CD5F075F26C38CE9606A014E3C61DD8E9488A4E02D4808D3AFD4C85FEA41
            1DA277F9FFB5757B27F8865114EE39831A7EA43F479C664C0959120DC4B4568C
            F0FC9F6E272A9407D976D3ED84260A573837463E30ED2A1E70DEA5F8403AF5F7
            D8BA95E8CF3AE6F242A5600890374580784480BCC6B6A19B5FE803A6917F7380
            7727D5F9E9AFDB110F0361B922A974BBA90204A953BF23693BC11A33D896A570
            EF30357C47EDA34F3782233A638198D6FA2BA951E20EDD8E5418A8F1B1936E27
            345138E09C3B4CB7B46D43E397407CFC5528DB15B21CBEC1D6B70C9FF661BB57
            77C30836220224B1AC6E01D2C0F63349872B131558EA4F562395A546C8CF0C52
            9DA7A8F12C79504BDB09C58018B16DA9B33F1D31E03EBA7ED0C3343F6CEC5441
            99D62A0509ED03D7E2C7C9BFA9DFCB05091B2EE9EA037D12231FD799E2A3CB91
            0FD4C042A6C33E65FA85D198B374378E6023224012CBE61620E36E74EBA71843
            7201C945C193A1872926CD6050511D47100AA50A902017FA128AE76AB67F53C7
            10BA7BC4C9B46FDFAF684EBB713A0FCAB4D6716C77EA76A2024058C334527527
            8248DE6C5700DDBDBEDC517AB66345DAAEE5193EC07E2F94ED0A0584914A7D19
            1B7CC3F520A8D3E12A1311208965750B100CF53EEAD697F90874E21FD1ED4489
            04396DA3552E649B683C4A172093C8FB77BBBE64FB80ED33B61FD866A7BCD79B
            D4C517371670F1DD982A3B0E413728C6772BB50FA6AB97BA8026F47F87E6AA09
            494199D69ACC2427940A123AA1B3BCBE6E4734711E15C83A58C7A7E726FEBBDC
            E2C9F45D980FAB2A4CDAE8B24EEC5B645FF62ADCA05D5D77230936220224B1AC
            6E01828EEAB965AFA5F240912DBF4EC5C130BE048776CD5E14AF939276408770
            B76B17DDCEE500B7FBFE63DA9B386F145C427D02B51AB633B77703DD1B51816C
            4491C6D7A9760EFD30EADF34A28E6841C4B89BFD13A9292095CE9B24FB5539F4
            637B86829BF4A260B1DFF8E8C7631D2BD14E2D8F723FEA17A2C2A73FC4F1D931
            FA0170836759B6F99ADB4AB00B11208965750B1049399A0D3A7BE8B8CDD5ED48
            09A0F383BBE2C3743BE2715662FBCA78947E4063746145DDCE657029DB656C7F
            254E36210B4BC5B29E6C4F2ABDA56447B38716421C51A4C79F54FF3BCD5BFA44
            AA0F1919B030FA849B17567E25BF8336184A2A5DA9501C034909B8D1BA1DD1C4
            956CC715FA1086871AF9485AB9E526FA32BC3E1F55BF5181D10FF03CDB9636FA
            8A63FA335D0D25D88C0890C4B27904C80D6EFD141F910C2F66F229A960646788
            15BE795D06ABF38EF491935F5001FC414AA0458C67C993C60852755F0A5EDD5C
            E21552D35B522E7C6509903893C8FBD3CCFC0044C61A1469A6AA6EDFD0DC5167
            1B5345588060BEF883BA9D73114C1D7A4BB7133E630829F13142B7239AB88AED
            D8421F4286907E7C367EA46375DAB5E55E3E33CF240BA31FE03EB63D6DF41737
            6F9ED1D15082038800492C9B5B80EC7FBD1B3F03325FE16E790F37BECC47600A
            D38EBA9D289183D96ED1ED84C749A95F9016FF81BA20CFEA76CEE422F6EBD4EC
            976D112010C1D8FEFF9277C4961F418CD8AED43194CE197A159D31F8659ADB6E
            BC7E04A9A925410177B1AFD4ED848F80F8789DD4287B10C134D27DAD7C10C3F9
            DDF95CB72A463F3A59E756A13C97A581451C7F47D8E8F3916CAEDD15161C4604
            4862599D02041937DE74E38B7CC6B56C13743B5122B7927FD307BB05021ECF53
            0FD30408460526E9768E54F6A4C914CA75A1B54D80E0FF7FB0BDC856A37B837D
            CA244225F0B62174EEF0ABE8F441D3E2026477B607743BE72277B3EDA7DB099F
            806957101F76C527F80D1C1796462650A86900F7031F6D1F43BBB4DCC7FD274C
            BDB23C7BE07C8A2719B1878BD94E71B3A104071101925856A70019C776871B5F
            E4334E60BB5CB7132582E93AABE876C2E3A454404F3B613CC1F64FCDBE61E4ED
            71E59BE30204606AC1539AB7D9AF60AAD5C31020672D750D4D1AFC525C8004AD
            96CCE76CABEA76C20760C6016EF805557C1435B300A31F98D2B87CCB2D3423BC
            0E9FF33073D6725895DDC9755088701FB71A4A701811208965750A1074B20B06
            8105104C4F7952B71325800BDB77BA9DF038ADA4EE422E369E254F1838FA90DB
            5167F07E7AC55D77040890B4CDA5A132E5650B10F49DA6939A6A130430557F30
            194912843C043DE01CF16C9B58FDB091F98ACF71EF4588D659FCBE59F3235CCC
            F7213DF6641BFD7F996D3317DA49700311208965730B90FDAE73E3674050D5B6
            6E7C91CFC01DCC4F753B510298BA73936E273C0EF2ED6F6E3C32EA7F244E18B8
            83ABF3373F9EED8AB4579C1220B99320A062F04A1AB7DF6FA0B38DCE644B0E01
            025E60DB42B7932EB235A9CC434236C81206F1315CB7239AC094334CF78C5A5D
            0067E55EFCDFD1AD13E8BAF643CDE0F3A2388CCDCE54A2C88EB86A31DB207818
            112089657509905A5269489776FA8B7CC622B6E548654AF21B9252B930E7503C
            0354FA81AC53BCDDCECE64C7ED54E58A0F2F438018CFA379A651C7362175974F
            B0C69BBCFFA8FA178600B9365380A0D06590E68C9FC676816E273C084654D101
            0F6AB62BDCD4418D938E6216EAC1E7B7B97C9E1AB4E8393E3535F3F96E51B1DF
            8BBA47F716BB5017E086C30A6CF39C6C2CC12544802496D5254046B27D4B4A88
            084920CA1043E1B73B1D98F68128BDBEBA1DF1385B91BA3B9D29406E633B5083
            3FD8DF728C3C84EC152018F588450A2DF136DBBA1ADAC08F20D9C321C6A3B800
            19F272AA00B1BB03E47554463021154C4B83F808EAB42B8C1A204573513562E2
            8507EFEF589BF66AB99DCF837F52099763BB63DB30FF6B795269DA05BF230224
            B1AC2E01828ED854A7BFC4874C63DB54B71325B009C91DEC42A0681AAA539BF1
            1F6907F2F7A467341077D5BEC9FD963945CCF033967C2DE54F97C4E21F8C2AF1
            5138810C629F1ED7D0067EE418B66B8C47B905086E6204A9701962CF96D3ED84
            8718406ADA55506718CC22152355F4DCA98690BA9BD673F15DB424BC9A997AB7
            E86CE14E9CCB502FED1307DA4A701B11208965730B90B1D73AFD13A008D01565
            AFA5F2B09CA3DC63484281C220E669FBC4B3E40883AEE07DD4F9B8A8CB4F1871
            2A38199622404CE1120D9BCB175C085F84AB7D7F0D6DE137B6A378CD18162067
            B200393B5D8060E7425B0ED0EDA84B6007C334A35F743BE20110708EC28C41AD
            F3319F6D2D2A61B4205E78F09EF675696CEBDD7C14CD28D50727040862BAFE67
            F33A051D8800492CAB4B80E89A72E2753077DBCEFCE16EF1130537C8D12AA82A
            AE8616D30F62BB33A658E133F6618CA54FA605CB5B1420580657F348BB850FA7
            21E785C240D12DCB36C378060132FCBA4C01021094BDA56E675D6407B6A7753B
            A199A0079C637479432A71A4A01BA9AE5FBFC577D1A2E8AA7CEA42E84551E7AF
            384E08104CABBCDFE6750A3A1001925856970079956D23A7BFC487F8B1E2E97A
            A4EEB8095D8329226AA423FD204671ACDD5DF6E56F6C1F58FB684C9DD8AA52EA
            0576754D36C4072F13E954B11FA1A22EE0A86DF1A0CB6DE13790AE3919549C5F
            8048207AB0C0C8C77B6C4BE9764423286EFC76290BC6473FEE6E5F9FF643EC47
            35EEA995243E8013020499B56EB6799D820E44802496CD2340AE71B2F971A301
            43E512B09C8D2A2EE62F64FA556170476EF5C4B3E4890249187E2577A7CA9456
            D40A02C4F03B56F8BA1C2E497C004C47434C4AD193AE03044636B64E3CCB2F40
            3095F36EDDCEBA08CE9BBBE97642130DA46E02AD5EEE8A7C4C59236088FD68E7
            53D6088C7E4456E13310C2483C25407033E1629BD729E840044862D93C02E46A
            279B7F4552192A846C5023E225DD4E1401F61A04FA0DD6ED88C7C19DD9D3D4C3
            B4FA1F48A5FABACBBEE04E690945DBD8EFEA9AC4C3ECB7436A263E463EA2D152
            C40740C3203B5E508367AD7025A50AFEFC022468E75908D715743BA101DCD09B
            C6B68E6E4734925E44B548E299AF5EEC5C8AB65CCC1AA6AAEC2CF84E0890F349
            0AB65606224012CBEA102032CD22371805C61D2CFBB3D714CE40542ADBF2BEF3
            8C734D523120BDECBBEA6188520E5A5C54DC8CF949EFBC96424D5D0E01629EAC
            2261B648A9E243118B052D76A13842A1F1FCFF2D89E7F905084EEDE8490525A8
            1F799E31823643B7232E82910FDCC0584BB7231A99C056F69CF13E7CB41CD5FA
            6FBABEFD203E727E2B77754E08104C4B39C6E6750A3A3004C85B2240F20A907D
            1D152028C436C9C92FF029289684BB967ECAF5FD18DBBF743BE1716690BAA3AF
            92C9A79F243E22F7A64DB4921AFD585CF21A30AD0AA320C648484A662C9C103B
            CB1AF9480501F987B8D4267E04B173C951B3B800193A2D538080E72875BA56E5
            832C7341BA2182D4E79BE876422367B29D5BCE0A8CD10F3E657DC2F275F5456F
            F2F90B07517B39AB044E0810BF66C814328100697A9B9E1A7C1C2D8C0E170192
            2540F6B9CAC9E6D71174EB0730E9145308E6EA76C422A8B22B692F0B8374D3C7
            1B8FD2324A19BFF5575AFC2819339D6E6D2DA59D78203E62B6880FE0F6A8909F
            40CF6808A59E23BA162048B37CB26EA75DE40CB6F3743BE1128877D84EB7131A
            C15DD27FDBB1228C7E1CD072224D31463F70FFAFEC1034BB0B1182296C07D8BC
            4E4107224012CBEA102008C8B59602345820960299925A753B6291B349DD8112
            BA0659C2DE311E8542A99D748881CB5CF201A95B9139A9ECB90589E0F2DA0675
            EE0977A8A95721DBE2C6A546507E3E675B35ED952543E98AD117D3B183DFA3D9
            6D595DA7B16C77E976DA458212881E74F161CB68403CF3D5277CFA5A7DE15B7C
            0E5B42368C7E803DC8FE94B932025229B000D98E05C8D3438E1701E2B2006966
            FB93ADDEA92FF031281C060152FA14994CF0A386F9EC5A8D5FD996BBD3717464
            6FF22308A85E3EF12CED8034D245AEEB921FE884EE6FDBDA20428C5810DE9ECE
            76BB463EE21C4536CCE9AE50B23BD81D7D699BBE2FD133A3EEA096083F4D8FF7
            C2F4BE8F743BED220844C73456E7A2DEF43385EC3C96FDC754B66DEC5A591FEE
            EB1DB4E878BABDED60BE4E4E279BAE9348997BA3CDDB0D41B397CDEB14742002
            24B1ACDB02647DB6379C5AB9CFC108083AAB2DB6ACCDA8C7C03D92F676D559AC
            AD51D364EC39C18E63BB435743F9084C0739C37864C49E27DA7E34DB0F2EFA81
            8E6849C5B93480A0524783D07CCC39A462E89274F6A6359ADFA3B7465F47E198
            4A259A023224A16E483FDD8EBB0446FA701367BA6E471C02C9070ED6ED8446DE
            2735A21C297745F1CC579FF21EB3DA42C47E60E241875D7EE237BAA5ECB5A473
            1FDBDE36AF53D041B8370B907759809CC40264A808906C0172A5534D8F2AC7B7
            39B5729FB388D4DDBB9965AFC9101F2C363ACC132A769EFA3AF53866CBCD41DC
            695C4E4F33F98A94E28369278713D92E71C90708FE0D753744111CC176BD6E27
            3CCA9EA462E892B40DA1F3475E491387BE4573DA72DE5E7891547AEFA0B02DA9
            E0FB4A23E8B15133D8D6609B6FD70A31FA316ED10974A711FBF13D253A7EE573
            2AD95F14530448A5200224B1ACDB020473DECB0C84AD58B057AD42E5E6EE4F15
            1FA93B0B76208C82183B40592204C3DFCFEA6E2C1F80C260EB279EA59F1C9092
            776D97FCC8EEB47A1B74B2CED7ED844741FCC7E769AF84BB13D5CDA3DF573899
            FAF2756B51346B198C264DD0EDB88B20E8DE2D71EF16932873E42B58A06ED19A
            64C7CD394A8E7E7CD4C92B35463F30E9C0B6D10F8091EFD36C6E031120950204
            480F0890934580E414207B3B2640D071B56DFE6605F20FB6574B5EDA28061731
            B31251BA00C1F42B4CC5AA8E4FC52A998FD956D3DD503EE0603EAE5246FB12BF
            C5B2A46243DC601EA9D4BB9DBA1BA308E426456E90F96A29CA4C52D1D19FF61D
            F818DD3DF2615A80322CD9F7168256111D35A6F6D0ED848D043D2903A6D5A1C8
            A2ADB14CC87C3576F18974CF92717C4DC4E8478D9DAB470CDB5136B78308904A
            41044862D93C02C491F31DBE0139EE463AB1F20AA18C8AAEE6C8073212C53315
            6582FDB6A64605A59736156B27B6477537920FE04E6228597323FDB770B30ECE
            4D6C87EB6E8C2281683B50B7131E24F754BACE661AD1E333FA72B92B8DE3BB2D
            FBB0C69DE30F743BEF22B841B2866E276C0241C72557F8AE1050C7E6793B57D8
            874FC75F44885699FF2A9F9B3BCCDA1FB682DFCCEE8071112095820890C4B26E
            0A9091A4026F6DCBD7598160EAC9E9452F851F2F125519AFBA8A313784497C2A
            5649E0F71BADBB917CC03DA452A02AD20EDA1062429671C90F4C017B4B776314
            C9136CFFD4ED840741D2876C61D6D19BD6EFF326BDBAF4646A8B6605A183EEA4
            8EDB41BA37C025904B7514A96C8B7E06C7C013BA9DD00CCEA1F7D8B9420CA70C
            E0CBDFCD2D9BD3618BAE36335FD9DE257162A68708904A212E40868A00715380
            6C452A859E909FE7281ADBB6A825F0236346550473582D66B8C2CE54859DBCA8
            5190A3F8BB243DAA35D26B7F244115EBD2A7D81507AEAC7E148B68B775743BE1
            4190B820BB6E4C7B7FDA67E0E374CFA8BC53B040D02A66973795553F384FBC42
            36E74EF719B6C7F2E0D0E8CD2DFA173F183CFF41BE6E0EE116B62DA63D152752
            AC8B00A9141202E41411203905C89E973BD1ECC7B0395AE1B002C03CEFE16435
            156F557CDA5524FFB4AB9CC49400B15E3CAE17A93A250DBA1BC8077CC8B656E2
            59755A1B4F21F772F8A30AF6A9BA1BA348505F06D5E197D6ED8807C99DDD29C2
            87644D2BFDBCD20934980FE985B9C3BB7047E958DD1BE022B8D65CA3DB891259
            8954BC439D6E4734827E82EDFB2BCEC4BDF818D971C1447ABC755F3E6E90CCD1
            D6D88FF8D76094DBEE9B3F22402A858EDEB46DF3BBF4CCB0534580B828406E65
            3BC889155718FFC7F6A4E54F23E643459C17F115A6583146412C2D87C0CE2054
            18B683716C771A8FAA42A9A21045385189BCBB4B7EFC9DD49D383F3194ED6BB6
            26DD8E788CFCF52D3AFAD0FA7DDEA05797BE25DF142C80D8325BA7B2781CD460
            18AFDB8912C0CD27D4EBE9A5DB118D3CC4B6BB132BEECD9D9D9F2244A3E63DCB
            97C05AB3F687ED834CBD490990BE36AF570A11560A224012CBBA29405E67DBC0
            89155718E9F1033909A94C56D132EA31C5F783C2226447B6FFEA6E149F807491
            2349CD43E7B64D3B212018FC0697FC40F1B911BA1BA304C6907F0A26BA096238
            5023283B9B59470F966BD369EE0A1750373E8C5B738F80042D10DD6FB56F404F
            52231F7E9C366917E8236CE4C48A8DD4BB7CA99BDCBA311DBAF00AEEE3FD4E65
            A6A3CFC70AA45265DB5654C4C442BF40F0052C40B66E7E8F9E1301924F80644F
            352E13DCD144AEBB8176AFB802414142A4DB5C90F713D8FFCA111F2094F2C0F8
            F143B93E838BE24F14EC3B72C580E253C9FCEFE902049D8BD55DF26332DBA1BA
            1BA30490F1A6128BC895CB0BA462E8B2E96C24EAF607FDB9E2246AE6DDAD25B7
            00A92755C82D2881E898D83F84E23702BC0F7A1C6F52B0639F20B291BD6C91DD
            2BC6E5B297D99FAA9EFB1FA2C8483E37CF2287F2E16C4C2A7EC76E30AA3ECE09
            8705971101925836B700D9C376012277368BA3EB6C58E58A0F90B61F54519E51
            90A055512E870837213A3D7FA9A769EDB92E1F8C6E4E87C2A8D5E3BA1BA40420
            9A6ED2ED8407C93F27DE1020BFD3AC15CFA61EF90508085A203AAE399FE976C2
            2248CEB255D96BF12F0B49FD5E3F39B1729C8931FD6AC2C283E8DAD6C3B97FF7
            0B39988C735752D3C8EC06B57CF673CA69C14520407A41804C1401E2920071EA
            A0AC54DAD80650AEBB41283468C7C87128C793941D95B998ED24DD0DE12350BF
            E2E0C4B3F40315F377DD2A8E867D0742689EEE062901D9E77283D8B9DB73BE13
            3605C84AE7141220412BF088CE9A1F0A30DE4532B5666DB6F79D5A794F3E2E16
            F071D16FF6537CEDE4E3A50A03648E0910A70A47625EFC094E392DB8880890C4
            B26E099049A40AB009D679807FF63DD35E895730775E801C426A1A8F601DD4F6
            F821F12C79A0420C2026C3EE39C1F9F81FDB16BA1BA344DC146A7E02B1736FE6
            7CC7BA00410D91DB746F888B5C4ADE17B348337BA26E273483E2B68F39B5721C
            0EFD6A886E5ABC391D3EFF22A29ADF9CDE1E8C561EE3C07AD3A7F70AFE0502A4
            B708902E04C8A5763739463F76B57BA50120BD10933B0204770EEFD4BDE13E03
            D39D76540F4399A31FB870B8990EF74CB673753748892078787DDD4E788CC5A4
            C46DEEC27AD605C8DFD8DED3BD312EF21479BBA0A55377CAFDC4716C573AF905
            4D7C2A5EC4D7CB7E73EFE2636504F7831C1F184606CB1D1C582F463F1CC90E24
            B88C2140DE1701E2A200713300B7D2588FF74055D42EAE3C9C1320A8513145F7
            06FB10E4EEFF2AF12C7990D6F113A45BE9E3A22F88D97949778394006ACC2051
            C550DD8E788C4FD956CBFBAE750182F4CFB8FDDBAC7B835C6206A98AE85E44A6
            2413A1A8ED0427BF203EFA71E4FCF174C3A2C3896A7F24176A3B3AD5D7C1F4DE
            208D60562E1D7D58807C200224AF00D9DDD602A4C8BC82BCD892DBBF34100782
            22646F382C4026920A7E178A2365F483D24F02215753EF024C6E1E65FEF51B28
            3E88F384E33D049FD1755D84840039B7900001A80EEE489A530F82B324EA6AFC
            AADB910CD0FE7EAED26E074FB0FDCBC92F8867BE42BA96FAD953883A4770BFCE
            F1D3A253354000CE014117AD9541476FDA8605C8B34B8900714380A020DA9B65
            AF453880778329C6237B05482F7E72333954FC2900648C7EA49D0490D565B88B
            BE389647DF0510B7F2826E273C48D753EA52054875410182BBCE47E9DE2017D9
            8EED59DD4EA480A974C8CCD5A0DB118DA0460646F4A2E5AEA8107DF87898B470
            673A7BE1294435AE84E161E4E32387D6BD29DB34A73740700111208965F30890
            8BED6C6E0968B60F04E99ECC02E4E7B2D7A47EEF716CE790AA3B22140F822777
            520F4399270054ADBDD7657FF2A76BF53E47B25DA7DB090FB21BDBC379DF2D4E
            80209BD6ADBA37C84590F5CB2B7116B82B8ECE77506AB1E402714C28A8E97820
            461F3E15BFDED193369AFD34F77D1693AA7AEE58E6AB38BB5057C76AE9A0C7B9
            2ADB174E6F80E002224012CBE61620BBD92A409CCA0A11545A484DEB99C2F665
            09CBA32819E6201F4DA84F21944E88962335E44E490192189EC2846397E7A087
            1C1EA677A472701C04A3FEDBC92FF029B85BFC69DE771302E43C2B02642D7230
            DDA90741EAE283743B41EA2A8D04006BE9764423D833D72417EA8175B20DAC25
            3A75DE5E74D1825389EABE2117C40740ED2E271280A0A026849B2375520497E9
            E8C302E44311202E09105436DEDACE150A09505C0C530C3E26254666E6F91C86
            FE5726F53B6C693E17CA23BDEE477AD57364417952834FAB907FEF926134C9D1
            79E13E640EA9297CAD793F519C00C1D41FDC85EEA97BC35C02C93BD6D3ED04A9
            38B1FFD3ED84661C4DB71BC7083CE7E3603AAB90D173EEE5E3A32FF7E76C2FAE
            9E0F8C78EFE5C07A91C8040264815B1B22380804489F8F4480B82040D092DFB2
            8DB66B85425E7096C5890A774BD0C9C0B97820A9E0FF11646464126C22CC3698
            6DB6F12CF3A00C853EE4FFD770D927FCF623D93A74374E09A001313D6525DD8E
            780CC4CE6DD0E5278A1320E015B68D756F984B60AA0FA697B668F401D30A8FD4
            DD109A716D2A1CFA33BD6A8876987D323DBD781FBEEAE1BE5C8D5BDB89D14527
            46B9306A2459442B0511208965F308908BEC6A6A747C67D8B53241F00867F2A1
            620EB5C7320F7CCCD97F50834F48BDBBB9EE8629917EA452C4D6EA76C463DCC2
            36BECB4FC405C8CAE75B152041EB10E346C0C79ABE1BB51B6CCF69EF336E643B
            C28D2F42B70CB11FF3F818E8FBC743FC42139F9B17BBB59D48B58ED8CC4607D6
            FD22A9990B4225D0C902A4EFC7F4ECF0536961649808100705C836E4AD2C2482
            502E7F90AA5591ECEAA51F941A623F0CAE26FFC6502016E96DDD4E788F107ECF
            ABBBFC48F102246815D1F7647B40C3F7EECCF688EE8DD7CCF3E4F2F46B64BE3A
            7ADE4174DDA2FDB91FF767F92BB4CE866CAF39B4EEBBD8F67773630407110192
            5836B700D9F542BB9A5AEE0009950602F8CD8E4528537CE8CB32A46A8EDCE4D8
            FA1D8D3FA77DD9EE76F41BFC09EAFF3CD7E5272040BA43805C605580042D10FD
            6CB6492E7F67D0AACEE70253AF91B9C99529A1383DF5E5FDFF7DFEB6B5FF7899
            FB3B8BF89CD8462E96154251C5ABCB5E4B6E30DA7EA65B1B22388C0890C4B24E
            0B1074C6BC90854410EC20BDCE46FA018F2798463450936FA8A3F13F5D0D5326
            E7B19DA6DB098F81AB0CA6B0FED2E5A78A1720DD4825ABE8AD7B035D02370B76
            75F1FB101B865A1F4E14A3F30B101D487AF2BD9B5F8AD18FDDE7FC9B1E5AB427
            51ED743E821CAFFB910AA64B1E5CF65A72835206414A9F5DD984FBD2D6FD3EA6
            E7961201E2B40041876D83B2D72208DE60795277F628C7E8C7296CB61D384582
            6E272A89CFD0D7346581D4C16E7612FD008447E12296C50B1010A44074888131
            2E7D17A29D3F70F1FBBC0A62D15E72EBCB90116400B7FC67EDDCF07F3CAF6A7E
            84DADDDE66048A3BF4BB87B62229D25A398800492CEBA40041CA47DC69EB63C7
            CA044133480D774AE259FA8188BBC9880DD195698CBF3B34841C9D28E5E81C2C
            74125771F20B7C0862E7B62BF8A98400B9B0180182A97A87EADE409758482AED
            F82C17BEEB29B6ED756FB0669C9D0A9A836E21750766F55917D3F76DEB70FF0D
            A76257EA7EC4C1A8F76F0E7D29360D53D94AA9F9257891703F1120E6B3DC0264
            970BEC68661C349F96BD1641D00FAE68C3D822C6B350D6E8C714D21B2458385D
            AB776926D5BE0DBA1DF118485B7A7CC14F9526409095E87ADD1BE82208107EC3
            E1EFC0FCFF09BA375433D7BADD0646DD8F1AA29797D4D366BFBF4454031D1071
            7BBB51E3E57187D68DF4EA10D0ADE5AE48F00891FE2240CC674E0A105465D691
            7D4410EC267D083CFD20C4B0BBE3D57D0B700FDB58CD3E940A0AC5BDA5DB090F
            82D8B9DB0B7E2A2E4056B9A8180112B436C7DC7C27337FE1AEFF0DBA37523353
            4965BD74158C7EA0FFB2EC9F97D1CCF655B99F334FC7B69FCF36D1A1757BA598
            A66017224012CBE61120E7DBD1CC93787567D9B12241D0C87D6C7B279E651D80
            46FAD87535FB883B067E0DE28670BA4BB7131E647DB222124A1320BDD87EA2E0
            5444BF8CED4487D6BD29B918EFE051907A1C95BA5D2D826A64BEAA219ABC705D
            3A74D6F544B5AEC6BCA7F22AA52627B197F4EB8FE07F4480249675528060F463
            773B5624089A984F2A107851E295F4837C2FB67B753B496A4ACD8DBA9D289173
            D8CED0ED84C740042DB22915BE9D5B9A000198B6F777DD1BEA124FB0FDCB81F5
            8E2415BFD4A47B0335825CB7AB512239877B740FA96E4DFD9F7CEA6B5F8EFB6D
            7F918B6977E340C4A3E08853534875A491169C44044862D9DC0264675B04C817
            6C2BD9B12241D004E6F63E997886833079FCE08283D88566DD4E323BB13DA6DB
            891241D5F8DD743BE13130A56F754B9F2C5D800429101D01BC8849B4DE3A8541
            3A63C4382EA37BE33453B8568D03C4633F6E59B80E8D9F753551ED0C5DDBEF74
            B1659C1B1FD6B571820344068800319F39254090F90A19B024B054F02B77B28D
            4B3E0D65DE5C7332EF7BB1608EF03BBA9D2811B951910D44D91E963E19EECE5D
            E13F69D6181620DC216BB11E7F7B18F977D4AC5830A28434D5336D5C27621EB6
            D2BD619A41A1E1CBDDFE5274BF9AAA5497A6EEB71B883AF9A7AD9A4D1A463F00
            52869E52F65AF283D12549E65329A0A32D0224B1AC530204F3215F2D772582A0
            09CC8F1F99F64AFA8187F9F94E67D5290614ACFB59B7132580F49568EB7ADD8E
            780CEBD32E4A1720885B7A5BF786BA086235A6D9B4AE2BD9FEAD7B83343385ED
            005D5FDE87F7F5A3668FA5EBE71F4254FB0B7A487A1C0919755FD67468ED5055
            4B919AE62654022240D296CD2340CE2BB79991C1452A770A7E25FDAE53D6816D
            CC775E56B793268853194AFE4CD388D4C1AFEB76C283589F7651BA0041ED9AE9
            E48D29846E60579C14463D6FD1BD319A798F6D1D1D5F6C049E73FFEC930EA2D5
            7F7D8AFB359DAAF0A09ED10F88031C434E955C47C1D04D746C98E01055224052
            97754A806058F6B8725722081AC09DCDAB934F330EB890E782A6BF219581C6D1
            4A810E21372A7212426AE7CF2C7DB4740102308AB7BEEEAD75896BD88E29731D
            5E1BF9D4C102B61548C5BF69A14F2DD1FE7F1D4277CDDFCF8CFD70B5E8602A18
            012A9C2ABB745CAFAB22384C5595089094659D1220084ADBBADC950882CB3C44
            5999DBD20E3854EBB6D631740F4CA3F16B36A34B49CD2317922095CF28B23AA2
            D5D944D4630675AC76959103B5BDB830EB2005A25BAB2C9F9FFE6C5FB1F5D5BD
            219AC1D4BD77757C717CF4E333DED1C7FC86BA7FACB6434B74B6053220EEE5E0
            FA9DAE5F23B88D0890B465730B909DCE2DA789D17A48C83DB2EC1F4B10DC039D
            8B55F84048E9C2650DEB239BCE8ABA1DCDE069B61D743B512272A3221B4C49B3
            5E5320C6A7DB481DFD77E57369C77EF3696E7195180E619BAC7B835D02D32671
            E7BED491C28F494DCD0C3210ABDAF6174380D4121DF0D7C13465FEFEBA473F10
            B786B8BB010E7E0732E1E92E722BD8890890B4659D1020484BF83539372F5210
            EC6621A94C4CC92C39D9079A57A715FE876D5FDD4E94400DA91B1523743BE231
            70C7D37A76B528F7C842117A6D9589B46133D1DCCEA2BE2B4815D1C36CC348D5
            6C2896BBC99FC7989D60B4EC705D5F6EA4DDE55DFDE1452BD06EBF5FC7BD8BD9
            BCDF17B7B3DB8CD3E97711808E5A40FFDFDE79C04952556BFCEB307966C36C02
            96B04BCE2B200A489228E9A1A8CFF4CC98132A264082607C8011544C98151451
            411114098AFA90282C2CBBCB66D89C6676F24CBFF3D5ADEAE9EEE999E95055B7
            AAFBFC7FBF3BD3A1BAEAD6AD5BF7DEAFEE3DE70CD93C49C54738884FA6340E48
            CE6F83102041DF988AE237C74BBA3FEF93FC1B8D4FE943F7755F22D74B7A9FED
            4C54C0BE30B34ED61E614694021BA449186A019A3761C5A19FC7DC26605B79C3
            151AA0AF40FD18A27366A95CA70774B1FA79DB19B78CD5659E1C6E4D9156A281
            63AF955F03FA0F04D27C5664B5E960BB1BA420637F7386CD13547C4605482802
            E4C392AEF5E172294A18D090F0C6BC4FF26F32C6B459ECFE8F225F92F409DB99
            A880B324DD663B1311840F70FE54F2D6EC8CBA77C1670FBC1E17EDF1303697BF
            249EF163AC7834B200979C95E3F480713E4ABF16B5C90698D9E18DB632C0D678
            7A1AF8F4A63371D5C68F8812790E96BC5EE542EF57F302DCFF95728A97DA3E49
            C5475480942A403E534D317309C1DB7CB85C8A12346CE0F3D5F65897BB7F45B4
            5D21F209ED176D67A2022E9654B5B78B1A836B4A68A7F06CC9BF70BD60AD5BF0
            254C2DDF0B16A9A7F6BA1CB14ED7D67CF0D0623BD396B166744E38D49A9634FF
            1B96FF50EAFB0C20BD099605C8B1289C31F71F8ADFBB6C9EA4E2231C60AB0029
            5180BCBC2A01F200E2EB9547A91FBE02CED6E5DD4F633AB5A0A3DCFA41794B76
            A2C32F31C6E358DD439B98FD6096BC97066D40A4DEDE79F027716A27CA354227
            5CBEF70DDB271E12BF93746E89DB3E09F3E4BF9E2977C6C8773CC3F3CB379E83
            2B36BDD7D87ED8F6389E70DADB20DDE3F22E6690D6AD764F54F10D15205E0EF2
            7E3B8E00B9A2D262EE90B414C665A1A24495EF48557FA7F32A7B3F8C111FAF44
            A9C1E0ECF2061877907183811E0FB19D898851BEAB58C7087D04F71E7C318E9F
            5E91003901FE45088F3A8C99B37F09DBD11DF7AB6C67D632141EEFB099019A33
            CD4E032BA44ECF5BFE5BA9E7F249B20B96673F383AA4F7AB5D023C0663CD1C6B
            F324159FA1F72B1520810B10BA8D7BC4A74BA62841E0C6FAF06E96629B240E82
            717F18074F6E6F96F423DB9928137A77E132A366DB198918574BFA5859BF708D
            D0572FF802E634423AB4B28FC987460C2AD76AFBE443A01FA6EE6D99601B353A
            071E92F442DB996894B6B95D062867AFFD206EDF76B67CB0DAB89DB6CBA992EE
            0CF8185F90F429DB27AAF8880A102F0779BF2D2E40CEAD58807049C52F7DBA64
            8AE23737495D7F8D7939AE0069930FB9FC222EEE6169CCFD07DB99281335EE2D
            CE58870893229D51CF4EF8C2FEDFC427E63F5A89113A7958D261B64F3E24E87A
            F85FE37CA78E11806E180F75CFDBCCC49054EBD94DC0CD5BF7C67FAFF9BE89F9
            91B0BCF4CA10864BE65324FDC5F6892A3EA202C4CB41DE6FFD162034E8BDC4A7
            4BA6287EF24D49EF1DB3E46AAC00A19BCE97D8CE6C1954E25AD4367CBAF739DB
            998820AC770F94F58BA166A0713B9E5EF059ECDB026CA92C6AC077504EEC9178
            33DE8CE17C18B7D04DB63368999325DD6D3B134D6EBBBCDBEACF634BEF21409A
            CEB8AC7BBE6A952C308E4C7B80C7E0ECDC6E9276D83E59C52F122A40CA132097
            555AD25C33FF4A9FAE9AA2F805DD427FD4DCBC399FF23ECE172471348C7E29E2
            B7865FD7D88F858BDB3908DE54D6AF32526F07A7E23B075D8BF3775981CD7D15
            1D9B06B5717464500914BE17177CC6A098B40FD9D376E62CF37149FF6B3B1383
            D22ECF11317DD5BA53F1E9B557881A615CE348840B7A23825FEE7ABBA4B36D9F
            A8E223091520610810EE81EBE6D5B0548912174ABAC6BC740548C67332942B48
            12D7813324F1236ED3F56C7296C33CE55346F98FA443CBFE155BF0C176DC78F0
            D578F3CE6B2A152061B8158D0ABF91745EC167B7A274EF58B5CA2D88C0C3430E
            ADA6278DB14EEBCA2FC98BFD653C569E260F90FB60669C8324AE5E0D95A22454
            8098375E0EF27E5B5C80FC5745F16F66C30C2CEADD6FBA120D86A552BF1EB4FB
            C8C2DA9EEBE1342B40A8B82FB79DE10A99684D7B14E1FAF245B63311417E2EE9
            F565FF2A93962A9DC6AD075F8573677563737F45C79E22894B4BEAC129009759
            E5BAD7A5CFF94FDBCE9465E8B992DEC12A5BC0E72329698FA7CAF8EB45AB2EC4
            83DBCF029A9646C1F09CEC2F7DC553211CE700494FDB3E59C52F5480B86FBC1C
            E4FDD64F01524F4FD19468B34AD2ABA552E70FCC33EE9FEC4DE40810DA2C5D59
            DEEE23C5DE300388B84043EBEFDBCE4404E120B8B2C08CBDB370F541D7E1A3BB
            2FACD4089D30D8DC91B60B210458420C32C8B5F6AF433C5D58FB0DC587F58702
            4ECC0FD1D30B45441FB49CCF8D46A489EE41046C3F0867D13F12F0312A9B0555
            A24B420588FBC6CB41DE6FFD14208CABF06D1F2F9DA254029723BD56D2C6FCBB
            CDF5A0927703252F923F9FB59DE12AE18CC262DB992883EB25BDC7762622086D
            627E5DF6AF4668BE90C01F0FF9345E3663A49238201E8CFBF076DB851012D360
            DC0FAFB29D9108F02618CF4ED66990A6B943062447ACFA141EDE712C90A677E8
            48880F46FB7C4ED2CC808F439173A1ED93557C84037715200843807C4DD2077C
            BC748A522EF9FED3BD1B2193E3BE71F406A2216A654F9CA345DC04C842986506
            4A3EB49D7BA2A25FF6CEC635075C8F8FCCAF6A06E44392BE62BB1042826BEC4F
            82DA2B7E0B117918E0B9DDBD63FB4C9CB152F45003C54724DCEE12067BFD4908
            C76150D0FB6C9FACE2232A405CCA1220152D89BD43D2E93E5E3A452995D55275
            F9F4B620409463715EF09153D12F87B1FBA805E22440F68E515EC38456B60C90
            3758D1AF7B67E1CB075D8F0BF678AA1A01720C4C0466A53E7850D28B6C6782D0
            2A6FA68CB9BAE545C7B2AFCB5DB08B8CC1B8422E12B31F248C38398CAE4E2F6C
            E5871255A289B3FC4A0588FBC6CB41DE6FFD12205C07B04CD2AEFE5E41459994
            1FC299B64E6CCCFFD8131E633A31C60379B7ED4CFBC85E3051C5E3C0DB247DCF
            76262208E3B854EE5DA77726AE3DF89BF8F01E4F5723403A6106416DB60B4309
            1CBA7CDE0F96830D7A700C32AD0178EBF3FF831B37BC19685E1615C3737234CA
            8DCD5319DF80AE20A92D5480E46C578E0039A76C01C2A8D1CBFDBD7A8A3221EC
            3C3F2675F7A7E66D61808FC2CF9CBB9A06A7718BF3311947C03CA18B03F56467
            500EB49DAB5C14F7CCC2B5875C5FAD0021FF86A94F4A6D739AA4BB6C6782384B
            AF1A813F774DC1A92B6E02D2EBA4D9AE6C2230206897755ED57B99944464AE89
            E2132A4072B60B56809C0913404751C2806BD5E93E73CB98C8E6B4F728FC0C98
            05E3E7FE58DB190F801325DD6B3B1325B20466C646C987DE75BE5CF1AFFD1320
            14F3E5BB0256E2C4E7255D643B1384C3A81669A25B65BC75F88A4FE2916E699E
            1BF85C29324BAFE82D6D7508C779CE3D965233245480542E402E29B7B4E9B9C1
            7A0455A5E6B95BAA282BE73FB29F4C38F1E1BCE0143A239CD76AE0BB3360ECAF
            FC838D41C6770350BA977C2CA432891BB49DBBB3E25FFB27403E2CE95ADB85A1
            04C63D925E6A3B131E8EDBDD26E0B3EB4EC425CF5D0C3471157764C407F31256
            70DAAF4BFAA0EDB3557C24A102244C0142BFFE6FF5F9122A8AC73F257D4ED2EF
            C774508E9D7906F93742F6553DB8867EB3A41FF9B32BD768DF99454AC2672F34
            FA90A2382352D85CC25AF99356FF04083D43FDC57681288140ABEEF992B6D9CE
            0871C4878CB3BAA4F64F597A3D303453C65D5B112101429B28CE4C3485702C3E
            24FBA7ED1356FC22A10284542C40CE2E5B80F089F4513E5F4545A1F1DF35523F
            6F19FDA8F0062862EF9170EE60BA983CDFF609840007F6D7F8B22716E1D09049
            0D8DD20EA6FC9C09F92BCC7231251F3EF6DDB3AA3DF4CC1401F22D3F04C81C98
            A0966A885E7B9C88082DD564608D0E19DABF6AC5DBF0EBCDE7018D1CEB47467C
            902B2455148FA04CE815705FDB27ABF84842058843E502E4E2728A9B4F08D64B
            9AE2FF9554EA14DA13898048DCE6BCCBABF3DE9BC2817176A3174ABA51D241B6
            4F2224683B507D845E3630C383467C38EF13468414F1645C0174314B0F4B699B
            051551FE20E9ACAAF6C0199043ABF682E51186CB51255CE872FC33B633E1C116
            66B628905F6DDB1DAF5E719DB40A1B5DC3F3C808901698D98F69211CEB7218B1
            A3D40A2A40CCFF9004C802498F06701995FA628DA49B609613B9F52991F7CF21
            77B9D55861C2A9BBCB91BD83EB825B25BDA2AA3DF0E61F1901060773CAD42D67
            8A90EA550867A2BE63BBA0224AF5D18FFD1520BCFFDE68BB5014DFB85BD2C9B6
            33E1C15664BAB4CE83F2A279F1374CCC8F349F5F26ABDDB59F7C12C6583F0CE2
            E4465D9994840A909005C86B24FD22802BA9D43EFD9238CB718BFB7F7BFED705
            42239329FEB9F3C436C1815C640C2C43849EA5F6A9F8D78EB670C547F6038F8C
            6938530DA84E8024B8F4E378DB051551E896F8FB55EDC15F014263D8AFDA2E14
            C51768F7C1E57D5B6D672497CE46E08A7527E1F2B51798A5579948890FAEE858
            27696A08C7E2B2D4936C9FB0E2272A40AA17206795E5A5EF72D44E54692578F8
            B8EB4F30C6AE7748C55B37FEA6932CB732B5F932D477FD63E13000E87365FFD2
            9BD8181CC0B8CB1F28FAD2D22026D3A85084D0F075E9F807A87B683BF7AFAAF6
            401B1047803CE38700E1D3F23FDB2E14C5174E90749FED4C78784BAF1EE9010E
            5F72B38CB37648BBD26F3B5B857C0AC6E14918BC0EFAF0B68648400508421720
            2105EA5162CA72494FC274841C68D1B07C34D254A29271A9F31B0614A4F038D0
            F6094600DE7FBF29EB175EB10F0F9B34D17548BA0D041BCFF235C895304BE394
            B1C850CC710FBDB9BABDCCC435877C131F99EF8B00990973CFAA217ABC6130AF
            AB6C672217C6FC484BEA5C7629BA771C0A346C40C49E4B744A7E68AB1646DDE7
            8337DEFB918ABAA85441420548DEFFCA05C8A7CA29750E2E751058DFF4C1CC6C
            AC857127CA780FCFC078F8A051EBF8C3D6F205C83130B36EA7DA3EE908C1D80D
            1F2DFB5743223C4A51146C484632C62B56B6912B49897063DAF6EC64BB80220A
            EF8DEA238F3B02E45B7E0910C2FBF750BB45A3540167974FB19D895C68F331A7
            05F8EEFA03F18E155F019A2369F6C065BCD53BF4280DBA24FFB8ED13567CC4E9
            1B558084294066C378B709C357769CA028FB314C4D8AD402D72A612DE1A8958F
            AE7ADCFFF42BBF11CE139D4477F97B2C5980EC07333DFE66DB85104128F6F62B
            7D730A8A2163785ECA13C86C43C2F820A972AE1967667E6DBB70220C0364BEB6
            EABDF82F407E20E92D564B46A914DAD1D1EE6393ED8C78F0D9C5CC06E9200681
            9D965C2F3D48A7F48C344F89D4EC075D50AF82F1101C0674BDBBD8F6492B3EA2
            0224FF7F0802E45849F7077335634DE4A6BFC3A1820E65F2C1EC9192DE03E399
            47DDB88E0F9F58FFA7A42D6974CE6557A55EAF64C176B953CD13F390A4C36D17
            4C84F1C73DAAFF02E40218F7CE4AFC385DD29DB633914B8334131D32AC3F73D9
            F9F8E3E65701CD4BA40D8A9AA3C24498DEDFEE90E6F30CDB67ACF88C0A90FCFF
            150B90334B1620EA5EB338AF97F4F3683DE009832A04C8F801EFD4C6A834BE0E
            E3C168629C72CE98C792A5922C765D2715202F47B97629F5878CC67C9821EA99
            816B0EBD011FD95304488F2FF9D288E8F184AE63CB32E00C9A21696666B7003F
            DD380FFFB3EC3AA069A5ED2C15637F494F85783C2E1F56470FB5842734548084
            2A40E8AE71F2414FFDC1D8288F3BAFEA4A84542840268EB6CD0EF5B3B6CF2C06
            70E8C96504132F83E3EC07A95A80B8248AAE30E43286556E7E94F1391866B966
            75F82F406888FE3C74C6314EFC03C63E2E3238E2A311583B00ECBCF87A6973A6
            485BC2156291EB14B98AE3D8908E55E672592516A800F153807CB2D462BF0B11
            33768B00B487E01ADCAEEC2715797A8A23659EE7E4B31FE41C49BFB37D6631E1
            0A1803FD2264F2CBD92F01523C28E47761E25B28E343B7C98CDF52BD64F05F80
            10752E121FB8F08E7DCE5ADB19C9A551DA847691B02F5B763EFEB4E55CA06945
            D4627E9070FB9744E29DD05523B5870A90D0050843242F92342FA86B1A538A3F
            89AA0B11528900C94C264068ACF774F93BAF4B3810990FE3E271944CF6CF28BE
            091092C8BD3A5C47FD23DB051103F8D4D59FE08C5901B2D84F01F213496FB053
            344A99F8B394CF47BCA557376DDA0DAF59FC2DA07995B41123B6B3550C7A6D9C
            1BD2B1E86E9B1E01D5F56EAD90F0FA3E1520610B103EBD5B041D1816C2C1D758
            4F4D2A40C661D28130852EBD85EC6EFBEC62C21D92F20D1C8B093CBF0588F9C7
            C067F7D82E8098C0A7A0EFF4654FC108904F48FA829DA251CAC0BF7AE4136C5A
            3AD36EF8A0672E93FA795014637E904B61668DC3E2F2908FA7048D0A90FCB2C8
            FD1FB0003953D2ED415DD71843DFDEFF5BF49B9A17218108106E729BFC3DCBF6
            D9C5888F49BA7AC2B2F55F801C0713E1BEC5F6C9C704DACE7DDD973D7902642F
            5F05080D6523E54D491943E4EC09D8AA344B73D0D62015E8D9F3F1E72D324C68
            5A13C5A557BB49BBB50CD9D15EE03010FC0C1837C94AADA00224BF2C72FF572C
            405EF689528A9E839C2F05755D630C07CA7F18F7DB54E41A621F29438064CA0A
            A94DB7C6D5BB2BAD2F5E2E85FCDB71BFF55780E8B2ABF2F1CF134E3002840E04
            68A752CB0D56DCA18D4E98DE9B2685ADCA8C26E0C71BF7C29B965E23E2E37969
            1E866D67AB1814D76106B3FDAA0CB22EB07DD28A9F2454805814203F94F4A6A0
            2E6D4CE12257DA2C2C9D70AB9A1521E50890B2D6037349D11FCAF981E2F0DF92
            6E2EFA8D3F02842D2567FB3E6CFB4463C6004C3BB1C297BD8900B9FAD0EFE0A3
            FE0A10424F7E87845E3A4A29BC4FD2F5B633918B233ED2C0C62160D653DF9281
            563B908E5CC041C2E09F3F0FF178FD70665C9CC0BD4A2D902736F8810A90B005
            088DAD8F0AE8F2C6154EE9D2A7F8C0A45BD6A40829B1A3F1625194CE2C49CB25
            B5DA3EC3187225CC5AE77CAA172027C304ABD3016AF92C81B1A1F387E0040807
            69D5476A57FCE6F792FECB762672616BD222CD446BA3340C4BDF81BB379D6E66
            3FA2273EDA24AD913435C4637E05FA90A6B6500192778CD1FC211401C29B974F
            F9670477856309DD129F36F96619B74246AE71AE9252054845DE50FE8E88F9B9
            8F11FF9244C3AE7BB29F542E4018999E4B095E6FFBA4620C67F3FCB3691201F2
            B505DFC407F65CE6B700A13DDB17C32D1A6512E849691E72DDBC4784CE06E05B
            1B16E03DAB3E65663E12347B885C1F77238A3989090E7ABCA2972D9DFDA82554
            80E41D63347FF041809CFEF1C98A7F81FCE6D120AF6F4C29EF4947CD899012CE
            A5FCD90F0F46F92D39408D5294BB25FD00F4943592D958F2AF9209DA039C0E23
            3A4EB77D12350007F5FED5E59E4E5C71D08F71E93E4F604B6F85775771F830E5
            4FA1978E32118C52FF57DB99C8C571B9DB0C3C2A92E8B0853789F8D82E63A81D
            88A0F9900DC70A3AFB516B78E24205086C09100E447E1AE0258E2BEF90F4DD92
            B7E6603C9DAA21119298F83BCE7C8C54EC0B9E012FEFB27D863502A3A5F30102
            674656C22C6FE393BA3E494D6E9A07E3FA98B34E874297BFF9C95B606CE8FC61
            600AF699F504161EF10BF4499332E05FB805C62CA09D4A63D805A414E55A491F
            B59D895C58D5A6A7CC8AE2C4D39748CB72A0D4163EDB885C9F2612C9597AD519
            E2313905C47B6893ED93577C4405C898638CE60FA10890CF49FA54809738AED0
            15E9DF4ADE9A028405EF8990F23C434590493A9DE1AABCA17050CC45C5D36D9F
            A5A254096DE7FEE5DBDE7A67E0DA177C1B1FDEF359BF976091C76004A86297FF
            2062D781E2A34506106D32B4BF60C94BF1D5E73F08B4AEF2750ACE3712091B81
            35E9B9F132DBA7AEF88C0A9031C718CD1FFC10201F9BEC12DC22E915015EE238
            C2AE7FBEA4F565FD2A2B42D2B6F3EF031308109E67E5B31F1EBF84F1ECA42871
            856B537695B4D5B73DF64FC551731FC43F16DC8A2ED1F883FE0E007F26E975A1
            96905208AF28BDA62DB19D110FB6E46D32786811F1F1E9C547E2AA67DF0D740E
            4A1740874F919BFD609FF1CB908F491B1D2E5DEDB57DF28A4FE40EB05580E41D
            634CF9384552A900396D5201F284A48302BACC71E549490757F44B0ECE532933
            1312EB5990093A9E617659559F9B2EFD53E20E67145EE0EB1EFB3AF1D1FD7F85
            ABF7FB37B6F4F9FE005AE33DD9E7FD92AEB39D098F5CF171C5D22371F9D3EF90
            375BA4FF1201D2DA217D59DA9DED8E425F96A007453ACCE908F9C0FE051A55A2
            810A90480810DED00C50550B8FECFDE457925E5DF9CF33A672C65A848C234032
            C3EEEC47D54FC6D889D09B4893ED3355940AA16B5B7F3D88F54DC73BF7B90DDF
            3EE0016C1D28CFC15909D0E9C01DE1158F52C01F259D693B131E6CC55B65D0D0
            2AE2E332111F9F5924E2A379B3F45DBDA6E235B71901C2076A4E7B6FBB2F4BFC
            05C6703F4C56C97177B77CE28ADFA800094B805C38D165A09DC37D015EE6B872
            85A4CB2BFF79C6B4D56CBC632B428A080C9EC6F0909F07F9B5A4F36C9FA9A254
            C8C5303674FE3120BABC73097A5EF4236780D8EF9F113AD90366E98F3E700A1F
            2EE3D905C66984751C9B0F69E2DB5AB9ECEA45B8EA198A8F8DD2670D7084E26E
            350C6754D131CD58A65767F7572D1749FAAC85E33246CBEF6D9EB8E22739C2C2
            79AB02A4F018A3F943E002E43D885804D688C0805DD5AD33F5EC411A1A626A94
            5EA472B203E20C887FEB82CF91F43BDB67AA2815F22A1811ED1F7D9DF8D481BF
            C4E7F67BD46F37BC8437EE429800AB4AB83056CC1F6C6782640DCE5B283E5E8C
            AB16BD5D3EE0CC4781CD8737F8483598C1566383791F7E57F66249FFB45054F7
            4B3ADEC27195A048A8000957809C3AA1A7BFAFC2AC6F54F25920E9F1AAF6E089
            0E5E8B86387ABE2CAC9C722E838340C237F141F824964B0067D93E5B45A9000E
            E417F9BAC7817660EA6A741FF55DE756EBF3770684A8F387F0F916CCC33EEB64
            6D3E3CF1F134C5C726698973673E5CBCB69E0F9E92D254B7BBA617E13E4CE341
            798FED6CA1B80E94F49485E32A41A10224520284817C4E0DEE6AC7926D301E2F
            FA7DD99B3713D2D414B3599082CA48F141DB0FFFE39C7C41D2276C9FADA29409
            E301302E80AF6B12E905EB25BB3E88BF1DF63B740DF9EE058B70D9D855A19490
            425648DA1366EC6F955C83F34B97BC08573E7D3ED02CD5B881DE0E52637F9028
            187470E0C507514DB28344CAC4820A1EDA2CD90898FA0D39FF0F5838AE12242A
            40222340B8D52A497303BDE0F18353BD47FBBA47274861DAA4D888909C0A3834
            6C6C3F8209B2B88FA4676C9FADA294C9BD924EF47DAFFD53B060E747F1F011B7
            A067C4D740841E6720224B81EA842325FDDB762672673E2E5D7C84888F779A99
            8FE4C0E860AB9044FE00C3080EE9BF5ADACDE02BF8BE8CB698975A282E3E5CA0
            E1B9FF9178144BB8837015209111207C2AB334D06B1E4FBE27E97CDFF71A3B11
            922B40868214208403A2336C9FB1A294C1B725BDDBF7BD0E4CC19C594F61E591
            BFC080BF91D03DD4103D3C2E8719445B6548EAD134B9DA8D223E2E5EF4627C6E
            D15B8DCD47AADF1899E70C4EF22814201E49777971BAC9D838063313F25F72CC
            DF5A2A32C6CAF985A5632B81A002C48E0039E523E35D91B3A1DE1D8A41C576AD
            BFBBE40571454763A3A9C091172139958BCBAF82B53C7CA9A4BB6D9FB1A29441
            30B101FAA7E1F43DFE8E3B0EBD23A825586A881E0E9CF538D27626587FE634C3
            69BECF5DF872FC6EB534B54D3B46C507295780385E1E2535CA8E1B9B8C00C9B8
            9FFBC33C18BB0F1BC693C1CC6C2A16F1C4045480203A02E4E392BE18E4658F29
            F4D3FEC740F6ECD983B0D1F69E22459644CEECC760911BC277FE0F11E8B015A5
            444E91F417DFF7EA18A1AF41D7D1DF759A88008CD0891AA2070B1BF6BD242DB3
            9909477CB4009BFBA4B23EF9663CB2F668A0D573B59B63F351AE00719EA77106
            44F4419A9EB1DCB850FECC90532E5120CFB7546CF360EC76949A4105481405C8
            0F24BD25C0AB1E57E621C80628D7283DD2EE79DDCA35D03F9AE760394DD29F6C
            9FB5A29400475CBBC17870F3170A90CE65E839EAC741C401F1F8A4A4CF075940
            750E3D5E7DCB6606B2331F527F8E7DFC75F8FBCA3344D83E2BED382B14470A05
            82A25C01927DEFF65F8C79456F8F55F767095B46E7E422392DBD2F6A0E152051
            1420FAC4792CAB618CCF8255056CA4195DD69BBE8E22ACA483DEEC47E0E2C3E3
            214987DB3E75459904DA50EC8B20DA897004881AA20787F5253CDECCC7B67E60
            DA83D2FF77CD075AD79B598F6C53EE970071C9F66739B744F962E46B926C799E
            7A42D221968EAD0441CE605D0548EE3EEC0B9056496B244D0BEEEAC7122EBD3A
            339423D1A52D0DD21BFD786A140452890607C2CEDBC992FE6CFBCC1565126E83
            09A2E93FE108103E64E1F2A0C0D755D6197D927685F1A2143A6CA9D9F5774AEF
            BEB50798FEEF8F02DBF704DA9E972F5D9F03410990A43B20CBFBFD24D52B6F50
            830B247DD946B9B91C2AE93F168FAFF88D0A90080890933F5CECD21C8108B806
            8C207C02F3A1D08E4611D218A82791CA70E27EE478BE0A5784DC23E904DB45A0
            281370B5A48F05B2674F801CFD93200508795AD27E81EDBD3E79BDA49FDB3A38
            5BE9198DC022111FFB3F26FDFEB67D447C3CE71A9BE71A9CE7BDA85E8078DB15
            2ED5E5B2AC62FB1DBBFF5749BAD956B9099749FA8CC5E32B7E922C183CAB0089
            9C00A19BB99F0574F9E3CCBB24DD10DAD1BC717D7353B43C63B1020D0C9808B8
            E12DBFF260F4D9276D1781A24CC05B24FD30903DF78B0099118A005143747FF9
            95A457DB38B03784993E05F8CDAA6938EFDF97036969BB9BB78C7ABA0A438014
            BE766644261520C7C32C5BB3C5C3300F64955A410508720E0ACB02E4826297E8
            4A49970474F9E3CC4B243D10EA11BDA746CD2D36661BC6E2E56120F4E557B95C
            0F63C8A9285184814AFF19C89EC313201749FA6C607BAF2FB8E48A71B5B6877D
            60B6D04DD264B74BF7F1C3D5FBE12D4FBD1E18943AD4BC15F983FF480A9017C0
            DC474D61975B0E7B43E3A1D5162A40907350445180FC5AD279015DFEB8C2F5BB
            F46CB331F4237B46E94DCDA3EF6DE1453E1F1C8085D90F8F36492B2575DA2B08
            4529CA3698414B30ED447802E415926E096CEFF505FBD2DF847DD0ACF890D6F2
            ABCB0EC0058FBE0F68906EAC7933C6C699B42540BC81D4983E8DB632743A323B
            EC72CB8106EFDFB0787CC56F1C81A00224E7A088A200E112970303AA02718506
            68875A3B3A6D40B866963621CE85B52442EC2EBFCA4507484A147954D26181ED
            3D3C014243F41581EDBD7EF889A437867D5046379F22639B66111FD72C3E1817
            3EF96E5123A28DD33D6E74F3C2B6DB820049B8EE7EC71E730A8CD7A9DDC22EB7
            1CC27338A384870A90FCDF581720278DB1A99E2B69B1A496E06A412CB1B68637
            CBC8B0892ECB9910BE0E1B6FF9555F9FD562C8E126D8BE268A920F63D5BC2CB0
            BD7B02E4989F062D40083D61CD0BF408B50D67C1D89F0E847950C7CDAEFB9CEA
            ED8B4EC3F7979D6E663E3CF141AC0B9022DB9BEF447C24B8CCF9A030CBAC802D
            30F53EF425734AC0A800C9FF4D0405083D0CDD135C0D882DB48BB9D46A0E1C7B
            10181192B6E019CBF37E6577F9552E14C9CB61779A5E5172F92A8CCBD0600857
            80F0A1CB2B033D426D738AA4BF847940CE7CCC96EE61C72070DEC257E1CE5527
            01AD9B649CD39763708EA80A10BAFDBF1736571A185E0A1D03D51005F54F0508
            720E8AA809107A7AB21AA535A2D0238C4D578006CFFEA349C6DEE954B8F620CE
            F22BE9D986420D3E38192F9142F89BED4C288ACBBB257D3BB0BD6705C8CFC210
            20743F7A79A047A85D7E20E96D611D2C1BE3A311E81902DA1E926AB8FE08A063
            B57C318C3102227A0264AAFCB90FF6C5C765924775B95B53A80089AE0079E907
            0BAF168DAEDE17402D88378904D7753F6A3B1B0E9CF96025696D73DF8721425C
            BB9381FE28D87F14428F6D57DACE84A2C044B9BE37B0BD872B405E0E0BC6D335
            C07A497BC0382E099CAC9B5DA91A8F6C020E7FE41340EF1CA065A3896E5E8C68
            0910C979E27E79F58230CA6B02385B758AE53C287EE20985DCF72A4090735044
            4D80DC29E954FF6B42AC6187B297A46EDB19C9E218A53700CDCDA3B61981E20A
            90FE5E6024133501427E87A0A24F2B4A6970ADFFBE08D2783B5C01A286E89571
            86A43BC23810975CB5A7CCB3A89FACDC0D6F5CF856A98553447C6C76975C8DD3
            4E474780B4CB4BCE602F08A3BC2660031CEF7509B5FBA8255480E47C1E7D0142
            D33546C09D17445D8831FF90748CED4C8C8133114D72C99A5B83374A67A5A4ED
            4774EC3F0A11358685302E5015C50674DEB1BFA46064011F32F4B4A37DE7A7D1
            75FC2DD8C6C9C8609F3B24DD73DA33D0A3D416374A7A6B1807A2F898D960C639
            DF5DBD1FDEF1D8BBE48D54BD5606182C32D3904B3404C84C185B0B9B06E71E2F
            92F4A0ED4C283E922B1E723F5301829C83224A02641F498B306EAB55B784BA9E
            B774326650427B10BAE70D5284445F80B02C7681592637CB765694BA844FBDCF
            F07DAFBCC79D659772DFA51844AE11F71DFE191C3703D8B8A3A0EDF71F8D0955
            3AEB60668D02F77AE578BA6A84F3D8E5FD0B4FC6754FBF1A68DB683C5D217770
            12590142517B0FECBADAF578BBA4EFDBCE84E2332A40B24458807C20F7086749
            BA2D98DA106B2E94748DED4C14C5597A4511D22A22447AA49180D664C44380F0
            EFE192FE0FD93B5B5142E35A491FF5654F9EE8F01AEC8646F390A1210DF4334C
            C200FEF9C28BF0E2E9C0FA5E197706774BD220F7D361145E0D70B2A4BB833E88
            E3E94A9A7B0C03873EFC26FC67ED61224AB74B8B3760663EF2EA42240508DB68
            C6D98882F7C2EB24BDDF7626143F29221EB25FA900C9FB8D750172629E00F9B8
            A42FFA5F21624EC20948F447DBD91817CFFEA3ADC354CC20DCF3C647809013E4
            F53DB6B3A3D41DEF94F49DAAF6E0CD62D2CD7652C4464A3AA8860663EFE53C6B
            A00308B9BFBBE7029D4F2273CC75CE4074FD406022847655BF0BB514E3C9F724
            9D1FE40178F9B9E46E761BB0A21B38F1F1B762393D5DB573E2C515AB00222E40
            5E2A7F6F4734E28CFD196AEF5A83A80089AB00F9112C446D8D386CD9B9AE7BB1
            ED8C4C0807DFACF06D017AC66200C2E1A1E80A907CFE4BD26F6D6742A92B2A78
            02EE2EA3F41C3B70A683E283C1462940E07E97191EFBBBDE19386EEEDF70DFC1
            BF469F7CBD632490B5B35C2AB3D44E71C686C0975E79ADF90C19B63FB60D78C1
            C31702DBE78BF85883FC255788B200A12BFB5F06554665C23ABD40F2B6C37646
            14BF5101125701C208A447FB5F2162CD7218DB9821DB1999142EBF4AA5831321
            3D3DA36BD1E3019FB6DD055D8EA5040F079FF494B77AD22D790F655CE1C1CE8A
            F72C4507C547031F0CBBCBAFBC99CC71EF63B90FB7CEC385875C8FFF3DF8DFD8
            BACD3C21F7F9EEA40A7A12C6BB97529C9749FA53503BE7D54FC9459DD601DCBE
            A60D67FFEB0AF940EA46F396E29EAEA229403E82E82C63A6374BC61B59663B23
            8A4F14AB8B2A40B244588064973FB64B5A2969BA9FF5A206B8538AEA74DB9928
            192EE1A0517A738BFF46E9BDBD669FF11120E42530CBE73A6C6744A969F84475
            7C0F6C9EE860034CC141B1C1E555ECACD24DF23A69BE1FA6E828584239AE00E1
            F6CDCEFFCFEE75332E9AF738B60E9809139F612C9097DB29D6C8F30B49AF0B6A
            E7B4F7989636E63F9F5BF2025CFCF46B4CFBDBBC2D27B279E405C8D7112D3B8B
            E32469F0DA5A420588F337CE02847EB8A311682F5A7C19E6E94D4CC8989910BA
            E6E5320E3F8DD2E32940C801522E74AEA0EE4495A0A0C83D33FF23DE27EEFDE8
            D872C828B2B1D9B5EF4899EFB3B321DE6C07FF942A40B88B6163943ED0815B5F
            FC119CBB4B3F36768F5994532D0CF27989CDC28D288C1D314F524F103B773C5D
            71424CAAC3BB179D886F2F3947EACE803138CFE45EE1C80A104EC5DF8C203CC3
            55CEEB24DFBFB09D09C5675480387FE327404EC8063D7F83A49FF85A296A031A
            167ECF7626CAC21BB0B44F31031FBF44487C05080BA55306773F9717A7D9CE89
            52938C7D50E1090FDE87E946D7A603C69EC3111DB91B6772FE952140F8031AA5
            F7CC70225F3F73E4E7B14F2BB0BEDF57A3F4574AFA9595528D36AF90746B103B
            76C447ABF170F68A275F8F07561E6F8CCD530CAE5E7CF051FCAD3501C2D81E14
            1F0704513E15C2FBF3CBF1ECBF94095101E2FC8DB300B94AD2C5BE568ADA209E
            D3B51CB4B022B5FBE8192BDE02C41BE3D155EA876DE746A939DE25E986BC4F28
            403AA601AD1DC67943564864F2FE8DFDAC4C0142284276CC02A6AC40EF515F41
            B3DCA21B077D8B1142271CB403F1796225D6D0C185EFCBD2B87CAE414A796A0B
            B0AC0BD8F3A10F009BA5F83B686CEE75FA85BF8A9C0061DC989F4A6AF6BB7CAA
            E04B92B14FD8CE84E22345E3CB386F463F530192F379B40588069C1A4B3F4CA0
            A40DB6335211B94F6049B546E9B5214008BDB1D0FFFB4CDBB9526A86B361DC8B
            1A2838B80C72EA4C73CFE4DD7B010810EF75D75CBC72FEEDF8D50B6E479FDCAE
            DDC3BE8810F692F402383FDC228D2C52B260D0D3AD7EEE346BEF21C3F6BBD735
            E3E4072F927A244AA47553BEB179B405C8A592AEF0B35C7CE03B92BD778E5B16
            4A3C510132E69CE327408E7FAFB7C542446BBA340AF0A9DFC1B6335131BCD0C3
            832648615BBB6BE05A8508A91D01C2F71C40D0385245B7E2079C2558E4BC623D
            1B91FB6EFA1C339A1C2EE24237E7DFD8CF2A14204E9C1019C1F675E0B85DFF81
            FB16FC0ABD03408F3FEE7969437556A8251A5DFE07E609BF6F38C1059BE08C47
            DEFAE4E9B871E96940BA4FDAEEAEB1C6E6D11420745EF36344AF8E182701E39D
            83121F52B4691D705D9227A0022497780B103E095E079D622F846B58FFDB7626
            AA6664483AB236A0B5B53A7B90DA1220DE8B3749BA5AD22CDB3954620B674877
            861312104670B4C8FDD631C3DC7B63085080B0C31A6A7262847CFDB0ABF1FEF9
            CBB0B5DB64ACCABBF63249978758A651E54E49BE79457434A3FC992963AB6ED1
            AC6F7CEA1CDCBA4C76DFB651C626FD26B27996C80A9013606288EDEE57B9F8C4
            ED92C9B3273C072506C8754BB7003B96CB3D21ED6AC3143720AB0A90C2738EAB
            00395ED2BD7E55971AE272446F3AB90238289181509BDCB82D2D459EC896486D
            0A103253EEFC4FC2D886A80857CA853662C739AF28F0D9F174CEC1F8B657010A
            10E28810B9CFFBDBF0A3C3BF8837CE5D8B8D3D552FC5524374130B6A0F49CFF9
            B1336F68315D2ED5A35B81C31E9426A847EA4DAB888F444E64F32C911420B41B
            BDCA8FF2F099DFC309469B5B6671ECB7EA1DB9660D1DC0F6853869E33F70F72E
            67CAFBE966264405C898738EA100790F5FBF5BD2377DAB33B503FDBBD786CBBE
            8CBB0EA37D9AD4F986CA6284D4AE00F1067987C074A8AFB19D5B2556D04BDEF9
            CEAB41E9183B3A8DF1F9B033FBC11EA6E0660B5880100E607BA73B4B78B61EFB
            194C6D02D6C9EDDB50F9ADCB60AC5C6216C79BDF2F3E24E96B7EEC88C6E6AD52
            335ADB819F2F9F87D73FFC0E38311F5BB716CC7AE4122901B29BEC836386A82D
            B922AEF8C8C9B70A9078C2D98EEE253863ED5DE84EB7E3FE9DCF32B3215CE2AA
            0264CC39C755807C05A67155F2616C94C76D67C2371CF120157ECA347373942B
            426A5F80781C25E902A810514A83DE75BEE4887C8AFB6933CD7D66663F4E96F4
            5E37AD339B872040882742A62E43CF91D7A3255D957B5EFE8A816A77B552C2F6
            7944D2E17EECC871B14BFF508DC0454F1E8BCF2F6620F5A4092EE80D488A1219
            01F25A980796D3FC280F9FF99DA473F3079745CF41893A0D53457C2CC629EBFE
            EA5CBAEDE9A9F8BF39274903D6A602A46604C8718E00B94BD229BE559CDA80BD
            C11C184F58B503976231527AC7949CE8CC25523F02C4FB8C4E19F8649B4264AE
            ED335022CB39A09136EF2D3ED29E36CB9BFD20AC3FDF91B416C655EFEF421320
            5E8C902EA9BA331F47E6981B9C5DAFEBAF7826844F96CFB651C01180712D1656
            B303CE7AA4A4DCA7CBF8694D17F0E6A75E89BFAC3E5A84488FA41DC6D87CC2B6
            D5BA00A13B45CE00BDD9D792F50F233EF2CE4F0548FC48B8331F8B71EABABB31
            946CC46022E5FCFFE79C935580382F6B4780F0E355306E0595511E90F412DB99
            08040E945AE819ABCDF48AA5527F02C47B45FF34ECD8B824EF24988E58513CE6
            495AE1DC5774BD3B7D76EEECE235C80F50F87DA9581F94FF3B4211201EDD3BE1
            83FBDC84AFEE7B3F0664F7DB872B3276BA1CC618BDDEA08DC3A7ABD901AF448B
            14786B23F0AF2DC0518F4A95D8BC37307595FB6DE1A0A8185605C8AB60EA72D4
            0CCD3D46C547DEF9A90089170963F3E1888FBF3AA2A337D98C86CC0006934D2A
            406A5080482BE8F87857F2918102DE6E3B1381E13DAD75DCF30E95F69BFA1520
            B950A89F0AF3D4FB0898C1A752BFD0209986C9438EC7ABF6E9C6D9C3A80029E6
            BE7605284A32B865F4A3200588FC1F4903DB76C31BF7BF093F3AEC2EECE896DB
            79A46C11C241E8CD6117B065964ADABB9A1DF02AB44A41B788F8B865ED54BCF2
            E10BE57AC89B96CD392E765DA22740A6CB4B7A097C9B4FE519043F93FCBEA1F8
            F9A900890FAEF8E812F1B17E547C24A53D4C65865480D4A60079179F1ADCEA63
            2DAA153E06E39EB536F10635344A6F681A67005E6023A202A47083161811728C
            A4A3619669EC63FB4C95507954D261CE2B8AFAE9B380A676CFFD2E6F140E60E7
            8FF3DB1B255D22694DE03320DC0707BDFD6DB8F2C01FE2927D9E404FAF891152
            8608D9D33D9F7A82DECDFE56C90FBD798DCE56386E08CE78EC1CDCB1FA581940
            49C1A7C759D91B2D01F246495F8471311D55BE2BE91D63CE470548CCC899F958
            7F0F06128DE817C19174DB42152066A35A14209F97D79FF4AB1AD510F4A2F17B
            DB990814BAE3E54DD22E83A674A64070486D49B5B8817FE46667C5510132769F
            F93448DA0B6656E4509801DB2E6E62AC1DDA14C928D0BAABDF4CB1CCFBC81670
            89D1C416B5959296B419C6462B1DD0FEB7BA69B2FDF37B463FFF86F132973491
            CFD38D9E01FA6EF2E1CA49F6C1F3F884FCE0DBCEBBC004084C6736D82422640A
            AE3CF807B8E480C7458100EB06CAB209B91126664E1501856201AFEDDF51A18B
            591A9ACF96D620D10CDCF6DC145CF8ECB958B4E11029E81E1360B0646190F765
            DEBF319F177D5B910039485E5C01E37A39CA70EC7251D1F35101122346673E4E
            59FF570C8BD0E8CD111F440588D9A81605C869304B4A947C3E073390AA5158B1
            1BDD27A3CFE185C9ADF249C6B941924E2C83041E6A9C0BB4EC21F748AB6C3724
            43CA6DE6C9AE0A90E2FB98180A8FA9A048C9A0DDFDACD94DB98339166E374CCC
            8160844AC211071506832909EEBF3FA0FCB3C5EE0E30EF95313468820F4E9D9D
            1B7C9001EBEE28710F7F05ED0C321CF4062440088DD2079B9D3821AFDDFD5EDC
            B0EFEDE8906C6FECCE76C34A1530A239975BB5B799E735172C3E15372C3D49CA
            5FD448EB6653FE99094AD9AE0049C9E6B47589839D8FEB12B9703059787E2A40
            228FE3EDEA993C9B8F64411BA802C46C547B02E4D877555D7F6A929A6EAB58A9
            F9B03E859D8717E3C8913532A26B949B23096FE140323382C6CC0036D3F55DEB
            9E327C9E05F0C19D331B12E4C3F300CFD9AE00A9FA67BE51D375DB12EC10DB67
            8A0869CFB5FFB850D2FF96B9A76FCB0EB82C6B63F6133F0588E3198B0F1D52C6
            3BD6F425F8CD01BFC0CBE7AEC1B0DCDF9B062B76D35BF7B08867349B17BF593B
            1FE7D1BDEEC68380B6E7A550A56033254C08DA1320F4F4C7598FFD6C966189FC
            B79CD6CDF965A202247E24726C3EEEC680088CFE22E283A800311BA900A9176A
            B6AD72673EE404293E0ECFACC316B48CBB75F3C800D218C270A2017F69D85D1A
            0C9A388C60EC6827137171A202244BCDD66D4B70F6A3750A30A5533A9CC1DC6F
            6E00D7A797CF0698E525DF9034E8BB00F1488850EA99ED1CE20D7BFC0DDFDCF7
            3674C8007AAB0891E18C569352A123C18E34D024CDEAAA2EE00D4FBF16F7AF3A
            5ADACADE0243F3124A347C01F2624957221EAB20B8F4F21C19E03C30C6585E05
            48CC481857BB5DCF3806E703C9C671C507510162365201522FD4645B953BF3F1
            8C233EB68AF828653CDC280D40930C54FED4B0A7FC7C9A599295B75FB9915232
            0063E5CB0CC0FE28BBC8B9AB0031D464DDB604EDA69C47DF3B49D56FC85D7E45
            6843704C157B67E4F1CF483DFCD9041928FA72FCEF0A36E292A0E12611223380
            A9CB71EBFE3FC3B973D722D30F6C1AD265591331E446336FA7A99C94D73B9F39
            09DF5B7E9CE8B95613D19C658B2203A389084F80CC97BF1F95F43EDBE5582274
            F6709EA46566605658262A40E24322CFE663D099F9681A577C10152066231520
            F542CDB555DECC4752C4C7221C31B21E5B12A5890FC2A621255B3767C6BAEC4D
            39B623D233A46760696A17F960068C10E9777F1985C2540192250A97A356E072
            AB3611E4AD1D85B31FF47DB4C3A7A3DC03F394FAEEB15F5529403C3858DEC1FB
            7608E7CD7B003FD9FFF78EDBD86D7D329E1E29E85FEA1CB668EC4B3B39712CC5
            79C3AA7DF0AEE5278962DB479AD86E49BD287E93454280D011069706BE17A68E
            C6815BA55C1883A9CFBC5501126B68F3D1F58C888F7B4454344C38F3E1A102C4
            6CA402A45E886D5B951E27F3A6D1DE79E819111F6BB139E16FDF93A0657566C0
            19DE2C4BCFC4624788CC74674A8660BF40558064B17D296A05CFF3155DEFB223
            C9775BCDE12963809CE4E311E995EFCB3006EB5E268ABE1CFFBB892A9FE47FA8
            59867922A63AD6E2B6836EC0593B6FE70A2D6C1C50114238EB31B341CA42C4D9
            135B818F2D391777AC78A971ADDB4C8766AEF3DDA265655580D0010603603228
            E634DBE55806C6D355A26080A3022486240A6C3E9A279DF9F050016236520152
            2FC4AAAD72975625447C647AE08C18C638204A63D6F02A1C95791E9B027AF045
            23F6940C62DA337DF22A83C7D373B1A6717F378B5C9665B3505580648955DD8E
            3059D7BB33CCF2AB4C51C762140C17F87C647AD6BA56D25DBE0A906C7D97FF7D
            D39CE085AF9B7F0FBEBFDF6D68165DD22563ECFE8C7D1FD236A05BDDA9D2BCB2
            1C204DD927161F8F2F3D738689ADD2B6DEDD2AB7832EB6172B0244467CF8008C
            D7A8D9764BB12C5819DF2CE9C763CB450548FC48189B8FEE458EB7AB890CCE8B
            A102C46CA402A45E88455BE5D97430C9E860783D5E9CD9801611208363423064
            D02CE2A03790D009F9784264FA480F9E48ED8CE5CD073B9F66E389D82A2B1520
            8658D4ED18509A00E186E7CB9F6FC1FFB8282240F015497F30871973DC222F4B
            1120301DDF50A3133304AD1B71D9BCBFE0F2BD1ECCF685433208DF3E3C1A3F64
            D0769D0E08AFFB9FDE6ACEF9FA9587E1432B4E00B6ED0A34751B43F3626E75ED
            0B10060F7C2B8CF8D8C9763996C9D37212F4CAF578F1725101122FBC990FCFE0
            BC3CF1415480988D5480D40B916FAB783569D3D1273566038E1ADE80CE4C377A
            130D1872DCB98F1D110C597876392DD38327D33B6145A36D11A202244BE4EB76
            4C285D80F0CF0B619EE6EE1F404E18A9FB3A39CC2F8A1CB7E065890224775B8A
            90A1262CD8F5415C32F7CF484B4FF2C229EBB16BAB09FECEBE87A7EFD42B2FFC
            B77CDE55E0D2975FF58F44C72A6C2298577A029BDD6232FBD066E094A7DE8EAD
            6B1600CDDDEE722B8C7F26F604C83EF29682971DFB54BBA55811ACC3EF9073CA
            8FF5A30224A6E42EBB9ADCDBD578A800311BA900A91722DD56F14A36494D598B
            970CAF44077AD12F62A4170D65DFD8614011F27472273C6B75264405489648D7
            ED18519E00E13F0E67BF23E90D01E568A1BBFF1FC171595AAD00C9FD8D9C679F
            0811DA8964D272CE2B70506B179E1A4C63AF741F2E98F34FB424873090496068
            B00D874C7D0AC74F03B60D8DEE815D2DDDFC66C30D79B03E8E981986ECFB12E1
            A6140ADDAE33329E42B3ECBF2555FE6D36E4FED679AEE3EEFC1FEB81CB97BD0A
            773E7FA8396F47789422244AFEB060938A05C87192283C5E9B730671E36392AE
            2E2A165480C490D1998F5336DC8BC14463C9361F85A800311BA900A91722DB56
            F12A4A2F9E5983970D2F71663BBA51D94D1D26D3323BF0547A272C6B948EDC11
            2161DB84A800C912D9BA1D33CA17201EEF97F4F50073C6780937CA0125E13FF9
            C7AE44801422E73DD02E9D6BDAED20A5428DE4748874EBDB2A23F78E4D8E5E31
            FB968E3639888BE63C88E9E941F4E6345743238D98D1B40DAF9EF9ACD3370D97
            717F70DB4639F44E6DC88E23D00FACEA35E380729822595CD803FC61E3119892
            EE4797E4EB8AC567013D9D723E1B64E0339413D36312C211201CBDBC5A3E6027
            7E6279671B29E86E9AE2E96FA3E7A70224DE24DC381F8B70EAFA7BDC6557958F
            535480988D5480D40B916CABDC998FE1E770C6C862F4269AD08774E4C58747E7
            C80E3CD94011728819BC21CC99101520592259B76348C502C47971384CA0C223
            02CEE5EDE0D2AF0C7E03C77CBA5A019299FC63BAF4A5372DDA90247236A0AD04
            C5C998955E2264527D8EE7ADB21931BF7DF79C47D0961C416B2A83FBBB66E39E
            8D07C840A5BFBC7DB1791D907C77EF24F91E3279E68C477AA0BC6082E36EE69B
            009106D49945A39DC4BCF20B2D52FC50D27BE4A47AF34F5305487CC9151F7F2D
            CBDBD578A800311BA900A917ACB755BC5ABC611B90AD8009A9AC23AB71C6D012
            111F8D223EA2B9E46A223A333BF04472272C6F661FEA454F9FA8B0FD1AADAB00
            C962BD6ED708D50910EF258DC83F14426E5748BA490EF873F9FF48F16CFA2440
            CAFE7DC6CCA00C3757705A19230E06DB46779D12F1D0D053FA6C456ED644C420
            CD7013E3DD24D6048854B2C4D9304BAC5E564141450DC6C879B714C94FC6948D
            0A9018E32DBB7A5AC4C7BD15199C17430588D9480548BD60ADAD4ABB894FE078
            C5BAA546488798E093C36E9C3EBC1CFD5269E3283E3CB81CEBC9F4CE58D178A0
            7B8E45066ECECA0E7E9770454AB5A376152059B41FF6077F0408FF9C0163BB31
            37A49CDF2FE966983825CB46F3624B80C489D005C869925E29E9E588971BDD89
            603C9B0FCAC92E1F2324B22F5580C48F448EB7AB7B2A36382F860A10B3910A90
            7A21F4B64A04865319BBA4067461D7916D6895EA3A3DD38369223706E4BB94BC
            EF17714217BB71151F1EAD9901AC4B76A07B9C062A3D32220D580ACB523B9980
            868E10A1DD48A50318152059B41FF607FF0408FFD063D1D5306BE1C382CB5EEE
            91740B2846329912D640A900A97CB3920508835772B683331D07D83E631FE1D4
            D24530B171303AF029281B15203124577CDCEB8A0FFF6C535580988D5480D40B
            61B555CECC0607D75B64D0BD1D476436613A7638C6E5ECAC0744700C387135E2
            DF7517D29C199AB0814AC9194B0DC5B2F40C2C4EED9C2344265A22311E2A40B2
            683FEC0FFE0A10F77DE63CF97B0DC25FDB4FF74E0FC088913B25AD9CF05C4AFC
            B88A0D234A200284EB6C5F0A33DB71AEA4BD6D9F6500DC0DC624492416E69587
            0A901A2077D9D57D551B9C17430588D9480548BD10685BC54AC5190F5E91ADD8
            73782DF61CD98C46911D3D8E6D47AA2EA30D17C2E68B22A43D63FC73AE4C76E2
            A9C679526CD35D11520E2A40B2683FEC0FC10810FE6D97F42538C6B956E00DF7
            2F497F8211238FB99F4105886F028481024F85719F7BA6A45D6C9F59406C9774
            21CC12C3B1034515203127E11A9C3FE5CC7C0C259BD1EBB3F8202A40CC462A40
            EA8540DA2A2F7239673DB662DF91D5D83DB3C5891A4E57BAC335B0B42A081859
            9DE5C278229C19BAB3E950B96F674B19F696B117152059B41FF687E004880707
            A7D7C20431B4C90A98A55AF74906E92AF599F14EB18442B37C2AD552B1009929
            1F321012ED7D8E94743CB2A38F9AE587922E91B47AB45C5480D40EEECCC7F6A7
            71EA867B7DF176351E2A40CC462A40EA8520DA2A67B955BF54CAF5382EF33CA6
            A01F5BD1EC2C335226874284B6236CE0FEDC7448992244054816AD6EFE10BC00
            F1BEE3BAF94F4AEAB07DCA2E0FC1CC8A70590D97D43CEAAC962CADD06CE7BD4A
            4A1620BBC244BD3F1646401E05C793555DC0B81E174A21DC36B65C5480D4042C
            DFB437F3719FAF06E7C5500162365201522FF8DA5625E179B13A72E819CCC96C
            47B713C323BE9EAC6C4111D226224EAAB32B42E648B9F694F04B152059B41FF6
            87F00408D95D5E7E56FEFF8FEDD32E0245C862383324CEECC81392964F5816B1
            A5E8CDC308F72F90B4178CE0A07BBF0592A6D8CE6DC874814B07138E3385BEA2
            65A502A40648046EF351880A10B3910A907AC1B7B68A15ACD1895C7EE2F04AA4
            A50AC621727994C99F0939581AA45DDCC19F1B95996E7DB383C16C286615201E
            DA0FFB43B802C47B7996A4CB6096F144154E4BD2BDEF5249FF765FF3A9F833CE
            DAD3F8C251C39E30331BBB493A144678D07DF2AEB63367999F4ABA185CAE574C
            54643F5201126F12599B8F53447C0C86203E880A10B3910A907AC197B6CA8D5C
            9E598533879F955EB95192CE7AF80145480B06445E24715F7A37F7861C3183C0
            64BB247A35959B37D1E27E3E5830B85301A254891D01E2BDA1BBDE4B6106C271
            81E2631DCC2CC9B3929E87992959236995FBFD368BF96324442E73A3A0A091F8
            1EEE6BFEA767AA7930B1386ADD76A31CEE95F419B911EECE7EA202A446491404
            190CCEE6A310152066231520F542596D95675C9E2AD801A3FBAEC0599965E812
            2132E018532B7E4111D28021B466FA736ED111F44959F7251A459C24F0AF34E3
            8874CA17AD70023C3A410D87C6EE4C0588522E760508FFD05BD6C7DCD462BB38
            AA8427D42DE939491B256D72D376F73D675536B8DBF2730A152F6A2BB7D992B3
            2F36C673DCD71C1D25DDF7ACF9D36196464D77CBAFD37D3DC74DB4D368B45D18
            31E03F7084077E65DE160A8882CFB21FA9008927A3331FA78BF8E8F329C279A9
            A800311BA900A9174A6AAB3CE1C1D423956D1D7645BFBC6249271DBF56076636
            61505EABF80807CF752F8336A6A57EA7E51AF4251AB02ED18145A969F2A50892
            44B31BD43067C0A802442917FB02C4637730C602F02198C6485182821EADBE28
            E99BC86B405580D42EF6663E3C5480988D5480D40B93B655ECE7F9F04D844766
            038E19DE8069991D1849D03CDA5D0E24FFBB653B3E8957F1610F0A9296CC80E3
            EE7843622A56A7A660ADB36C8BB32223468CA80051CA253A02C4635F8C643E28
            FFDF0915228ABF50785C27038DEB61669C0A5001529B244237382F860A10B391
            0A907A61DCB62A47780C6FC45199F598861DE843A37AB58A389EDD487366109B
            13ED782ED581559C116160C3112ECB2A589AA502449988E80910A9C7CEE7FB48
            FA882436EE7AB5956A5829E9EB926E00854772BCEAA402A4F618151F611A9C17
            430588D9480548BD30A6AD12D19168302E5F873788F05827C2A3CF111D2A3CE2
            05AF5433869D59111AB13F94DE059B52F3E4FA369A382DD965E36EE3E00C0AF9
            190798B9154305485D135D01E2416F4D9C11792B8C81B5A294CAD39238DBC108
            E67DD94F5580D40909D7E663214E5D7FBFB5990F0F152066231520F582534685
            361E467874A257DE71C623A54BAB62CCA811FB20B6265A8DC17A72AE1122EC73
            873DBBD626233E3D8F5A9E4B5F360E1C848286ED65D4041520B541F40588B72D
            6D44D8D0D373D66CDBC5A6449AFF93F40D493F2EDA50444E80C0B4CDA9066407
            9279DBAB00291B965D4AFAC0AD4FE0D40DF759B1F928440588D9A8460548B9C3
            E8522A6229FB2CB5425732CC2FE766498EFD6DC29BF1D8E1DA78ACC7B44C2F7A
            6570DAAF5E186B8E6669E09A44483C959C830DA936EC3ABC1DBB8D6CC5907333
            26B005CD78363515534706B09A2E7E936DC6768406ED89B69CC16702639EC6E5
            91318DE7B84CF2DB8AC9D96F7202F3800C97A1F9D1D124CCFDE317196F895C6A
            E2FD66B72BB5CDE0B93698FB7DBCF21D6F9FF11120DE3F7A7FE26CC8DB251D52
            620129F5C16F41C3F204FE34FA518405488A0F8552E6FE1BDC26F5BE17E8DB80
            3D86B6491F3DB67DC8A8002919F6796969CB0EEC5EE6BCB72D3E880A10B3510D
            0A103A4F29A772B140D2EE6F0A0752E99CEF0A97AB14EE23E96ECBEDC61BF478
            DE1027DA57B17D73DB94FB3FE3E6B3D8FE99870677FF999C63F0C2F7BBC2834B
            AD7A9D181E2A3C6A1F0638E4AC08FFF6398352039DFA36674C7D1F900E8E9ECD
            1AA591DE9C68C573A976A447E47BA9632BA5911C48D0AB67B1FAE6D5FB4E8CD6
            4B8F949B86C7F99D57A7CB15080D39BFF396926D1F675BC64D6997D464F299F1
            EECD7248B84BD9E477996DEEF1AAEDF899AF2966068A4BE432DB26D88EF96F75
            DD2D0F4FB2DFB4111E232C8F1E140FEF30C13EE32740723917468C9C5BD6A550
            6A09BA37FE85A41F487AD8F924EF568DA00049B6987B76709DDC8A3D68EBDF8C
            03FA9FC794C12E24E57EE440754485469598FEA637D52A62246D5D7C10152066
            A39A1320FB1C7D1ACA79B2DA24039227391848D2653ABD0879CB4FB8D31D5231
            D891F7E1A0CC5619B0A78BEE8383B9CDB2A7B5890EF92997264F71F7C1C1CE30
            8CF0E0FBED9833B21633337DE3EEAB10DE2C5C5AB324310D5991939CE2EE93E7
            D9EF7ECEF772638D6CC4DE998D4E84F221EF42CB05E06CC7AC4C9733E3A1361E
            4A2E09F77E11F9EED4E546E709B9B9A9D8C064C6990131FED132F8736A2E4612
            3BC1DC3FACEFAC77F4C4B51E078C6C964F5279B52DE9365B8B928C67C215348D
            66FB09EB64A3C953663358E7779641F634F90D7FB18BD46B7A06CB8C698E32D8
            986843B7DC9B4B18CC91F710EF1D67603DD1AC8DF9B5111E23CE31F715E1BEBB
            1BF43A53E58080A5B146DA9C2793B3316F648BDCAF9B8BEE97DB31FF0FB36D4A
            CE72F353AC9C5CE191E94172643D8E92BC76C876438964D1636F14F131BACFA6
            5121126F01E27D77A07CFE1679F13A6834EF7AE15F927E22B7CF4D5281D7E77D
            133901E20EC01ADACD67FD1B30BBE7591CD0B3020D23034E9B359468407FD2EB
            DF557CD4222A40CC463527404E3DFAC8B22B03632B6C47331E48B053E640AA5F
            0606CFC9C0663B3A64B89EC90E9926A65186FCDDF2771BDAF058829D3807577C
            626B84C781220C2878862A987948BAB9A070D92203BDA745ECF425294ABCA7CF
            1BB0FFF07AECE106DE1D2E302EE6315578287EC30EB3436A6597DC3F7FA70849
            CD729EE8BF70F839CC90BB61789CBA6E24FE30D68A587F2C25F75D6296BB4490
            03ECDCE5418DE606977DEE31B45606EB9BD0941814E961043C07ED7DF27ABC47
            0EBCDF5232B0A6B0EA96C1F6E3A999D8CA7B9C0F0BC608111375C5D8CCC8EB61
            111E23CF63FEC856A7C1DB217BF1CBDC85F96A90E30F4BE3D83B8187D916D9AE
            5104C2BA648788869D0A8448627459E58899DD9C9AE9C50EF97E60027B2E1EBB
            394317CE6DF837CB9EED14F739D26F3A88780B10EF73AAE157487AADA4B3FDB8
            664AA460F0C6DFC0B1EDC07DCE2745671AC67D63085B80A4283CA482F6AEC4CC
            81F538B867399A86FBD0936A95B680ED80F6CFF5800A10B351CD0990971C7D4C
            D99581330CCD3210E19AF94D221EF8BF43BA70BAA21D28C35EC318010F3B1D3C
            073CCF8808795EFAC123326BE5EFA00C60B8E754C522C00B4AC77DB7C89E282A
            1E11D1C4E1D7023906254A977CEBF93C529430F0EE9F4647C837A25D5E5318F4
            9630CBC7FB222D35796D622A1E7506C214ED9EFD82111EBB8B78DF47C47BA308
            89ED4E44F8F2EF21CF40BF3DD3EF0CD01F4FCDC656E78143876B13313C2A3C46
            36E300CE788C6C76F2D095B07F4F65858808A7871D57CBB34D9E452019E1D157
            F6EC26F7D924FB5CEBEC932270A6591232B5C35DED399EDC8A8500C9FD8C6E7C
            CF93F41A4987557D31145BF069C19D926E86233E12F96B2F232B403266A69176
            1E3B9663F7FE3538A06799736FEC48B545665990121E2A40CC462A400AE0F086
            85EA47A46F76F01C5CF538C2C3DFE07D9E1869739FE076ABF050220097FE0D3B
            F322E52D1DA010E1D2AFB589293218E6CA9966EC3AF29C111E9CBD907BC88F00
            98BC4778A7B43942A4098FA466A22BB9331C9B08111CFB0D3F873D46B8D42A81
            EE08088F31E5248281426A7572BA7462C3CE2C6D8F3BE351292D9941E7A10997
            85AD4AB46373E702A061AA7436DD28BE0424760224F7CD51303323B415D9AFE2
            4253C2E46F926E9174ABA465A31F17131B4109108A083AE84821AF3EE50E08B3
            CE1D72975B25CC0093DF752FC6CBB619D394EDE90E201BE057A9375480988D54
            80288A12195A9DD913383385CDD299F73A738AC1AC83A658E28CC80619746F12
            01323FB3D911F5DD596711D1A5C91DE8F8E94882FB9C32D283D50DB3F050E7F1
            D297B48E1521CE00CC1D34397D494E380E2ED91AEE43C405482E2748FECE91FF
            341C542F5AD1816BFFEE9774BB74EEF462F59FE29B85244038004BC920B16F3D
            F6EA5D8CC1845992DD2483C8A50D3345AC33F0EB00D0D829DBB598FBC0F33AC9
            C149CFB338B26B213A87B6A227D922BFD7198F7A470588D9480588A22891C218
            B72330E1918B17C49162A4D759CC18FC31A30C97AA4D1DDE8ECDE9E97870E609
            EEE06A30FBAD6327E20CB052E67FDF06384F7D69C04E57CE4D734C67E26C37E4
            DA91E4DBA3157B694980E40AA417493A131425C089560ABFBE619022233A807B
            252D723E9DD005B8DF02C41D687129A63720721C33481DE9598AE3762C42BB08
            F4A18419642533705ED38E8B76666B1BA73B02A355EAFE938DB3E45E980D0C6C
            C5495D8F3BB3953B28E815052A40BC8D5480288AA228598C08E99201D54C3CD6
            BAB711128EA818C021FDCFCBB7C38EFD199FE2CE1AD8E20CAEE824834F769F6A
            D91DCF73F045E1929E22BF1936310DF296A58C7D19010192CB9E924E9274ACA4
            5324CDB57019EA81476044C71D921E8471A39B4F5802843379F406373C000C6E
            744576022DC3BDD875A40B7BF63D8FFE245D99178B2161965A358F7021E4B073
            FFE42EADEA97DFA89D87928B0A10B3910A10455114250FC7B140A61F4D9CC970
            1B5E271A52A221EB1CD471029E34119BB93D075FED3260E3765DA9763CD7D889
            95ED0748072B6264683BC60881E80A905CB8C6EC207099562643178B2F81465F
            AF044E85AD94749774D88C4E7E37F2EC39C621700122032619084284F441BD4F
            A063A80F1D233B9C198D9184B165A3D38BBE64F497652AF1410588D9480588A2
            288AE22B0DD2C1B60FF7604BBA030FB4C9F8BD659EF4047DF9AE7DE321400AB7
            A5E2A2272D2ED97AB1A42360664C9A822DD1D8C1D98C67615CE42E74FF2F75BE
            99505414109800916B4951C165513B9EC2A9DD4F385F3B415913A5C5E852944A
            510162365201A2288AA2F80E67455A477AD132D287DB3B5E00B41F2C1FF699E8
            EF6CB8B363FFC468E7E508949CA52AD11320C5A0009193C3BE3033247B48DA1F
            7484581FAC85111B1418F458B55CD2BF256D2EBA75140408BD500D6DC71E3D4F
            62DFFEB5223A52223E547828E1A002C46CA4024451144509081AE8D2C5F20056
            36ED8CC5ED874887DB6E8408573739B62583667664588449BA154ECC0442A132
            4C31526CCD3DA224408A315FD2EE92F696B4C07DCD44B13235B8F20E94D59256
            485A236989A4C76096553D83F1C44631AC0A90A489C731B8190B7AFE83DD0636
            604BAAA3A2D8428A52292A40CC462A401445519400493A2BE9A70C77635D7A26
            1E9EFE22389E86FA9E07C5C12C190CEE36B8C58903B35D3AE385746D4A8F5A8D
            D3E1AC78A23BD3E19E9CFDC542808CF7FB9D24C90982C16E2852385B324BD22E
            30B625B3DCFF612EE962C668A4B30E26C2386734E8DE8C4283A263A9FB1DDF77
            9525208A614580B84BAE68EFD1F32C5EB6E3512704EA8E64B30A0F2574548098
            8D5480288AA22881639664F5A147067D3DA926111E5BD19019C4200DDB13F4AD
            95743C6A353A9FA5D1956A936D9BF044F39E321C9F6B664946864677184F0132
            19141E9C21A1CFD6193062A5CDFDCF2EAFD3FD0EEEFB86898E08133DDC3B305D
            DD52C9D12D19672CB6BBFF37BA9F6D432991F1622740E4F4531DCE8CDADE5D0F
            63CF81E71DCF54FD52EF547C283650016236AA2501F2FF461F1FECEF484F1600
            00000049454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 589.606680000000000000
        Width = 718.110700000000000000
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'AVENIDA AFONSO PENA 5000 - BELO HORIZONTE - MG')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#193'GINA : [Page]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 113.385900000000000000
        Top = 230.551330000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 200.315090000000000000
          Top = 15.118120000000000000
          Width = 359.055350000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RELAT'#211'RIO DE FLUXO DE CAIXA')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 49.133890000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Inicial:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 49.133890000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Final:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 464.882190000000000000
          Top = 49.133890000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dataFinal]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 287.244280000000000000
          Top = 49.133890000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dataInicial]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 366.614410000000000000
        Width = 718.110700000000000000
        DataSet = rel_DS_Caixa
        DataSetName = 'DSCaixa'
        RowCount = 0
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Abertura')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 241.889920000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Gerente')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 336.378170000000000000
          Top = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Vlr Vendido')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 442.205010000000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quebra')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Caixa')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Operador')
          ParentFont = False
        end
        object DSCaixadata_abertura: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'data_abertura'
          DataSet = rel_DS_Caixa
          DataSetName = 'DSCaixa'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSCaixa."data_abertura"]')
        end
        object DSCaixavalor_abertura: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 22.677180000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'valor_abertura'
          DataSet = rel_DS_Caixa
          DataSetName = 'DSCaixa'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSCaixa."valor_abertura"]')
        end
        object DSCaixafuncionario_abertura: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 207.874150000000000000
          Top = 22.677180000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'funcionario_abertura'
          DataSet = rel_DS_Caixa
          DataSetName = 'DSCaixa'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSCaixa."funcionario_abertura"]')
        end
        object DSCaixavalor_vendido: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 332.598640000000000000
          Top = 22.677180000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'valor_vendido'
          DataSet = rel_DS_Caixa
          DataSetName = 'DSCaixa'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSCaixa."valor_vendido"]')
        end
        object DSCaixavalor_quebra: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'valor_quebra'
          DataSet = rel_DS_Caixa
          DataSetName = 'DSCaixa'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSCaixa."valor_quebra"]')
        end
        object DSCaixanum_caixa: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 22.677180000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'num_caixa'
          DataSet = rel_DS_Caixa
          DataSetName = 'DSCaixa'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSCaixa."num_caixa"]')
        end
        object DSCaixaoperador: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 22.677180000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'operador'
          DataSet = rel_DS_Caixa
          DataSetName = 'DSCaixa'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSCaixa."operador"]')
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 94.488250000000000000
        Top = 434.645950000000000000
        Width = 718.110700000000000000
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 45.354360000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Vendido:')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 68.031540000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Quebras:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 45.354360000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DSCaixa."valor_vendido">,MasterData1)]')
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 68.031540000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DSCaixa."valor_quebra">,MasterData1)]')
        end
      end
    end
  end
  object rel_DS_Caixa: TfrxDBDataset
    UserName = 'DSCaixa'
    CloseDataSource = False
    DataSet = query_caixa
    BCDToCurrency = False
    Left = 400
    Top = 496
  end
  object rel_movimentacoes: TfrxReport
    Version = '6.7.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43650.653389838000000000
    ReportOptions.LastChange = 43650.681363680550000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 504
    Top = 496
    Datasets = <
      item
        DataSet = rel_DS_Mov
        DataSetName = 'DSMov'
      end>
    Variables = <
      item
        Name = ' Datas'
        Value = Null
      end
      item
        Name = 'dataInicial'
        Value = Null
      end
      item
        Name = 'dataFinal'
        Value = Null
      end
      item
        Name = ' Totais'
        Value = Null
      end
      item
        Name = 'totalEntradas'
        Value = ''
      end
      item
        Name = 'totalSaidas'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      BackPicture.Data = {
        0A544A504547496D616765C9890000FFD8FFE106BA4578696600004D4D002A00
        0000080007011200030000000100010000011A00050000000100000062011B00
        05000000010000006A0128000300000001000200000131000200000022000000
        720132000200000014000000948769000400000001000000A8000000D4000AFC
        8000002710000AFC800000271041646F62652050686F746F73686F7020434320
        32303137202857696E646F77732900323031393A30333A31322031363A31373A
        3232000003A001000300000001FFFF0000A00200040000000100000253A00300
        04000000010000034A0000000000000006010300030000000100060000011A00
        050000000100000122011B0005000000010000012A0128000300000001000200
        0002010004000000010000013202020004000000010000058000000000000000
        48000000010000004800000001FFD8FFED000C41646F62655F434D0002FFEE00
        0E41646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B
        11150F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E
        0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800A0007103012200
        021101031101FFDD00040008FFC4013F00000105010101010101000000000000
        00030001020405060708090A0B01000105010101010101000000000000000100
        02030405060708090A0B1000010401030204020507060805030C330100021103
        04211231054151611322718132061491A1B14223241552C16233347282D14307
        259253F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3
        D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6
        37475767778797A7B7C7D7E7F711000202010204040304050607070605350100
        021103213112044151617122130532819114A1B14223C152D1F0332462E17282
        92435315637334F1250616A2B283072635C2D2449354A317644555367465E2F2
        B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6
        E6F62737475767778797A7B7C7FFDA000C03010002110311003F00F414924948
        85249249294924924A5249249294924924A5249249294A8F52E6AFED7FDF55E5
        47A97357F6BFEFA90534D24924E43FFFD0F4AFB11FF49FF47FF324BEC47F7C7D
        DFED56924788A1ABF623FE907DDFED4DF623FE907DDFED56924ACA9ABF623FE9
        07DDFED4BEC47FD20FBBFDAAD249595357EC47FD20FBBFDA97D88FFA4FFA3FED
        569246CA9ABF623FE907DDFED4FF00623FE907DDFED565242CA9ADF623FBE3EE
        FF00CC92FB11FDFF00C3FF00325653A5654D5FB11FF49FF47FF32599D669F49D
        47BB76E0FED1C6C5BAB1FAFF00D2C7F83FFF0045A3126D45CA492494887FFFD1
        F530653A82903292174C9D2492B249248A1492499252E92694A5252E92694A52
        53258FD7FE963FC1FF00F7C5AFB96475F3EEC7F83FFEF88C770A72924925221F
        FFD2F538F24BE497C928F2450BA49BE49D05293274924AC924922858CA5253A6
        D5252B54B54B5F14B5F1494AD564F5F9DD8F3E0FFF00BE2D6D7C564F5EFA58FF
        0007FF00DF118EEA72924925221FFFD3F52DC96E5182941450CB725B9460A509
        2996E4B728A492996E4A5452494CA5295149252E9264A1252EB27AF7D2C7F83F
        FEF8B5564F5DFA58FF0007FF00DF118EEA73124925221FFFD4F5191E0948F04C
        92285E4782523C1324929791E0948F04C924A5E4782523C1324929791E0948F0
        4C924A5F4F04A4782649252F23C164F5EFA58FF07FFDF16AACAEBBF4B1FE0FFF
        00BE231DD4E5A4924A443FFFD5F50493A48A16493A49296493A49296493A4929
        6493A49296493A49296595D77E963FC1FF00F7C5ACB27AF7D2C7F83FFEF88C77
        539692492910FF00FFD6F53D12D132708A15A7825ED48A8A4A652D4B44C02749
        4AD12D3C1327494A81E09E0264E82950128092492550163F5FFA58FF0007FF00
        DF16C2C7EBFF004B1FE0FF00FBE231DC20B9492492950FFFD7F5209D249142C9
        25AF9A7494A4C927494A4E9248294924924A5249249254B1FAFF00D2C7F83FFE
        F8B6163F5FFA58FF0007FF00DF118EE145CA492494AB5FFFD0F5320A6DA567EF
        B3F7DDF794B7D9FBEEFBCA7521D18849676FB3F7DDF794B7D9FBEEFBCA5C2A74
        613ACDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF77DE5
        2E153A492CDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF
        77DE52E153A4B1FAFF00D2C7F83FFEF88DBECFDF77DE551EA6E71356E24E8EE4
        CFEEA206AA69249249E87FFFD9FFED0F1A50686F746F73686F7020332E300038
        42494D0425000000000010000000000000000000000000000000003842494D04
        3A000000000125000000100000000100000000000B7072696E744F7574707574
        000000050000000050737453626F6F6C0100000000496E7465656E756D000000
        00496E746500000000436C726D0000000F7072696E745369787465656E426974
        626F6F6C000000000B7072696E7465724E616D65544558540000001700480050
        0020004400650073006B006A0065007400200033003500310030002000730065
        007200690065007300000000000F7072696E7450726F6F6653657475704F626A
        63000000160043006F006E00660069006700750072006100E700E3006F002000
        640065002000500072006F0076006100000000000A70726F6F66536574757000
        00000100000000426C746E656E756D0000000C6275696C74696E50726F6F6600
        00000970726F6F66434D594B003842494D043B00000000022D00000010000000
        010000000000127072696E744F75747075744F7074696F6E7300000017000000
        004370746E626F6F6C0000000000436C6272626F6F6C00000000005267734D62
        6F6F6C000000000043726E43626F6F6C0000000000436E7443626F6F6C000000
        00004C626C73626F6F6C00000000004E677476626F6F6C0000000000456D6C44
        626F6F6C0000000000496E7472626F6F6C000000000042636B674F626A630000
        000100000000000052474243000000030000000052642020646F7562406FE000
        000000000000000047726E20646F7562406FE0000000000000000000426C2020
        646F7562406FE000000000000000000042726454556E744623526C7400000000
        0000000000000000426C6420556E744623526C74000000000000000000000000
        52736C74556E74462350786C40520000000000000000000A766563746F724461
        7461626F6F6C010000000050675073656E756D00000000506750730000000050
        675043000000004C656674556E744623526C7400000000000000000000000054
        6F7020556E744623526C7400000000000000000000000053636C20556E744623
        50726340590000000000000000001063726F705768656E5072696E74696E6762
        6F6F6C000000000E63726F7052656374426F74746F6D6C6F6E67000000000000
        000C63726F70526563744C6566746C6F6E67000000000000000D63726F705265
        637452696768746C6F6E67000000000000000B63726F7052656374546F706C6F
        6E6700000000003842494D03ED00000000001000480000000100020048000000
        0100023842494D042600000000000E000000000000000000003F800000384249
        4D040D0000000000040000005A3842494D04190000000000040000001E384249
        4D03F3000000000009000000000000000001003842494D271000000000000A00
        0100000000000000023842494D03F5000000000048002F66660001006C666600
        06000000000001002F6666000100A1999A000600000000000100320000000100
        5A00000006000000000001003500000001002D00000006000000000001384249
        4D03F80000000000700000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800003842494D040000
        000000000200023842494D04020000000000060000000000003842494D043000
        0000000003010101003842494D042D0000000000060001000000033842494D04
        08000000000010000000010000024000000240000000003842494D041E000000
        000004000000003842494D041A00000000035900000006000000000000000000
        00034A000002530000001200460055004E0044004F002000520045004C004100
        54004F00520049004F0020004100340000000100000000000000000000000000
        000000000000010000000000000000000002530000034A000000000000000000
        0000000000000001000000000000000000000000000000000000001000000001
        0000000000006E756C6C0000000200000006626F756E64734F626A6300000001
        000000000000526374310000000400000000546F70206C6F6E67000000000000
        00004C6566746C6F6E67000000000000000042746F6D6C6F6E670000034A0000
        0000526768746C6F6E670000025300000006736C69636573566C4C7300000001
        4F626A6300000001000000000005736C6963650000001200000007736C696365
        49446C6F6E67000000000000000767726F757049446C6F6E6700000000000000
        066F726967696E656E756D0000000C45536C6963654F726967696E0000000D61
        75746F47656E6572617465640000000054797065656E756D0000000A45536C69
        63655479706500000000496D672000000006626F756E64734F626A6300000001
        000000000000526374310000000400000000546F70206C6F6E67000000000000
        00004C6566746C6F6E67000000000000000042746F6D6C6F6E670000034A0000
        0000526768746C6F6E67000002530000000375726C5445585400000001000000
        0000006E756C6C54455854000000010000000000004D73676554455854000000
        01000000000006616C74546167544558540000000100000000000E63656C6C54
        657874497348544D4C626F6F6C010000000863656C6C54657874544558540000
        0001000000000009686F727A416C69676E656E756D0000000F45536C69636548
        6F727A416C69676E0000000764656661756C740000000976657274416C69676E
        656E756D0000000F45536C69636556657274416C69676E000000076465666175
        6C740000000B6267436F6C6F7254797065656E756D0000001145536C69636542
        47436F6C6F7254797065000000004E6F6E6500000009746F704F75747365746C
        6F6E67000000000000000A6C6566744F75747365746C6F6E6700000000000000
        0C626F74746F6D4F75747365746C6F6E67000000000000000B72696768744F75
        747365746C6F6E6700000000003842494D042800000000000C000000023FF000
        00000000003842494D041100000000000101003842494D041400000000000400
        0000083842494D040C00000000059C0000000100000071000000A00000015400
        00D4800000058000180001FFD8FFED000C41646F62655F434D0002FFEE000E41
        646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B1115
        0F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14
        140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800A00071030122000211
        01031101FFDD00040008FFC4013F000001050101010101010000000000000003
        0001020405060708090A0B010001050101010101010000000000000001000203
        0405060708090A0B1000010401030204020507060805030C3301000211030421
        1231054151611322718132061491A1B14223241552C16233347282D143072592
        53F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3D375
        E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F63747
        5767778797A7B7C7D7E7F7110002020102040403040506070706053501000211
        03213112044151617122130532819114A1B14223C152D1F0332462E172829243
        5315637334F1250616A2B283072635C2D2449354A317644555367465E2F2B384
        C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6
        2737475767778797A7B7C7FFDA000C03010002110311003F00F4149249488524
        9249294924924A5249249294924924A5249249294A8F52E6AFED7FDF55E547A9
        7357F6BFEFA90534D24924E43FFFD0F4AFB11FF49FF47FF324BEC47F7C7DDFED
        56924788A1ABF623FE907DDFED4DF623FE907DDFED56924ACA9ABF623FE907DD
        FED4BEC47FD20FBBFDAAD249595357EC47FD20FBBFDA97D88FFA4FFA3FED5692
        46CA9ABF623FE907DDFED4FF00623FE907DDFED565242CA9ADF623FBE3EEFF00
        CC92FB11FDFF00C3FF00325653A5654D5FB11FF49FF47FF32599D669F49D47BB
        76E0FED1C6C5BAB1FAFF00D2C7F83FFF0045A3126D45CA492494887FFFD1F530
        653A82903292174C9D2492B249248A1492499252E92694A5252E92694A525325
        8FD7FE963FC1FF00F7C5AFB96475F3EEC7F83FFEF88C770A72924925221FFFD2
        F538F24BE497C928F2450BA49BE49D05293274924AC924922858CA5253A6D525
        2B54B54B5F14B5F1494AD564F5F9DD8F3E0FFF00BE2D6D7C564F5EFA58FF0007
        FF00DF118EEA72924925221FFFD3F52DC96E5182941450CB725B9460A5092996
        E4B728A492996E4A5452494CA5295149252E9264A1252EB27AF7D2C7F83FFEF8
        B5564F5DFA58FF0007FF00DF118EEA73124925221FFFD4F5191E0948F04C9228
        5E4782523C1324929791E0948F04C924A5E4782523C1324929791E0948F04C92
        4A5F4F04A4782649252F23C164F5EFA58FF07FFDF16AACAEBBF4B1FE0FFF00BE
        231DD4E5A4924A443FFFD5F50493A48A16493A49296493A49296493A49296493
        A49296493A49296595D77E963FC1FF00F7C5ACB27AF7D2C7F83FFEF88C775396
        92492910FF00FFD6F53D12D132708A15A7825ED48A8A4A652D4B44C027494AD1
        2D3C1327494A81E09E0264E82950128092492550163F5FFA58FF0007FF00DF16
        C2C7EBFF004B1FE0FF00FBE231DC20B9492492950FFFD7F5209D249142C925AF
        9A7494A4C927494A4E9248294924924A5249249254B1FAFF00D2C7F83FFEF8B6
        163F5FFA58FF0007FF00DF118EE145CA492494AB5FFFD0F5320A6DA567EFB3F7
        DDF794B7D9FBEEFBCA7521D18849676FB3F7DDF794B7D9FBEEFBCA5C2A74613A
        CDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF77DE52E15
        3A492CDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF77DE
        52E153A4B1FAFF00D2C7F83FFEF88DBECFDF77DE551EA6E71356E24E8EE4CFEE
        A206AA69249249E87FFFD93842494D042100000000005D00000001010000000F
        00410064006F00620065002000500068006F0074006F00730068006F00700000
        001700410064006F00620065002000500068006F0074006F00730068006F0070
        0020004300430020003200300031003700000001003842494D04060000000000
        070007010100010100FFE1120D687474703A2F2F6E732E61646F62652E636F6D
        2F7861702F312E302F003C3F787061636B657420626567696E3D22EFBBBF2220
        69643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E20
        3C783A786D706D65746120786D6C6E733A783D2261646F62653A6E733A6D6574
        612F2220783A786D70746B3D2241646F626520584D5020436F726520352E362D
        633133382037392E3135393832342C20323031362F30392F31342D30313A3039
        3A30312020202020202020223E203C7264663A52444620786D6C6E733A726466
        3D22687474703A2F2F7777772E77332E6F72672F313939392F30322F32322D72
        64662D73796E7461782D6E7323223E203C7264663A4465736372697074696F6E
        207264663A61626F75743D222220786D6C6E733A786D703D22687474703A2F2F
        6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C6E733A64633D
        22687474703A2F2F7075726C2E6F72672F64632F656C656D656E74732F312E31
        2F2220786D6C6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E
        636F6D2F7861702F312E302F6D6D2F2220786D6C6E733A73744576743D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F
        5265736F757263654576656E74232220786D6C6E733A73745265663D22687474
        703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F52
        65736F75726365526566232220786D6C6E733A70686F746F73686F703D226874
        74703A2F2F6E732E61646F62652E636F6D2F70686F746F73686F702F312E302F
        2220786D703A43726561746F72546F6F6C3D2241646F62652050686F746F7368
        6F702043432032303137202857696E646F7773292220786D703A437265617465
        446174653D22323031392D30332D31325431363A31303A35392D30333A303022
        20786D703A4D65746164617461446174653D22323031392D30332D3132543136
        3A31373A32322D30333A30302220786D703A4D6F64696679446174653D223230
        31392D30332D31325431363A31373A32322D30333A3030222064633A666F726D
        61743D22696D6167652F6A7065672220786D704D4D3A496E7374616E63654944
        3D22786D702E6969643A62363966383932382D393063382D383934352D613530
        312D3862613432396534356232312220786D704D4D3A446F63756D656E744944
        3D2261646F62653A646F6369643A70686F746F73686F703A3665626435353434
        2D343466622D313165392D613635342D6335636565343334373364662220786D
        704D4D3A4F726967696E616C446F63756D656E7449443D22786D702E6469643A
        34316464636231302D613935342D373234322D616633642D6635663335396264
        66626233222070686F746F73686F703A436F6C6F724D6F64653D2233223E203C
        786D704D4D3A486973746F72793E203C7264663A5365713E203C7264663A6C69
        2073744576743A616374696F6E3D2263726561746564222073744576743A696E
        7374616E636549443D22786D702E6969643A34316464636231302D613935342D
        373234322D616633642D663566333539626466626233222073744576743A7768
        656E3D22323031392D30332D31325431363A31303A35392D30333A3030222073
        744576743A736F6674776172654167656E743D2241646F62652050686F746F73
        686F702043432032303137202857696E646F777329222F3E203C7264663A6C69
        2073744576743A616374696F6E3D227361766564222073744576743A696E7374
        616E636549443D22786D702E6969643A66313461373734302D396136622D3434
        34372D613462352D303737383032663837336362222073744576743A7768656E
        3D22323031392D30332D31325431363A31373A30392D30333A30302220737445
        76743A736F6674776172654167656E743D2241646F62652050686F746F73686F
        702043432032303137202857696E646F777329222073744576743A6368616E67
        65643D222F222F3E203C7264663A6C692073744576743A616374696F6E3D2273
        61766564222073744576743A696E7374616E636549443D22786D702E6969643A
        30393063613532612D396433612D626534392D623635632D6235363861333161
        36326530222073744576743A7768656E3D22323031392D30332D31325431363A
        31373A32322D30333A3030222073744576743A736F6674776172654167656E74
        3D2241646F62652050686F746F73686F702043432032303137202857696E646F
        777329222073744576743A6368616E6765643D222F222F3E203C7264663A6C69
        2073744576743A616374696F6E3D22636F6E766572746564222073744576743A
        706172616D65746572733D2266726F6D206170706C69636174696F6E2F766E64
        2E61646F62652E70686F746F73686F7020746F20696D6167652F6A706567222F
        3E203C7264663A6C692073744576743A616374696F6E3D226465726976656422
        2073744576743A706172616D65746572733D22636F6E7665727465642066726F
        6D206170706C69636174696F6E2F766E642E61646F62652E70686F746F73686F
        7020746F20696D6167652F6A706567222F3E203C7264663A6C69207374457674
        3A616374696F6E3D227361766564222073744576743A696E7374616E63654944
        3D22786D702E6969643A62363966383932382D393063382D383934352D613530
        312D386261343239653435623231222073744576743A7768656E3D2232303139
        2D30332D31325431363A31373A32322D30333A3030222073744576743A736F66
        74776172654167656E743D2241646F62652050686F746F73686F702043432032
        303137202857696E646F777329222073744576743A6368616E6765643D222F22
        2F3E203C2F7264663A5365713E203C2F786D704D4D3A486973746F72793E203C
        786D704D4D3A4465726976656446726F6D2073745265663A696E7374616E6365
        49443D22786D702E6969643A30393063613532612D396433612D626534392D62
        3635632D623536386133316136326530222073745265663A646F63756D656E74
        49443D22786D702E6469643A34316464636231302D613935342D373234322D61
        6633642D663566333539626466626233222073745265663A6F726967696E616C
        446F63756D656E7449443D22786D702E6469643A34316464636231302D613935
        342D373234322D616633642D663566333539626466626233222F3E203C70686F
        746F73686F703A446F63756D656E74416E636573746F72733E203C7264663A42
        61673E203C7264663A6C693E61646F62653A646F6369643A70686F746F73686F
        703A63383837363862342D336162612D313165392D396266372D626532623861
        3737326435633C2F7264663A6C693E203C2F7264663A4261673E203C2F70686F
        746F73686F703A446F63756D656E74416E636573746F72733E203C2F7264663A
        4465736372697074696F6E3E203C2F7264663A5244463E203C2F783A786D706D
        6574613E20202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020203C3F787061636B657420656E643D2277223F3EFFEE002141646F62
        650064400000000103001003020306000000000000000000000000FFDB008400
        0101010101010101010102010101020201010101020202020202020203020303
        0303020303040404040403050505050505070707070708080808080808080808
        0101010102020204030304070504050708080808080808080808080808080808
        0808080808080808080808080808080808080808080808080808080808080808
        08FFC2001108034A025303011100021101031101FFC400CE0001010100020301
        010000000000000000000102030904070A060501010101010101010100000000
        0000000000010203060405071000020103020405040301000301000000000111
        0212131003203021144031041517330607375060323641220523110001020106
        070D06050204050500000001003111214191A1023220305161D133A41040B112
        4203D3E30405B536077181E135757660C122B4065013F0F16214A2247495A552
        921585161200010403010002030100000000000000006001310271A1B1322080
        40A05190FFDA000C03010102110311000000FB0AF59F98000000000000000000
        000000000000000000000000000000000075D9FAB8FCBEC07677F8FB00000000
        000000000000000000000000000000000000000000003AECFD5C7E5F603B3BFC
        7D80000000000000000000000000000000000000000000000000001D767EAE3F
        2FB01D9DFE3EC000000000000000000000000000000000000000000000000000
        0EBB3F571F97D80ECEFF001F6000000000000000000000000000000000000000
        000000000000075D9FAB8FCBEC07677F8FB00000000000000000000000000000
        000000000000000000000003AECFD5C7E5F603B3BFC7D8000000000000000000
        0000000000000000000000000000000001D767EAE3F2FB01D9DFE3EC00000000
        00000000000000000000000000000000000000000000EBB3F571F97D80ECEFF1
        F6000000000000000000000000000000000000000000000000000075D9FAB8FC
        BEC07677F8FB0000000000000000000000000000000000000000000000000000
        3AECFD5C7E5F603B3BFC7D800000000000000000000000000000000000000000
        00000000001D767EAE3F2FB01D9DFE3EC0000000000000000000000000000000
        000000000000000000000EBB3F571F97D80ECEFF001F60000000000000000000
        00000000000000000000000000000000075D9FAB8FCBEC077CDE1FEE0056B8B5
        9C6B000022D40000000000000059B025C0B340A012596680008014800882A81C
        F9E8C801480E957D97C1F82EF903E87FF9E7E90002B8379C6B24022D0800E2A0
        00A002000AA2255000214042B9337535400002805894956585A359BCB8D80001
        D117BCFCBF5DFD1903E87FF9E7E90000B75E36F9E759245A1000335C5B850000
        00000000002428896DB973635B9A00012BC8C6B774240A485B20881699A001D1
        17BCFCBF5DFD1903E87FF9E7E9000019B78378C59AB90000066B86CBAA000000
        0000001001168172E6C6B535400012C110000004DE7A7918D950259D11FBBFCC
        F5DFD1903E87FF009E7E90000545278FD312E400000335C5B000000000000099
        5A014032A73635B9A00019B9DCD6A68500080069778D0523A22F79F97EBBFA32
        07D0FF00F3CFD2000504095E3F4C4B9000000CD70EA5B4000000000224975409
        2555002C7373D6A6A800039F3A5A1900042821A5B9A3A22F79F97EBBFA3207D0
        FF00F3CFD200282001357C7DF39720000019AE2D8000000001248BAA001332DA
        A005CB9B3ADE74000066E753433723534258204D4BE4E7AB17A22F79F97EBBFA
        3207D0FF00F3CFD20141000026AF8DBC2E4800000C5716A5B400000022497540
        000490B6802C7373D6A6A80010E696CD0001424034B65E88BDDFE5FAEFE8C81F
        43FF00CF3F48290000029136F1B585840000062B8F60000004492EA800000224
        97540172E6C6B7340000724D000022550217A27F71F9DEBBFA3207D0FF00F3CF
        D252000000056F3BC78FAE79AA800000C5716A5B400842C9175400000001332D
        AA02C73F3D59AA000012C4B4C5CD00D4D429D157B7F83D79F4640FA1EFE7BFA5
        600000000559ACEA78DBE52AA00000315C7B002E521A2800000000020280B973
        635B9A0000B3C9C749282001681D11FB9FCCF5DFD1903E82FC27D65F379F4E7C
        6900000003537C7D39F8FAC4AA100000C570EB2CDD154B2E5AA0000000000224
        97540B1CDCF5A9AA003373C99DF3E365400001D117BCFCBF5DFD1903E813C3FD
        229FD3E3DF9F968000000568B8D63C7E9CC02000018AC994AB29A00000000000
        009996D50B973E35A9A000CDCF2675CF8E8940000E88BDE7E5FAEFE8C81F409E
        1FE9029FD4E3DF9B9E900000002B78DE3C7D7350202E2C08D2E2B29351680000
        0000000002495542C7373D6A6A8337356272677CF8E810001D117BCFCBF5DFD1
        903E813C3FD200B1FD4E5DB9B96C00000059BA7174C706F902887159A548519B
        26C0000000000000001124BAA2E5CF8D6A6B373A9A19B91CB9DF363A20003A22
        F79F97EBBFA3207D02787FA40029FD4E1DF9B1A40000000D37C3BE7C3BE6004D
        4AE3B988B0456A8000084405D40014202824821692C72E75652669608BCB9D72
        677598BB97933BE88FDDFE5FAEBE8C81F409E1FE9000165FEA71EBCDCF600000
        02DD55E1DF3E1BCCB5512B16096042B1B000211C7ACF8FBE79BA2405812AA422
        824B51A922AC1C990160A2ACB2CA2AFF005787D1D14FB7FCFF005DFD1903E813
        C3FD2000058FEA71EFCDCF640000000AE2DE784A5258B9E133B9562112ACB740
        00386E7C4E98D482000025A00B1A44B2CCDB64E4CB5340002168597A3CF63F37
        AF7BC03E813C3FD200000B2FF578F6E5E7A00000015A9670EA71DCB592010C51
        2AC4CDB34000124E2B38772A580005B6282255405B4458E6CDAD24145A8E6C6B
        95B47451EE3F3BD77F4640FA08F0BF50A0012A89A97FA5CBB6A56400002AA962
        70EF1C7AC08B5218A5225019A500000190902E8A02665D5002249755172E7CEE
        A80489579F1BE4CEBA22F77F99EBAFA3207D0C780FD1012800691036BAC80002
        ADA94335A9E3EF963590520E331A85B0A94A0000249E3EF9C582DA9010B10580
        149951516F2628325A44CAEE5E8EBD97CDEBEEF00FA04F0FF480000001A8FEA7
        1EFCB8D20142ADA9249A9D06758E0DF3C6B20B003082D23358DCAA00038D9F13
        A73CDA00000B20968000153979D0285113A3DF63C3D7DDE01F425E0BEF160290
        8A833ABA9059BF2716C05BA5952422353A089358F1F78CEB20A09C1A8A0866DD
        2680001971EB3E2EF0A8551A90010D012904B51691CD9A8AA42C4E8E3D9FCDEB
        DEF00FA0DF07F658540500AA02053CACF4E5C52DA922000353A133BC78FBC66E
        4028200071D6351680001249269A50400000005925B570E79BD4B2883A2BF6DF
        0FAF3E8C81F40FE1BEA804102A0028406A5FEA70FA39705A900006A7412E66A7
        8FBE59B000000071D6360000892716A67524514428000008322B79BB96CA64BD
        1B7B3F97D7BDE01F431E03F42C45D848B5742412DB150B8AD46A02000001A9D0
        6779F1B5CA6B2002900038EB1A8B404492DB867C4EBCF16800000000002C8397
        16A8E8F3D8FCFEBEEF00FA04F0FF004810A0080A416A4294B2FF004F8F7E5C50
        00006A7404C6F1E3EF9CB0005200071D63608925D508C33E275C44CDA00D4822
        8025002C0D49C99D17A3CF63F37AFBBC03E84BC17DE22DB2466C2EA494922D32
        8B4CD8559AF3B9F4B900001A9D0019DE3C6DF296000A0800E3AE3D445D500004
        13341001540500008CEE6B9B1AE8B3DB7C3EBCFA201F435FCFFF0054000262B5
        2DDE732D89A854586A4A962140001A9D000B31BCF8FBE510000A400715674500
        0018673480A000080000A65A5E8DBD9FC9EBDEF00FA1EFE7BFA400000290042A
        C0000000000D4E800C74C78FBE510000A08071D629A0000CC9E274E5C7AA0000
        00000001D217ADE1EBFEF00FA1FF00E7BFA4000042C280000000000000D4D800
        71EF1E3EF9900186EA6990071D63600008CA787D39E340000000000379747FEB
        F87AFF00BC03E82BC2FD600E3B38F59B28291400000000000000B1CD9D846779
        C2008AA40A090634CD116D800433600010011400017A41F5DC3D7FDE01F409E1
        FE9000E2DE78F50021410440001A6C0000000B97366D94442AAC010A01104B33
        650B650204A40A00000025511D1FFB0E1EBEEF00FA04F0FF0048000E2DE7152C
        1490AB2CB080005B29400000068E5C2CA000000000A2652CB54000000000019B
        2C551D1E7B1F9FD7DDE01DF6F87FA40CD962AC1400492ACAA040014000000008
        216168000204B45012D8D00000000000085003A50F5BC3F03DE01DF6787FA442
        80000002522800000000000020AB000000021400351A0000000000428003A51F
        5BC3F03DE01DF6787FA400000000008500000000000101400000000405000000
        0000010255000E947D8FCFF81EF00EFB3C3FD440000000000214000000000101
        40000000001014000000000D4D66C200001D28FB1F9FF03DE01DFB788FAB8AE4
        000000000010588000000002D320A80000000160B352C4000002A89672E7496D
        9C3720000749BEBF8FE07BC03BF8F17F4000000000000138AE4B400000400D4D
        40500000000101412C45500019B8DCD7262AB2716F3A9A00003A49F5DC3F01DA
        01DFDF89FA400000000000010B24B4000062CE2D66CD80000000000000292C45
        580A42B3C99D58C59C7B965280001D257AEE1F80ED00FA0EFE7FFA0000000000
        000001116D8004B2CA0000000000000000024B6C0A42ACAD44B240000007467E
        E3E1F5EFD1903E807C37D7400000000000000085008500000000000000000000
        03971AB5C361028000000747DECBE5F5F778077E9E2FBD5000000000000000CD
        CEA544D44B54000000000000000003373A9752D814E3D42800000003A49F5DC3
        F01DA01DFA78BEF54000000000000003373AC8B2CAD0000000000000000000CD
        CEE5DE2DAD4BC1ACAD000000000E927D770FC0768077E9E2FBD5000000000000
        0044966A6866E753400000000000000000009C99BA978F59C5168000000001D2
        4FAEE1F80ED00EFD3C5F7AA00000000000004B11540110550000000000000000
        227366C33671EB3A9B88AB2800000003A49F5DC3F01DA01DFA78BEF540000000
        000004B986A680004B05940000000000000CDCD379BACDD1C7A98B4500CDCD96
        A8000000E927D770FC0768077E9E2FBD500000000000097296A80000222ACA00
        0000000001139212EA2D7156358B3740009725B28000007493EBB87E03B403BF
        4F17F450000000000012C4550000000337365AA0000000003373A979B1752E6B
        8ECCE90A000019B9A59A000007493EBB87E03B403BF3F17DB4D000000000012E
        52D50000000009730D4D00000000066E772F262CAE3D3371A9B00000011259A9
        A00003A49F5DC3F01DA01DFA78CEF12CB5400000001966AD500000000002584B
        340000000088525500000000002588AA001D24FAEE1F80ED00EFD3C5FD149725
        B28000000CDCEA6800000000000044966A6800000066E6CB540000000000004B
        226A6801D24FAEE1F80ED00EFD3C5F7AA337365AA00000CDCEA6800000000000
        0002588AA00004415400000000000001105503A49F5DC3F01DA01DFA78BEF540
        892CD4D0000CDCEA68000002148500000000960B28004B115400000000000000
        00CDCD96AF493EBB87E03B403BF4F17DAA800440B02696594000000445B96373
        60000000082CB28102550014100000000000000895AE927D770FC0768077F1E2
        7A94000096EA4CDB6400000000BC7B89AE4CE0A000000000B5209560012B16D5
        DE72000000000000001D237AFE5F80EF00EFE7C4F51680089756245D64000000
        0048B0D2140000002512CDCDC230A001065695014000000000009443A46F5FCB
        D7FDE01DFE78CEE0002259A32550000000010005000000011059A22800000000
        000000000001194D7489EB787AFF00B80EFF003C5F7AB100960D4D0CDC92CD00
        0000000000000000290055CDC8B28000000000000000004B1157A43F5DC7D7FD
        A01F405E27E84000000085000000000000000002C4A000428000000000000000
        00000E8FBD870F5F77807D06F84FB00850000002140000000000000042800000
        10A00000000000000042800E8D3DA7C9EBDEF00FA1FF00E79FA4255100000012
        8580005000001000128580000001285800000000000012A88007449EEFF3FD77
        F4640FA1FF00E79FA59B752000000002545D480294000004204A028020000002
        50B00000000000095600007449EEFF003FD77F4640FA11F05F6D0000002D6B3A
        D000C94F1F78E1D60000003CBE7D779D0ABC7738DE5007367540000073E37602
        02928005000A44AAA80A201D11FBAFCEF5DFD1903E82FC1FD2000000391BE694
        0011C1B9E0F5E566400001E4E3BF95CF60B9B386F344D652F335C928000039B1
        D3931400001A9D000005466CD0BD20000E88BDC7E67AEBE8C81F417E0FE90000
        00D5D73E77500030781DB966E22D9000072E7AF9BCFA2325AE1D7396149BCEB9
        66824B6D2141BCEB9F1B812A8010353A00005912CD017A40001D117B8FCCF5D7
        D1903E82FC1FD200000B6F919DD000965781D7971DE6066DD2200D4DF9FCBB12
        04E2D670C6A685396DB1532D724D6359C5BBCE6CBE4F3D802AEB3B0A080353A0
        0B2259A000BD20007445EE3F33D75F4640FA0BF07F480000AE7CF4D800097C3E
        98F1F7C40025A4B15BF3F8F6A133666E38D986A695CD2D02B79D645C0E39D3CB
        E7740035376501410353A09722CD000017A4007445EE3F33D75F4640FA0BF07F
        4800069CB9DF2CA0028E0D67C2E9C4800000F2F1F473F3B8B1666CE399A08725
        D72CC896EB3A96E6E2C439F1D3932006A6ACD000050D67A4B91668000002F480
        7445EE3F33D75F4640FA0BF07F48000DB5CF340008C69FCFEBC632000146FC9E
        7D3C9E7D32CE759B6713280356DBBE5CF306ACD6359A88DE77CF8A00B2EA6C00
        00504B5AB28000000BD201D117B8FCCF5D7D1903E82FC1FD20069737C89BA000
        23C4E99C6B2000044DCDF95CBA66C8CB6E39890055E4D6B368DE33C937C7732C
        1BCEBC9E7400353A5800001402353A000000017A41D117B8FCCF5D7D1903E82F
        C1FD202AE9CFCFA680001C1A440A000B26B3BDCD66E66B0309862CD09672DDCB
        A49A4E4C6A8055F239EEE68805580000A2A4015ACF4000000005E93A22F71F99
        EBAFA3207D05F83FA4361CD8DF24A0008F1B73C5E9C400010D6F3AF231D3926B
        3BC6A4CA70A0D44396EA6B4359CEB376A0179F1BDE2800000001480028A9353A
        00000001D11FBCFCBF5D7D1903E82FC2FD2C9B6F1BE7940004250002150D4D40
        71EF1A9331C57165CD0E595BD8D4CD9AE4C801CB9E9CBCE80000000148000015
        66ACD0000000E88FDE7E5FAEBE8C81F417E13E946B579F1D2A000653F9FDB397
        35A00D4D25A72E75E573DE6F3CEE8E398400AE46E6A8D49CB8A00DE75CFCF600
        0000005200000000D4E8000001D117BCFCBF5DFD1903E82FC27D34E7CF4D0000
        38EB3400011A9656A25CCB25B8989002B99ACDACA69CD8B402CBE473E9600000
        000520000000015AB3400000E88BDE7E5FAEFE8C81F415E13EAE7CEB91400078
        BBCF0EB200006A5AD7938D5678F7522678E66A85723535A164DE6EA5A8266F93
        9DEB3400000000000000000353A4B916680007445EF3F2FD77F4640FA0FF0007
        F66E6F49500195F1778200009565E4979A5E3D496DCE78E6401BB574B472626E
        58B0D272E3A72E280000008500000000000D4E825C8B34001D117BCFCBF5DFD1
        903E857C17DA228A838CE1DE41002C22D39737965E3D633AD6B39E2990259B6A
        DD2D1A9397140171BF233AB00000012AC0000000000000D4E92E459A007445EF
        3F2FD77F4640FA15F05F681161A4F0778C6F12D08115572D1E772E99D31A5931
        33962CD0572DD66E926A4E4CEA8026BC9E7B292C0000128580000000000001A9
        D0446A336A8E88BDE7E5FAEFE8C81F42BE0BED000E1AA94000C9A11C8B8B25CE
        A4E2B712085392EE5A3526F2D28097C8C74D64250B0000255800000000000000
        0D4E825C96CBD117BCFCBF5DFD1903E857C17DA00F1F53C4E9C336D0044B7532
        5F2F9F6E6CDCEB14B262D96865E4635A9445D5BBC5956017500084AD40105580
        000000000000001A9D009723A23F77F9BEBBFA3207D0AF82FB40E3B3C0EDC648
        2B711512C839F3D7CCE7BCEB1C7AD8006B33979DE7CD0235C99D000000003342
        C2AC00000000000000001A9D0012E7A23F77F9BEBBFA3207D0AF82FB40F0F79C
        DC80585082B5E673DE2E71BA001ACCDE2F938A00D4E96000000001C7AA393300
        0000000000000000353A0026B3D11FBAFCDF5DFD1903E857C17DA00032B402A0
        18B38F7400127261E4F3D500D4DD94000000094850B000000000000000000006
        A749724E88FDDFE77AEFE8C81F42BE0BED000CB5A4202E574CCB38B4968006B3
        3C9E5ADC006F79A00000004A4500942C0000000000000000005692D5E88BDE7E
        5FAEFE8C81DD4794FA0012DB20000CDB2C00003797266812B534000000008500
        00000000000000000000002CD750FEA3E3FC4F6807677F8FB000000000000000
        00000000000000000000000000000000000003AECFD5C7E5F603B3BFC7D80000
        000000000000000000000000000000000000000000000001D767EAE3F2FB01D9
        DFE3EC0000000000000000000000000000000000000000000000000000EBB3F5
        71F97D80ECEFF1F6000000000000000000000000000000000000000000000000
        000075D9FAB8FCBEC07677F8FB00000000000000000000000000000000000000
        000000000000003AECFD5C7E5F603FFFDA0008010200010500FE8FB7FE7FA56D
        FF009FE95B7FE7FA56DFF9FE95B7FE7FA56DFF009FE95B7FE7FA56DFF9FE95B7
        FE7FA56DFF009FE95B7FE7FA56DFF9FE95B7FE75EFB74EFB74EFB74EFB747EB7
        745EB770EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370E
        F370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370
        EF370EF370EF370EF370EF370EF370EF370EF370EF374EF374EF370EF370EF37
        0EF374EF370EF370EF370EF370EF370EF370EF370EF374EF374EF374EF374EF3
        74EF374EF374EF374EF374EF370EF370EF3747EB774EFB74EFB74EFB74EFB74E
        FB74EFB74EFB74F4B537B5C94F97041041041041041041041041041041041041
        0411CAB8924B892492E2492791E8FE8F297293F0D248DEAD0F911AC11A24410C
        B48208E2F47F479484C9E4A6353E0D8C5C2C8E4469041041041041040D09F07A
        3FA3CC5CA4FC32E06343E4492492CB8B8B892E2E2E1BE1F47F479B3CA4C6A79E
        DF32391041690416969690410411AFA3FA3CD4C5CA4FC2C09F0B43F0703D3D1F
        D1E727CB4CF3F091CF6CB892492492492492493D1FD1E6B5A2722E527E2DA1F1
        B45A5A8B516A2D45A8B4B4B4B4B4B4F49F4BC5A679F0B291F3A09E0688E4CF04
        924F07A4FA5CF6313917293E17E0609E0687C6C6CB8B8B8B8B8B8B8B8B8F49F4
        B5B0B074C7393E5267993C0BC03E28E2631A1723D1FD1E16A4AA98E5B114BE5A
        7C097876B8E0688E47A3FA3C75531E1208D234425E1589F29150D09F17A3FA3C
        6D49528E6A7C53A493A27E1DA275687C6D0D717A3FA3C974C731F4170CF05A5B
        C9F32D2D2DE6753A9D482D2082082D2D1523A0B0B0B074E9E8FE9725A92A51CB
        A8A593C324E924E93C74E905A884416905A411A41047022081F29A2AA4F47F47
        94D0E98E6262279108845C4AE34F49249249249278FF00F2F4688E438140E993
        D2FD2E5B454A398842E2B4B48208E37D05517171797179797979717171717990
        559717978EA2E2E2E2E2E2E2F1D4C92E83D27D2D6E2E2E2E2E2E2F2E2F436344
        2E627C525C49717170B932492C964F2635688E381A7A7A3FA3AC104104104105
        A432D2DE4C93A27C882D2D65A2E4C169616969696A2D2D2D2D20821102A48442
        2D2358208D2D47A5FA5CE6874F31313E3924927934D5CA927C07A5FA5AE43217
        9797B2F65ECBCBCBD8F705B837C73C5227C524925C88278FC855124925C5C892
        4924B8B8B8B8924B8B8B87521D45C5C5C5E5E7A5FA5AE33198CB0B0C6632C319
        8CC6633198C74C13CB4C5CB4C6A790CB89D649249249249249192344717A4FA5
        ADC5C4971717124925CB49D5A92A51CC9E627C95496961616169696969696969
        6969696969696169696969E97E96B0C820B59D7586433A9D74EA753AE902E9CB
        427CB4C6A78E927C135C1E97E96B0410410410411A4105A8820843A4AA9E5A27
        989F1B62A89E64924924E8F5F4BF4B5BCBCBCBCBCBCBCC86432190C85E643219
        0C83A87CC5CC4C7CA75171717171717171771C11A7A4FA5CC83AEB0493CF4C9E
        627CA82C2C2D2D2C2D2D2D2C2C2C2C2C2C2D63A0C6CF4BF4BF829297CC4CF3E3
        42F05E9BE9F1C104704104104104104104104104104104104104409F313E4489
        F80A8F4DF4F5B4B4B4B4B0C6633198CC6633198CC6633198CC6633198CC66331
        98CC6633198CC6622C2C2C4585A5A8B4B4B4B4B4820B4B482D2082C2C2C2C238
        A0820820820820820F4DF4F909F8A688E19E5492492492492492492492492492
        4924925C49E9BE9F253E19D649F02C8E74788F4BF4B9524924F0492492492492
        4924924924924924F0492492493C3249226410410410410410410410411A4104
        107A6FA7FCAA64924924924924924924924924924927A6FA7FD2BD2FD2FE82C5
        C8F4BF4B82D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2
        D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2
        DD2048B4B4B4B4B4B4B4F4DF4F5820820820820820820820820823973E3DEA90
        B91E9BE9EB0410410410410410410410410416905A5A5A5A5A5A5A5A27E39888
        122393E9BE9EB9D99D99D99D99D99D99D99D99D99D99D99D99D99D99D99D99D9
        9D99D99D99D99CCECCECCECCECCECCECCECCECCECCECCECCECCECCECCECCECCE
        CCECCECCECCECCECCECCECCECCECCECCECCECCECEE199D99D99D99D999999999
        99D99CCECCECCECCECCECCECCECCECCECF48E76B5C48C48C48C48C48C48C48C4
        8C48C48C48C48C48C48C48C48C48C48C48C48C48C48C46246246246231189189
        1891891891891891891891891891891891891891891891891891891891891891
        8918918918918918D18D188C4623123123123123123123123123123123D2AFFF
        002F12FC73D3C87D443E77A6FA7E25F8E63D3CB45CEF4DF4FF009791B244BC07
        A6FA7FCC40A9F03E9BE9FF0026864E902F05E9BE9FF27237AA5E0FD37D3FE45F
        0411E13D37D3FE458F48F0DE9BE9FF004AF4DF4FFA57A6FA7FD2BD37D3FE95E9
        BE9EB24924924924924E924924924924924924EB2492492492492492493A4924
        E92492493AC92492492492492492492492492493A7A6FA7ABE54F313F0689E19
        F0F27A6FA7AC1041041046B0410410410410410411A433AE9041041041041041
        0468C488208208D7A90F582082082082082082082082082047A6FA7C12492493
        AC6924924924924924924F0C924924924924924F0C9249249249249249249249
        2492492492492492493AFA6FA7FD2234F4DF4F592E2592C92492492592CB8925
        92C964B2592C964B2592C964B2592C964B2592C964B2592C924B8964B2E2E249
        2592C964B2592C964B2592C964B2592C964B2592C964B2592C964925C4B3D2FD
        3D6F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F
        2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F
        2F2F2F2F2F2F2F2F3D2FD2F0F041041041047147F0DE8FE978682592C964B259
        2C964BE38208FE0FD1FD2D6C2C4588B11622C4588B11622C43A4B4B4B4B4B482
        0A682C2C4588B11622C4588B51622A42A4820815258584104104104104103238
        238A492492395E93E973678994D3CAA993AAD6091F25BF00B95E93E9783484B9
        353D208D11248DEB04F137C73E13D27D2E5B7C53A534F25B2758D172A746FC67
        A4FA5E060A572AA7AA5A473193E33D27D2E4A637C6972AAAB58E4CE890F56F98
        84FC07A4FA5CF6CA57264AAAE17C084F856ADF8EF49F4B8EAE44099722E45C8B
        91722E44A2E43AB9AF482082A7E3FD27D2E37C8B4B4B4B4B4B4B4B0B4B74489E
        521BE16FC7FA4FA5C2941237C4D1493C725C3625C086B8A389BFE03D27D2E1AB
        C043D1B12D18B54C6B810DF0B7FC0FA4FA5AFF00E46F8D212E26488AB85F0CEB
        E5C2FF0082F47F475FFCF2131D42A8B8B99732E65C4924E887C88247C0C9FE0B
        D1FD1D50F8E9A47496969696969696168C4B8DF03E16C6FF0083F47F4756F917
        17979797979797978EA122796DF0D4FF0084F47F479291696161616161696160
        D11C688E07C2DFF0BE8FE8F25124924924A24B912362E05C723E06362FE13D1F
        D1E45A5A5A41041043208D121F22491F0C8FF86F47F478E95AB5AC7054C489E2
        6C7512C964B249249249FE1FD1FD1E24B9553E4B7C13CD823C7FA3FA5C499717
        1722F2E2F2E2E1D648B890DF8262F1FE8FE97804B8EA7C2F9D24F8FF0047F479
        E909F13637C0DFF1FE8FE8EBEDC7B71EDC7B71EDC7B71EDC7B71EDC7B71EDC7B
        71EDE7607607607607607603FF00E71ED87B61ED87B69ED87B61ED87B61ED87B
        61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B6
        1ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61
        ED87B61ED87B61ED67A7A6DDBFE95B7FE7FA56DFF9FE95B7FE7FA56DFF009FE9
        5B7FE75FFFDA0008010300010500FE8EFF00A5BFE96FFA5BFE96FF00A5BFE96F
        FA5BFE96FF00A5BFE96FFA5BFE96F8315262A4C5498A916D523DA4588B11622C
        4588B11622C4588B11622C4588B11622C4588B11622C4588B11622C4588B1162
        31D263A4C749622C463A4C7498E931D263A4C7498D18E931D263A4C7498E916D
        A1D1498E931D263A4B292CA4B2931A31A31231A15148B6A930D261A4C3498693
        0D261A4C3495A87C96B973E0249249249D249249279369690416969616160A81
        53C8DCFF005CAA972A3C4C6AB8E04F592492759249278B73FD7290D0F94DF865
        C33C8924B8B8B8B8B8B8B8B891313E066E7FAE527A55FC32E34882C2C2D2D2D2
        D2D2C2C2D12E1DCFF5CD6B97E5E03CF973C8B8B8B8B8B8B8B8B8B8B8B8B89D77
        3FD739AFE1972275964BD64920913169B9FEBC4B5E3279091696969696904169
        69691A6E7FAE7B43FE1971A65C5C5C5C5C5C5C5C5E5E5E5C57FEB9E864729A3C
        BC5CF26DE0B4B4B782BF3F014952FE1D71A122D20B4B4B4B4B4B4B4DCFF5ADEC
        BD94D53CD6B99E42F153C54E93C9DCFF005C2994D53CBA468A97F0EB8A44C5C8
        DCFF005C74D53CB9132A5CA9249F173C305452F91B9FEB8D329AA796969553C5
        02A48208F1AB87CC4CA5F1EE7FAE4D354F310D70C12497171772E49249249E39
        2513A49249717176B714D66445E5E2AB4DCFF5C94E0A6A9E5D23435A411A470C
        7259248DEB3A4F0C6BD783A9D4EA753A89E89EA994D46E7FAE5262AA44F98D11
        ABD6DD3A9D4EA75E36B49249249249278A5923D193CA4E0ABCF969C14B9E5F4D
        1A1F1CE92895C687496969696B2D2D20B4B4B4B482D2D2D2D2D2D2D2D2D2C2C2
        C2D2C152588B0AFCF5B596B2D65A5A5A5ACB596B1213E6B5C4F58208F113C0A0
        9249211D0915449B9FEB5B8B8B8B8B8B8B8B8B894362AB9703435C725C493CAB
        8B9925C5C5CCBCB8B8B8964925C5C5C3A8B8965C5C49248C551732AF3E726535
        7318D731AE3A972208249E4412470A1F9EB8CC66331988C6632C2C3198CB0547
        1413C2D1035C505A432394E923582D2D65A5A4696B2D65A5A5A5A5A5A582A0B0
        B19616161579EB7979797979797991990C86432B323320AA9E5BD2A5E1639D1C
        13A410415F9EB696B20B590410410411A41027052E79690D0D78382E2E2E2E2E
        24B8B8B8B8B8B8B8B8BCB892E2F2E2F2E2E2AF3D6F44A2E44A25128944A25128
        84743A1D0E84A131F2D8D783635E0A04F5ABCF952492492C924924B8A5F2DA1A
        1F836881E92493AC10411C51A410CABCF5C66231188C43DB3118CC4CC6633198
        CC658636631524732A435CCF2238E082082082082082393257E7CC83AE9E6412
        493CE68A973239324971717171717171717171717171717171795F9EB2492492
        493C33E16AA7C231AF04FCFC7C924924C9553C4D8B9B6F827E7ADC5C5C5C5ECC
        86466432190C86432190C86432190C86432190C86432190C86432190C8642F65
        E5C5E642F2F2F2F2F2F2F2F2F2492492E2E2E2E249E182082082082082347E7C
        86883A1D3450743A1D38D41D0E8743A1D0E8743A1D08279D041075D3A1041041
        0410410410410410411AC0FCF9304104104104169690410411A4104104104104
        11AC6B0410411AC1046AD13E096B579F2638A08FE0649F10FCFC027E15BFE15F
        9FF4AABCF56BC7C78F81AE455E7AB249249249249249249249249D27993A493C
        D9249279324899248DF21F9EB24924924924924924924924925CC86753A9D4EA
        753A9D4EA752D248F09027C7E62E0AB90FCF5B91722E45C8B91722E45C8B9172
        2E45C8B91722E45C8B912892492492492492746BC33427C2C5AC971E7C87E7AE
        0460460460460460460460460460460460460460460460460460460460460460
        3023023023023023018118118118118118118118118118118118118118118118
        1181181181181181181181181181180C08C08C28C28C28C28C28C28C08C08C08
        C08C08C08C08C08C08AD43D72332332332332332332332332332332332332332
        3323323323323323323323323323323323323329919919919919919919919919
        9199199199199199199199199199199199199199199199199199199199199199
        197B3233233233233233233233233233233233233232AF3D5786A49D18978AA7
        5F2F00FCF55E1A910DF8CA74F2D5F39F9EABC2B625AB7E2DA168DF807E7AAF08
        D8970C09F8A91B129D1A279AFCF55E0DB12E3689F09514E923E3F213E5BF3D57
        82912E4B44F826411A468DF1B427CA7E7AAF03225CCF213E7D3C1237CA813E4B
        F3D67C0A5CE689E75232757CB68F2E43F3E0F213E779780684F9AD888F01027C
        4FCF55A409F2FCFC1B47972DB12F06D09F0BF3D56B027E3E04F90D89785689E0
        7E7AAE068F2F1ED09F13625E2204F47E7C98208208E6F973BCF8978A6B47E7AB
        E4C13CD6BC0C0993C33E21F9F0C92493C324924924924924924E924E92492492
        49249249248B8249249D649D649249249249249249249249249D1F9EB05A5A5A
        5A5BAC105A5A5A5A5A5A5A5A5A5A5A5A4104105A5A5A5A5A5A5A5A5A5A5A3425
        ADA5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A35A3F3D
        6749249D2756C9249249249249249249249249249249249249246C4493A32492
        49249249249249249249249249249249249249247E7C10410410410410411A41
        0410410410410410410410410410411A41041041041041041041041041041041
        041041041041041041041579EB616161616161616161616161618CB0B0B0B0B0
        B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0C65858585858
        585858585858585858585858585858585858585855E7FD2ABFF5FD2ABFF5ADE5
        E5E5E5E5E5E5E5E5E2AC5512492497125558B70C8CC8CC8CC8CC8CC8CC82AD97
        17124923A8BCBC550AA249249249249E382082082D2D2D2D20B448B4B4B4B4B4
        B4B4AFFD7352E248A9F2A94411A3D234812E4A5E07CF93B9FEB98971B654C5C8
        A56924923AB8249244F824929249279B3CBDCFF5CB4B91555C13C2A92092746C
        AB544EAB59D12E14B96D91CBDCFF005E0AA7C49EA8A50DEAD97094F174121EAB
        892F0FB9FEB94971B63E4245348F491BE15AB625A31890970A5E2373FD7252E3
        63AB9105348F4918B817025A2D570A5CBE9CEDCFF5C84B90D161616161616169
        60A9D1BD27931A345A5A25E3F73FD71AE43A855171717171717A2E2E5A3245A5
        4F542D57125E3F73FD71A5C7510C86432190C86416B2D121B1F147040B852FE0
        373FD7125CDE9A4224824918C6F542D57125E1BCF97B9FEB852E36C91B2592C9
        64BD5A29431F1A42E425FC16E7FAE18E368820820820B448B74A9948C6F86390
        97F07B9FEB5812E375179797979797978AB2747AC8F5485AB42235484BF83DCF
        F5AA5C8748A82C4588B11622C4582A11031BD678172578E9E2DCFF005C3235AB
        65C5E8BD17A2F45E8B8B8B89E4342E4AF1F04F0EE7FAE4B20820820B4B482048
        9E0A9EB491ACF0A5A4F8F8D275DCFF005C87512492492497124EAF47ACF0B447
        02FE1674DCFF005C753244C65CCB9923649225A4EAC82048820820B48208208F
        E1609373FD71363D5245A5BC14D3C8812E05FC6366E7FAE268C6633196161698
        CC625C8425FC8A2BFF005CA9E6A5C297F1DB9FEB9EC4F8D702FE3634DCFF005A
        E432190C86532190C86432190CA2DC32190C864321905B86532994CA673399CC
        E673399CCE673399CCE673399CCE673399CCE673399CCE673399CCE673399CCE
        673399CCE673399CCE673399CCE67339DC15397FD29FF4B7FD2DFF004B7FD2DF
        07FFDA0008010100010500FE8FF7BFFD9FF4AFBDFF00ECFF00A57DEFFF0067FD
        2BEF7FFB3FE95F7BFF00D9FF004AFBDFFECFFA57DEFF00F67FD2BEF7FF00B3FE
        95F7BFFD9FF4AFBDFF00ECFF00A57DEFFF0067FD2BEF7FFB3FE95F7BFF00D9EB
        F1B7D947C6DF651F1B7D947C6DF651F1B7D9457F8DFECDA4F8E7ECD3E39FB34F
        8E7ECD3E39FB34F8E7ECD3E39FB347F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7
        ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3
        E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E38F
        B30F8E3ECC3E38FB30F8E7ECD3E39FB30F8E7ECC3E39FB30F8E3ECC3E38FB30F
        8E3ECC3E39FB305F8E7ECD3E38FB30F8E3ECC3E38FB30F8E3ECC3E38FB30F8E3
        ECC3E39FB30F8E7ECC3E39FB30F8E7ECC3E39FB30F8E7ECC3E39FB30F8E7ECC3
        E39FB30F8E3ECC3E38FB305F8E7ECB95F8DBEC96BE35FB28F8D7ECA3E35FB28F
        8D7ECA3E35FB28F8D7ECA3E35FB28FCA9E9B63D17E50E4D745BC2E785CC5ECBD
        97B2F65ECBD97B2F65ECBD97B2F65ECBD97B2F66466466466465ECC8CBD99199
        199197B1549AE3892CA8B2A2CA8C7598EA31D463A8C5518EA31D4534D74BE3FC
        BDFB6793D0AA8B5EBE5C55533E2D369D2D35C4BA14D772D3A1D0E87425128BA9
        2EA4BA93A3E2FCBDFB6795575556DDA53C9AA991F865E5AA6D35526B8E512892
        4924924924928A9D2D435AB3F2F7ED9E53523529D163E4D54CF83F3E426D14B4
        F8D229A2E31331331331188C46231188C4534BA787F2F7ED9E6352AAA5D2F935
        533E07CF949B42A935C49B4D6E52D64A4BE92FA4BE82FA0BE92FA0BE92FA4BE9
        2FA44D3D7F2F7ED9E6D54AA934E97C9AA99E7F9F31368A5A7C89D7A9D759248D
        28A9D2D35523F2F7ED9E7554AA93A5D2F935533E1609E14DA1549F229A29A963
        A4C7498E931D263A4C7498E91EDD22DBA116522A552CFCBDFB679F552AA5552E
        97C9AA99E54C733CB85369D2D3E3A6A74BCA6532994CA653375CA6532994CA7E
        5E73F9639E8AE955269A27935533E2D369AA935C88E08208E0FCBBFB5F54D3E6
        A2BA5549A3CB935533C294B87E15382969AE2A5C34A86ADA4B692DA48A48A48A
        4B692DA4B693F2F7ED9D7B9DD4775BC6CEF2DD5CCAE8B8F2E5554C9E47412509
        52CA5B9F03E5C09B4D549AE14515DAD43E4FE5EFDB3C34D4E97B3BCB757290D1
        5D12B955D32269A50D28A7C2791E7AA6D09A6B8A8AEDE4FE5EFDB3C54D4E97B3
        BD4EEAE5A65744E913C0DC2BD17A2F45D4A2B74B1BA5F868E04DA69A6B5F3D19
        4576F23F2F7ED9E3A6A74BD9DEA77572A34AE89E17D56363DB6DE392C70E9716
        D5E2D382969A3CF5F324A2B8E3FCBDFB67914D4E97B3BB4EED3CCAE89E26DD25
        553464AA2FA8C8C6E7C4CA2EA455A4D6E50D64A0C941976CCBB665DB33ED147A
        ADB4773B2773B0773B06DEF6DEE33F2F7ED9E4D353A1ECEF53BB4F29695D1AB5
        047489150A2DA0B682DA0B291D1C8AEF325664ACBEB664ACC9597D65F517545C
        C9649249D04A5B490E981C09C34E4EA753A9D49E14DA7B1BEB757E5EFDB3CAA6
        A7455B3BCB769E66E510252293AD23F31F9DBA753A92C97C7B9B7710D3B4B482
        0B4B4B4B78544B83A5AA20A5C133CA4DD2FF002DB757E56E5D353A2AD9DEA776
        9E574D2BA14B7C2DC2BCC85E64A46D37C75EDDC60ACC15982A305460A8C0CC0C
        EDD981980EDD1811811811DBA305260A4C140B66942D8DB676D41DBD076F41DB
        D076FB676FB66DECECB3B6D93B7D83F2F24BF2C6B8774C3BA60DE306E98374C1
        BA60DE306F18378A76B7E8AA875554F32AA1D3AF968D4AB19632C658CB18E869
        781F3E4D2ED134F83A1D094515DC433F2FFED9D726D9936CC9B665DB32ED9976
        CCBB665DB32ED99768CBB6535D15723C89D2082BA2DD7AEB5B69CB2E65D5173E
        4B98CB5A79EA33B33D667A8CD599B70CBB8CCBB866DC32D665ACCB5197707B95
        9937117EE32FDC16EEE216E56CBF70C95992B2FAC75564D5392B3F2D75FCABCE
        A2BAA8AB6B769DDA787A42FF00DB85A2BA6D7AC8D265B49FFE67FF0099141141
        5243E3AF6D569A74BE2964B2110B909B5A470F43F2CFED4D7B4DB3B4DB3B5DB3
        B5DB3B6DA3B5DA3B5DA3B4DB3B4DB3B5DB3B5DA6769B653B14D1579F07467FEB
        1FF9E0686A4AA974BD7CB4B6A2D65B511516B21F22BDB55AB2B459598EB31D66
        2ACC7598EB315662ACC3598AB315661DC316E18B70C3B862ACC358B6AB42D8AD
        98370EDEB3B7ACEDEB3B7ACFCB4ADFCABAAF5559DDD6777B877551DD5477759D
        DD677551DDD4776CEED9DDB3BB6776D1B5BB4EED3CB84D554BA5F2AAA793D3C0
        79694D4E9134F482083F2EFED7D716E18F711656595965659596565B516D45AC
        B6A21EB45555156D6F53BAB9486935552E97CAAA9E479956EDA6746746747708
        CE8EE11DC23B847708EE11DC23B846793399D99DA33B29F51552D7A9677151DC
        5477159F969CFE55D6EA055D25D4A1574B528913489E0EBAF98940B99524D34E
        97CAAA9E198D6BA154AAA5D0FC07989C3D7F2CFED4E28E44B45CC9A855548BEB
        29DDDCA6ADADDA7769E5D54AA934D3E5554EB3025C1550AA5552E96886C86432
        190C86432190C86432190C86410C52886D4547E59FDA9AF6DB676DB676D41DB6
        D8FD2D076B4A7DAD27688ED51DA1DA33B36768D9DA5476959DA567695947A7DD
        A2A4E572EAA5549A69F2AAA639BD0E8743A72BC8A6AB44E4FCB9FB5F93D69254
        1723FF0053CC9549722D65AC8E7D74A6351CBAA88E4BAE9A4CB4196832ED9976
        CCBB666DB336D99B6CCDB665DB32ED9976CCBB665DB32ED99B6CCB414FA8A293
        F2DB557E56D6110884422110884744743A32085E16BA1549A8E2F2E1AA9E4554
        AA9574BA1A71E07F2C7ED3E57FE7C4D7426B869498FA70D54C721D29AAE87435
        D79F41F963F69EBDC6E9DC6E9DC6E9DC6E956FFA84775BE775BE777BE777BE77
        7BE775BE777BE777BE777BE777BE777BE777BE775BE775BE775BE775BE775BE7
        75BE775BE775EA0EEB7CEEB7CEEB7CEEB7CEEB7C5EAF7D35EA775AEE374EE378
        AB7B76A32EE19770CBB885BDB864ACCBB865DC9CDB866DC335666AC75D664DC3
        25664DC325664ACC95992B1D75B44924B2597171717125CCB99732491368FCB1
        FB4F915D30743A1D0E8283A1D0E9C6A0E8743A1D0E8743A1D0E840AA869CAD60
        853C8843A4B510422D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D1D2A6C45A7E59F
        DA9C9AA9D20823482082086432190C8E626D09CAD6190C864321EB0C8643D234
        EBE05B128D7F2CFED4D6592C965CD92D12CB99D4EA753A92C96896CEA753A9D4
        EA753A9D4EA753A9D4EA753A9D4EA753A89B2E67526A26A26A26A26A26A258DB
        2EA91351351351D4BAA2592C964B2592C964B2592C964B2592C964B2592C964B
        259F957F68F0CCF2DAF09E425CBF2F15F957F687F07E5CFF003F11F957F686AE
        9AA9F01E5CF6E08E7F992B9D452AD69AE47E55FDA1AD54D2A8C68C68C68C68C6
        8C68C68C68C68C68C68C68C68C68C68C68C68B2931A31A31A31A31A31A31A31A
        31A31A31A2C42DB48B116231A31A31A31A31A31A31A31A31A31A31A31A2C4588
        C68C6918D18D18D18D18D18D18D18D18D18D32C462DBA13A12A6AA29B31A31A3
        1A31A31A31A31A3F2B74FCA3AE6DC336E19B70CDB866DC336E19B70CDB866DC3
        36E19B70CDB866DC336E19B70CDB866DC1EF6E33A9D4EA753A9D4EA753A9D48F
        0E9F1F994BB6ADC54C34B70AADA697C8FCAFFB4B5CBB665DB32ED9976CCBB665
        DB32ED9976CCBB665DB32ED9976CCBB665DB32ED9976CCBB665DB32D065A0CBB
        68CB4196832D065A0CB4196832D0575D152F0F3C54ABAA75529B6A8753A19279
        F23F2BFED2D7DB364F6CD93DB364F6CD93DB364F6CD93DB364F6CD93DB364F6C
        D93DB364F6CD93DB364F6CD93DB364F6CD93DB364F6CD93DB364F6CD93DB364F
        6CDA17FF0037659ED9B27B66C9ED9B27B66C9EDBB33ED9B27B66C9ED9B27B66C
        9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B6
        6C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B6ECA3DB364
        F6CD917FF3B651EDBB285FFCEDA4DFFF003B62A6FF00F9FB551ED9B27B66C9ED
        9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9F96E9547E56D7DC3D49EE1
        EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A
        83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0
        F70F507B87A93DC3D41EE1EA0F70F527B87A83DC3D41EE1EA0F70F507B87A83D
        C3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70
        F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D
        41EE1EA0F70F507B87A93BCDF477BBF0FD7FA94DFF00F47D437EE1EA4F70F507
        B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83F2CD4EBF
        CA9AAF2F0A84BA7418BC52126CA69BC854555D355D57FEB45553A9F33F2BFED2
        D57978544A85E6FC5A29BA6D8A632AA5BA4AA53E6FE57FDA5AAF2F0A96ADF8B5
        4BA8A3FF0054BFF52B74AAB9FF0095FF00696ABCBC225E3EB6E9537EDBAFFF00
        5F3D1AE77E57FDA5AAF2F05225E3188DBA555565735D54A75572B87CB99F95FF
        00696ABCBC5B5E0D8E84E9A55293A9535BA36E92AA9D4DBF05F95FF697855CCF
        2F0085D44E9DA6D50E86E855535BA572A793F95FF697F228A5C3AB6EAA9D714D
        1CDF2E47E57FDA5C1E5CEF33CBF804DAF029F17E57FDA5E07CFC27972DBF091C
        5F95FF00696ABCB99E7E1D3E437E2FF2BFED2D579707971F9F888FE03CB5FCAF
        FB4B586432190C86432189496B2D6410D90C86432190C86432190C86433C910C
        86432190C86432190C86432190432190C86410C86432190F586432190C864321
        90C86432190C86432190C86432196BD3F2BFED2D52850C86432190C87A742191
        D6190C86432190C86432190C8634E1AD2190C86432190C86432190C86432190C
        54B218D74B486432190C869690C86432190C86432190C86432190C86432190C8
        64321907E57FDA5C524EB56889249249249249249D6116AD6492492492492757
        E4C5AC93C16A21704924924924924924924924EB5797E58FDA7AC10410411A42
        3A1088208208208208208208442211088208208208208208204B582082082082
        082082082082082082082082082082083A1F963F69F0F53A9D74E9AB6893A9D4
        EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9223A9D7593A9
        D4EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753AEBD4FCB1FB4
        F5B692CA4B692DA4B292CA4B292CA4B292CA4B692CA4B692DA4B692DA4B692DA
        4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4
        B292CA4B692DA4B292CA4B292DA4B692DA4B692DA4B692DA4B692DA4B692DA4B
        692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692CA4B292CA4B693F2CFE
        D4D7B4DD3B4DD3B4DD3B5DD6FB4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD
        3B5DD3B5DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4D
        D3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD1FA5DD42F49BA769BA
        769BA769BA769BA769BA769BA769BA769BA3F4BBC8ED774ED374ED374ED374ED
        374ED374ED374ED374ED374ED374ED374ED374ED374ED374ED374ED374ED374E
        D374ED374ED374ED374ED775BED374ED374ED374ED374FCB69D3F95B87CF993E
        0DB12E6273E0FCF8BF2F7ED9E0F3E77978094F44B9D3E07CF8FF002F7ED9D73D
        4CCF519EA33D467A8CF519EA33D467A8CF519EA16E56D64ACC95992B32565D5A
        3256CDEF515D2FB9DF3B9DF3B9DF3B9DF3B9DF3B9DF3B9DF3B9DF3B9DF28AF76
        D75D62AEA9756E4D5BB5A59B74CDBA66DD16EEEB6AADC8BEB2FACBEB2FACBEB2
        FACBEB1555CA4D2E182190C8643208208219044904104104107E5EFDB3CDA299
        E3DDAD514A7C9D9DB244FA4B6E5524BA9C6B4531C9DBA5AF03E7C9FCBFFB6799
        4D373885C3554A8A6AA9D4DA4CEAB8F6B6EFA9B4855175A5D45255537A492505
        E8B8BA04E74944A2514529B9F01E7CAFCBFF00B6796BABA55AB86616EEE64AB5
        8684E7828A1D55529509B85FE92A995391EB4A92235EAC4A07D4B58E0A55CD28
        F01E7CBFCBFF00B67974530B8B7F72789A139D14B746DA49BA5910A545754127
        9E8BA94A54AD3FF610DCEAA9753A6954AE04A1786FCBFF00B6795453C4D49BBB
        962E4ECED5ABA1524C86371C34D31AA50529A553829F243706DD16AE05C89F01
        F97FF6CF268A65F16E56A8A5B753E263A5D251B499E74FF9122552A67829479E
        ABA8DC27D47D046DD13C2972FA73BF2FFED9E4252D285C5B946ED6F06E98374C
        1BA60DD306E98374C3B861DD28F4ED35FF00E638436989153B9EB4AB9FFE745D
        5F449B6DDC5C50AE7D2383CBC4FE5FFDB3C8A69B57167A13EE283B8A0EE283B8
        A0EE283B8A0EE2817A8A1B55A9FF00D1BA9968FCABAA47AA4D9D16886E44A16A
        94B4952BC77E5FFDB3C7453C7BFB9690753A9D4EA75204AA652AA54EC6DD83AA
        1A527FE6A7034E539D6951ADC52B868A6D5E0BCB9BF97FF6CF1514CF1CA4743A
        1D0E8742693A17286E1A6EDAAA70948941368DB91A913295AD4534CF0EDD3E1B
        CF97F97FF6CF0D2AE710B86AA9534D753AEAE1A1D25915BAA69DAA3236C5FF00
        B1E6FAC373C14D2AA7D56A93AB868A6E7FC0FE5EFDB3C094BA69B571574535AC
        1B660DB30ED9876CC3B661DB16CED42DBA1BC7B4C487353A85E75552F54A5AE8
        79BEA85D44A16B4AB9A50BF81FCBDFB6759828A61716EEF34F2EE19B70CDB866
        DC336E19B70CDB82DDA9A5BB5D250AA54D5569E656E13D521285A2702A44F5F3
        74D36AF15E5C8FCBDFB675A29970D09A7C355D6F6F59DBD676F59DBD676F59DB
        D676F58BD3D6CEDAB36B66C6DC24A74A9C2E0A547052B469325AD36E8B7F84FC
        BDFB6785A13D6BA96DD3DC1DC9DC9DC9DC9DC9DC23B893B946DEE641B84DF525
        24DCBD194A2754A5F06DD1E3E09E1FCBDFB6789A4C96B4DCBF72AC7598EB31EE
        18F70C7B8595A31D6CB2B29DAAAA74D34D29BBB4892A72DEB4A9138D111D5285
        AD14BA9F911CA8F0DE5C1F97BF6CF21EE514BCDB666DB336D99B6CCDB666DB32
        EDB79B6C5B9B6D95329F22A7C090946AAA84970436E9A552B553FC04CE9F97BF
        6CF1EF6E5886BAA724104C289724B3676ED553856A3C90A9A5914914908A36A9
        4ACA0B281D14229A292DA4B282DA4B691534AE2EABF81FCBDFB678B73716DD2D
        B6F5871E4253AECEDDC3690BABE1B8DBA38129E6DC8552D174F1BF97BF6CF157
        46ED7560DC305660DC16C6E2787725EC6E3305660ACA7D3D6EA4924DDCF86A36
        E9B9EBE6251CDA20ABC723F2F7ED9E4CB9820885AD5571212BDA492D2509473A
        110BC7FE5EFDB3C899128D5A925AD2A709A8E248A29B56B4AE637FC079EBF97B
        F6CEBF319F319F319F318FF3149F319F319F319F319F319F319F31437F9824F9
        80F980F980F980F980F980A7F312A5FCCC7CCC7CCC2FCCB07CCE7CCE7CCE7CCE
        7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE
        7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE
        7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CD07CCE7CD07E4AF5BEE5F91BFA57DE
        FF00F67FD2BEF7FF00B3FE95F7BFFD9FF4AFBDFF00ECFF00A57DEFFF0067AFFF
        DA0008010202063F0043B22D916C8B645B22D916C8B645B22D916C8B645B7C27
        84F09E13C2784924924924924924924924924924924924924924924924924924
        92492492492492492492493C2784F09E12492493C2784F09E13C278493C27855
        DFF8C8BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BA
        E1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE
        1B88BAE1B88BAE19175C322EB8645D70DC45D70C8BAE19175C322EB86E22EB86
        45D70C8BAE19175C322EB8645D70C8BAE19175C322EB8645D70C8BAE19175C32
        2EB8645D70DC45D70C8BAE19175C322EB8645D70C8BAE19175C322EB8645D70C
        8BAE19175C322EB8645D70C8BAE19175C322EB8645D70C8BAE19175C322EB864
        5D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45
        D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D
        70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DCF84924924924924924
        9249249249249EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB
        47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB4
        7AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47
        AD156FE3322D916C8B645B22DBE1FFDA0008010302063F00FD03A08208208208
        1D16E8B745BA2DD16E8B745BA2DD16E8B745BA2DD16E8B745BA2DD16E8B745BF
        D2C7FA58E8B7FF0073DFF627745BA2DD16E8B745BA2DD16E8B745BA2DD16E8B7
        45BA2DD16E8B745BA2DD16E8B745BA2DD16E8B7FCC8208208208208208208208
        208208208208208208208208208208208208208208208208FAF9FFDA00080101
        01063F00FC0FFCBBEA9DBFF77CE7E0BFE5DF54EDFF00BBE73F05FF002EFAA76F
        FDDF39F82FF977D53B7FEEF9CFC17FCBBEA9DBFF0077CE7E0BFE5DF54EDFFBBE
        73F05FF2EFAA76FF00DDF39F82FF00977D53B7FEEF9CFC17FCBBEA9DBFF77CE7
        E0BFE5DF54EDFF00BBE73F05FF002EFAA76FFDDF39F82FF977D53B7FEEF9CFC1
        7FCBBEA9DBFF0077CE607C9769ED7D2AF92ED3DAFA55F25DA7B5F4ABE4BB4F6B
        E957C9769ED7D2A8FF00F0D27FD476AE957C9B68ED5D2AF936D1DABA55F26DA3
        B574ABE4DB476AE957C9B68ED5D2AF936D1DABA5501DCDB476AE957C9B68ED5D
        2AF936D1DABA55F26DA3B574ABE4DB476AE957C9B68ED5D2AF936D1DABA55F26
        DA3B574ABE4DB476AE957C9B68ED5D2AF936D1DABA55F26DA3B574ABE4DB476A
        E957C9B68ED5D2AF936D1DABA55F26DA3B574ABE4DB476AE957C9B68ED5D2AF9
        36D1DABA55F26DA3B574ABE4DB476AE957C9B68ED7D2AF936D1DAFA55F26DA3B
        5F4ABE4DB476BE957C9B68ED7D2AF93ED1DABA55F27DA3B574ABE4DB476BE957
        C9B68ED7D2AF936D1DAFA55F26DA3B5F4ABE4CF37FB8ED5D2AF936D1DAFA55F2
        6DA3B5F4ABE4DB476BE957C9B68ED7D2AF936D1DAFA55F26DA3B574ABE4DB476
        BE957C9B68ED7D2AF936D1DAFA55F27DA3B574ABE4DB476AE957C9B68ED5D2AF
        936D1DABA55F26DA7B574ABE4DB4F6AE957C9F68ED5D2AF936D1DABA552F7347
        37FB8ED7D2A88EE593FEA7B5F4ABE4BB4F6BE957C9769ED7D2AF92ED3DAFA55F
        25DA7B5F4ABE4BB4F6BE957C9769ED7D2AF92ED3DAFA55EA4763ECD63FB7D9BB
        277F77C766ECFCDC49E2D8E6FBC39EB36446D124C009F13C2A22E9AB064A7064
        7DC64C993264C993264C993264C993264C9934A993264C99328D231122BA6857
        4A65755DE04DC09AB09AB09AB4CA462F2E23D50FB8BBEFC4B9EC57B6651174F0
        EEF09C3887DF31DC88511EF18881BC2BDD74E9D3A714A70AF0A55E14ABC29510
        6385EA87DC5DF7E25CF62E0E0B8460C5BFC654464C4C43EFB8851A779E69C288
        310707D50FB8BBEFC4B9EC57E5B902C8CB1067C5443EF3E0C444288F78C44844
        9314E1384E2B4E9D3A74E9EA57AA57A42E307D50FB8BBEFC4B9EC5709DD8382A
        07DD8A887DE3F962A2149EF18608994A6072417F9A74F527A93D49D39A13A74E
        9D444BBBEA87DC5DF7E25CF63A07DC542D7B88C5443E3F34C30A4A30A214463D
        9327DC88972833A88DCF543EE2EFBF12E7B11C3864169910E3F2CD8A8879F1B1
        3EE189817C19144622209CE1394E5394E53953A9D4E9A59C9299446E7AA1F717
        7DF8973DBC20694431134D8A887C5C4FB862FF003C188F785118711EF0AED6AE
        D6AED6AED6AED6AED6A4B3416577DF14D5A6AD3569AB5EA81CBFC8BBECFF00E4
        B9EDE390CC510642A071310F9313C031B2518311EF5263201E73930FD4FF00B8
        7BEBC4B9EC0931D9E6502B362621E7C18292CC00DEB11EF0A230E51113C5022C
        829930F6ABA15D0AE8574264C997AA1F7177DF8973D812103DCAF0A028192D87
        18DCE18A815251898879C6E694496120032A801C522E90A36ADC26E2AC91961B
        C65A70223DE14461E5138524A32E27D50FB8BBEFC4B9EC216818112C540C96C5
        E18D887DCCF9567C4443CE14C6D8108146C992704E5512624301BD3F2C08D214
        66C2CCA1C99C28C6319F11EA87DC5DF7E25CF618B564C0862B25A0E31B117B87
        765A7762A753EE09224CBEE46D59FD3684A649913C5FD464CDBDA33E07085113
        E0C9B9032D9C47AA1F7177DF8973D8816AC9811282B25B17ACE3621F26090866
        960A366102EBF49973A02D484480E5500231739936F8969DDFC9472EE66DDC9B
        902DC187EA87DC5DF7E25CF6245AB260431592D8BD671A4D912CE32E0C6640D9
        311389D3FE92C5432E697718289C53A7C738578529C6795478C21ED0AF0A42BE
        290AF8A55F14ABE15F15A85AB724C6557EA3A15EA8ABC682B8B62D7EA78110DC
        F543EE2EFBF12E7B142D5930227592D0BD671BC61EF1F9EE4B27B5466C884265
        122400840549EB57AB57AB4F5A925CC7111B260722BD50578ABC55E2AF157AB0
        AF1A55F34957CD253D69CD29CD2A7A7720A597D8A2E3D9B92290EEBA7C204181
        1282140C9CE07197D8BD50FB8BBEFC4B9EC58B564C08C8B25B17ACE3499A70A5
        888B45716D52A318E50818C416CDB8705B111B3219F3AC89D3A74E9D3A74F820
        CCB4414232AD3BB2628106044A17A9B68BDAFE43DF44FBFBCB9EC60B564C0851
        6B42F59C6F185AF6013220DE124306299326DC88F7E2222F6E384E138AD5EE15
        7856AF0AD5E57EA57AA0AF2BCAF2BCAF2BC6A4E6A4E6A4E5441268D09CD2A7A5
        4F4A634A63494C692A16ACCB34A55CACAD5D76B4AF53C0900FE45DF600FF00EC
        B9EC0D595AB2AE1A95CE0573815CE05AB2AE15AB35216ACD92086281B567896A
        718A2770C99A289174BFB7773706E413EE3A994CB2E61BCB36273288C3817E14
        CBD50FB8BBEFC4B9EC0BD6691A15EB348D0AF59A46857ECD2342BF6691A15FB3
        48D0AF8A46857C5216B05216B054AF887B57E9B42D7B311C2570A9043732E651
        0DBBF96E8814E53A74F89307CEA0408870629856AE84C1327142F82CDEC4F527
        15274FC09EA57B814B6B815EF7ABC55E2AF957CD2AF9A55F349578D255E34957
        8D255E34952DB3495EA61CBFC83BE7C4B9EC78B564C0851125A17ACE070284E8
        C0640B3B152339F6E040CEEB28DDFCD4AA50997F9AFF0035352A6A5441F76232
        10C542D4D361BA74E9F787A99F7077CF88F3D80F6A9F827B54FC139A7E09CD3F
        04E691A15E348D0AF1A4684E691A139A468578FF008F7292D1AB427348D085AB
        36AD023D943604B2059D3BCAA4F60C294485669B099315F04C684C98E233862A
        E9F72BA55D2AEABAAE702B9C0AEF026E04C9B81370261526AD3569AB4C01F6A6
        14A614A04112E7F827149D09C57A138AF42BC2B57856BD4D05C7F21EFA1FF92E
        7B02E598E68ABA15C14957056AE057456AE8A4AB82B5705255CACAB9595AB14A
        D58A55CAD444845EB266DCCE26513898162B80E049461C47BC62BF2C7CBB99A7
        0A49F07D4FFB87BEBC4B9EC0D59A0AB87DB0570D0AE1A15C341570D055D34157
        4D0AE9A131A15D3426DD16ACC84288908BD64CD8C81503EEC5923DF888D08836
        7815D2AE9A95D5755D5755D5755D5755D5755D576B576B5764C9157692AE884F
        2ABA295745255D0AE8A4AF534973FC87BE89FF00B973D81785215E1EF2149681
        192215E1484F595785255E09EB4C9D356A6DC65003DA5087BF1B03EE2A069C5C
        47BC6144FB86E40D2A07FCF78E7C8B3607A99F7077CF88F3D8F73494E69578D2
        A4B4692AF9A4A1685A324C4A8871786320540B8C5C47BC6044FB86040FB8A81F
        7109AADC64C993549AA4D526A93549AA4C993264C684D5263051164D098D057A
        99F7077CF88F3D80E69F82E552342BC6AD0AF1A94968D4A5B66196015F3405AC
        3405ACABE2AFFF00C3F157E3EC1F157EA5273926581525B10F6157856AF057C2
        16ACDBB31F7CAA579E18C95D40BE2E23DE3733E29B1F9A70A2258AF53BEE1EFA
        F12E7B159464C8A224381FE9E150C0931F90CCA070A5A7078C3DE3132986457B
        855EE157AA2AF5455EA8ABD5157AA2AF5455EA8ABD5157AA2AF5455EA8ABD515
        7AA2AF54548639A055E927102BD4E218FF0021EFA23FEE5CF603264C993264CB
        228C37088489B7AE433152E2E21A718881956505AD268EF1F52FEE0EF9F11E7B
        FA2C43E14AA419B0623DE311033ACA32EF02BD4BFB83BE7C479EC0BE6A57CD4A
        F9A95F35288E70C3248B58681A16B4D4B5A680B59C0B5A680B5A680B58680B58
        680B58680B5A680B5A680B58680B5A681A16B4D0342D69A0685AD340D0B5A681
        A16B8D0342D71A0685AE340D0B5A681A16B4D0342D69A0685AD340D0B5A681A1
        4BCE139A4D0A22D9A95F352BE6A51E3CAAF9A16B0D014B6CD4AF1A95F352BE6A
        D0AF157D5F578ABC5445AA60AF702BD5057B815FE057B815EE057F8140DA8839
        60BE014D40535015D142BB52715A715A715A715A6180C134BB9EA5FDC1DF3E23
        CF626207B77D669C288C18D18B65F14E5394E5394E5394E9D394E5394E5394E5
        394E5394E5403EE395EA5FDC1DF3E23CF62A207BB072E29B17C2A2378326DE30
        0FC181EA67DC1DF3E23CF60394E5395089AD39A4A729CD69CD2539A4A73494E6
        929CD25484FB22539A4A73494E6929CD2539A4A73494E6929CD2539A4A73494E
        6929CD2539A4A73494E6929CD2539A4A73494E6929CD2539A4A735A73494E692
        9CD2539A4A73494E6929CD2539A4A73494E7DB129CD2539A4A73494E6929CD29
        CA729CA729CA729CA729CA729CA729CA729CA729CA729CA729CAF523EBFDF1E2
        3CF61494E2E21D427DE912F8BCDBEBD48FAFF7C788F3DBCE5A77944BE373EF29
        29C3F523EBFDF1E23CF604A200FB28DE19B7844BEF08638DB364DA31E28B2265
        2D9364168E23D48FAFF7C788F3D806CF1CDB2658E44E5394E5394E5394E5394E
        5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394
        E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E7DC
        9D016BF5DA7CC171F9B240325AB2608D936F8E498C42729CA729CA729CA72BD4
        9193BFFBE3C479EC0BD57C15EABE0AF55F057AAF82BD57C15EABE0AF55F057AA
        F82BD57C15EABE0AF55F057AAF82BD57C15EABE0AF55F057AAF82BD57C140DA7
        9186320B3EF4FCB120E440D91FA4F2865408B50B4C415C4B262498DA2313EA57
        D7FBE7C479EC0D48A56A452B52295A914AD48A56A452B52295A914AD48A56A45
        2B52295A914AD48A56A452B52295A914AD48A56A452B53656A42D48A56A6CAD4
        D95A9B2B53656A6CAD4D95A9B2A1679B160BC41DEF9F0C5968BA80B008139518
        46C5B11E2A02C8694938AF52BEBFDF3E23CF606B2D55A16B2D55A16B2D55A16B
        2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B
        2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B
        2D55A16B2D55A15FB5568527396AAD0B596AAD0B596AAD0B596AAD0B596AAD0A
        1C7B55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB5568
        5ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB5568
        5ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB5568
        5ACB55685ACB55685ACB50CB2685ACB55685ACB55685036AD1E3491934231B76
        B336842D59E72D187B3428FF0076D08CB09342BF6801206D0B596AAD0B596AAD
        0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD
        0BD4DB025163F90F7D5904E6EF2E78603D9FFDBF15C9A172685C9A172685C9A1
        72685C9A172685C9A172685C9A172685C9A172685C9A172685C9A172685C9A17
        2685C9A147F4FB609ECD0B9342E4D09ECD1F15C9A172685C9A172685C9A17268
        5C9A172685C9A172685C9A172685C9A172685C9A172685C9A172685C9A172685
        C9A172685C9A172685C9A172685C9A172685C995A4F8A85BB7641C90F8A81366
        5BB6A1270A20F141F67C57244D20F8AE4D0B9342E4D0B9342E4D0B9342E4D0B9
        342E4D0B9342E4D0BD4CB65ED7F20EF9B46194F78F3C77D839660A45ECDF9002
        2720444605C2B11319CC26448110588566C9BD1E3289F6637D4AFAFF007CF88F
        3DBEC08B4C9F811DF9FA5F32E358278C24B40BE791445F0E32AFEDDA3026E913
        2209899F1DEA57D7FBE7C479EFEB1FA447D8AD59278969C13911B766D71BFF00
        5E751B25E592482FCF1FEA57D7FBE7C479EDFDF96FAB366CC8211F6A26D4A6C9
        90D0B8A2CF162F0C0FCF1BEA57D7FBE7C479EDEF26FF009584A46552002CE4CC
        8036636611080038A04C30B3633D4AFAFF007CF88F3DBDA4C5CB4EF3E358960E
        11B76844300AC9E2C0112819D0B529B2E0289C4442CF8AF52BEBFDF3E23CF6F5
        863728DE200F628131B53C194230B36A5198A36A3C6B4D640951044419B159D4
        B89F52BEBFDF3E23CF607E7BC3F3C7C42CF8F0724AB8D64C41962ACD88C4DE30
        FF0019F1D9B11EA57D7FBE7C479EC00B28C7426CBBC73A81C7C86148DE1F961F
        A95F5FEF9F11E7B0A459F179BFAA4B83EA57D7FBE7C479EC3CFF00D03F2FE81F
        9E07A95F5FEF9F11E7B139BFA367DF9EA57D7FBE7C479EC01229D4EA753A9D49
        46E3264EB329D4EA753A9D4EA753A9D4EA7C09D4EA753A9D4EA753A9D4EA74CB
        F353A9D4E9A54CA753A9D4FBB3A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9
        D4E9B73D49FAFF007CF88F3D82E9D3A74E9D64F6A7F7C24518C7D8A51009D3A7
        4E9D3A74E9D3A7463BAE9D3A74E9D3A74E9D3A74E9D343DA9A3EC2A01674E9D3
        A7453EE3A74E9D3A74E9D3A74E9D3A74E9D3A74E9D44C9ED5EA57D7FBE7C479E
        C264C9936E0932AE04646907B13264C993264C993264C9B75B7193264C993264
        C993264C8C8994A37193264DBAC9B7593264C993264C993264C993264C993212
        457A95F7077CF88F3D8A852B2A6E14DFD7732F52FEE0EF9F11E7B0993265C384
        C993264C993264C993264C993264C993264C993264DBAC9B77F24C993264C993
        264C993264C993264C993264C993264CBF352265EA5FDC1DF3E23CF603264C99
        3264C993264DB8C993264C993264C993264C993264C993264C993264C993264C
        993264C993264C993264C993264C993264C993264C993264C9932F52FEE0EF9F
        11E7B026A54D4A9A952421398A9A95352A6A54D4A9A95352A6A54D4A9BD91534
        72454D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A5
        4D4A9A95352A6A54D198454B0A54D4A9A95352A6A54D4A9A95352A6A530232C5
        4D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A54D4A
        9A95352A6A54D4A92109CC54D4A9A95352A6A57A9B64BD9FE43DF40FBBBCB9EC
        2CD8C817DE79E618C928526F3FCF0BD50FB8BBEFC4B9EC1CD8ECD977848B2ACF
        39DFF9B2E1FAA1F7177DF8973D819BDD2E2B4C1024C233489F813F027E04FC0A
        4B5EE91486A0B8B66D40B93250B59559D0B59559D0B59559D0B59559D0B59559
        D0B59559D0B59559D0B59559D0A4B64FBACE85FAED46D3969332BD5043F5C685
        188C83FC414232FB95FA82BD5057AA0AF4A732BFEF82BD52BD52BD52BD52BD52
        BD52BD5290C72040131339DE39B11EA87DC5DF7E25CF63A25B0E4BE58FF8994B
        29329267C48B644BC9078533CA11B508C240142D07C88931244408224CF294FB
        B12F89897C9BC73627D50FB8BBEFC4B9EC6C29524984496E146D196356652A95
        B2E1C4DD0F09CE45087B00950B328394A811ED2A23F5648CCA2536EC48902629
        8A651DC74E9D44B0619D3EF0CD9315EA87DC5DF7E25CF6320A184F084E57FA45
        D1F9E048D93078B4E619D7143597421213292AD03C9962B3B44A8061819A7500
        D3EE90A01664CB2414260E5406FBF543EE2EFBF12E7B1919CE19B0185E861443
        AC877042532421957FA8DF8284200480850238D6728500200B99D407BF0009CA
        03766DC86E800C62A14EF0E0C67AA1F7177DF8973D8B89F761C05E2D986559E7
        C4F1EDCF25913A301FAB215C60D3ACC5C059CB60E7321C095D403E044DE356F0
        97DD8DF543EE2EFBF12E7B159861C4CA580CE89B4E5F10232878665C72C20409
        A2A13D998A249CC0297DA724513919470227DD811994548A40A2D95718B4C378
        7B31DEA87DC5DF7E25CF62A187187E96128902BB58576B0AED615DAC2BB58574
        5215D1484CEC22142D8005A9220C501C960A22D7B02043990852ACD930333AFD
        3BB184AB32804C997FA44CB363E18FF543EE2EFBF12E7B139CB9C3225C910245
        CAA172A85CAA172A85CAA172A853D0A001A159803688C8254D18CE8D978314E8
        162A01B2E0410130DD0A18100A01863736F2F543EE2EFBF12E7B1119CB61F12C
        DE37889826C39013056E485A9BD881E517CDED46072A82B2A1397510F9167C9B
        BC270225F07FD45CEF3CD971BEA87DC5DF7E25CF61C4B09F2E1BD2AF702BDC0A
        F702BDC0AF702BC2A57B8165E042C83002599120CA18A7847DCA44E892E5673B
        990E5502EA27DD8119B078C5E6FE83EA87DC5DF7E25CF61429425801844960B8
        D6A8C8371AA4D526A935488B424B53C2A42C9110FED0ADE41201EF405B120941
        CA14210166580A944EE44991669B02244814B28CB888961FD0BD50FB8BBEFC4B
        9EC186550A4E18E333C2298D2531A4A63494C69298D2531A4A89B318C8012540
        D9842510251FD0EE25752084180FF0EA561221B900C1F024F794042033EE4436
        4522860001A7391406F981C4FAA1F7177DF8973D819B2A8CE70F8B61C5E2AFD4
        AF1A95E352BC6A578D4AF1A95E352E2DAB7C522506447F5F1ED1900004E871CF
        1AD3C7F2500FBB00FC1819CA8527022C540C8774012C54279CFF0043F543EE2E
        FBF12E7B038C42886C8A4C13C572CAF034ABC2B57856AF0AD5E15ABC2B57856A
        22D0AD5E15AE35A2090D059F7419E618312FC18113B92A816CBB91378EFD9164
        C2F543EE2EFBF12E7B0A2242A0643BA6D1F70CEAE1A55CAD5CAD5CAD5CAD5CAD
        5DFF00895C30F6AB869448B3002494CEA2819B70C583295E6C0896189E338174
        6FFF00CD4B83EA87DC5DF7E25CF61CAA05B2EE4788602402069574D6AE9A0E95
        74D074ABA683A55D341D2AE9F7C5478861EC2AEDAAF4A8104672182003090291
        84FBB09860669D4BBB050C0CC2F1500A224389CF9167CBBEBD50FB8BBEFC4B9E
        C4DF1908C8AF857C2BE15F0AF857C289B608982BE1002D024B01B901BBC5133E
        0003D880CB812E040280A7025A77FC8BF2DCF543EE2EFBF12E7B11C5B378CF90
        6E443E04AA27DC3778D6AF160660B3E032FF0035FE6A0044A96CCA55DA95C575
        44D90322BA15D0AE857429043D985946FF00C9B9EA87DC5DF7E25CF61C4CA587
        B51265267DD90473ACF914A20A27DDBBC7224174652A25470A5A571AD0979230
        3364C6C92FB164390EFED0BD50FB8BBEFC4B9EC38F1601808891356135615DAC
        23256137BA210FD3ED64D584D585FAA41398CA800C0420B365C2072A89BB6702
        0A18DE159346FF00F543EE2EFBF12E7B1500C1CA787B13A94C7DB8107C3007BC
        A80DE1F96E326DFB22C8BD50FB8BBEFC4B9EC4C034E54376054B28CBB99F0C00
        224ACA673811A3199E61839F7F7AA1F7177DF8973D81E5CDB3A85E5CDB3A85E5
        CDB3A85E5CDB3A85E5DF6FFCDF50BCB9B6750BCB9B6750BCB9B6750BCB9B6750
        BCB9B6750BCB9B6750A4FE3B0193FDDF52BCBBB5F52BCBDB5F52BCBBB5F52BCB
        BB5F52BCBBB5F52BCBBB5F52BCBBB5F52A3FFE72266FF9CEA1796F6CEA1796F6
        CEA1796F6CEA1796E4FF00ACEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA17
        96F6CEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA179
        6F6CEA1796E5CBFEF3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A
        85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A8
        5E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85
        E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E
        5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5
        ADB3A85FCFFBC7FB5FD9FF007FDF7DEBDB7FB3C6E3713FBBDBF9DE738B1808C2
        2F0FC17FCBBEA9DBFF0077CE7E0BFE5DF54EDFFBBE73F05FF2EFAA76FF00DDF3
        9F82FF00977D53B7FEEF9CFC17FCBBEA9DBFF77CE607FFD9}
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 151.181200000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = -3.779530000000000000
          Width = 253.228510000000000000
          Height = 147.401670000000000000
          Frame.Typ = []
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000032000
            000160080600000043B71D2D0000001974455874536F6674776172650041646F
            626520496D616765526561647971C9653C0000032269545874584D4C3A636F6D
            2E61646F62652E786D7000000000003C3F787061636B657420626567696E3D22
            EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B6339
            64223F3E203C783A786D706D65746120786D6C6E733A783D2261646F62653A6E
            733A6D6574612F2220783A786D70746B3D2241646F626520584D5020436F7265
            20352E332D633031312036362E3134353636312C20323031322F30322F30362D
            31343A35363A32372020202020202020223E203C7264663A52444620786D6C6E
            733A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F3032
            2F32322D7264662D73796E7461782D6E7323223E203C7264663A446573637269
            7074696F6E207264663A61626F75743D222220786D6C6E733A786D703D226874
            74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C6E
            733A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F786170
            2F312E302F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E73
            2E61646F62652E636F6D2F7861702F312E302F73547970652F5265736F757263
            65526566232220786D703A43726561746F72546F6F6C3D2241646F6265205068
            6F746F73686F7020435336202857696E646F7773292220786D704D4D3A496E73
            74616E636549443D22786D702E6969643A373845424139464332453933313145
            38384135324243373835443934393734362220786D704D4D3A446F63756D656E
            7449443D22786D702E6469643A37384542413946443245393331314538384135
            32424337383544393439373436223E203C786D704D4D3A446572697665644672
            6F6D2073745265663A696E7374616E636549443D22786D702E6969643A373845
            4241394641324539333131453838413532424337383544393439373436222073
            745265663A646F63756D656E7449443D22786D702E6469643A37384542413946
            42324539333131453838413532424337383544393439373436222F3E203C2F72
            64663A4465736372697074696F6E3E203C2F7264663A5244463E203C2F783A78
            6D706D6574613E203C3F787061636B657420656E643D2272223F3E3B6DFC8B00
            00B8544944415478DAEC9D059C1C55F2C76BD693DD64E34E0CB760871C76B8DF
            FF700F040B1E0E8760C1DD3D5890C3E170087010DCDD354182C565372B23FFFA
            F5EBF1999D9E99EE7EDDD3F5CDA7B263DD53FDA6E5FDFABDAA0AC562310A4D7C
            810421B8C494C5525F8AA5BC97F99AC7088588A251A2258B958F789E8B6884A8
            A191A85B0FF558100441288E681F5ABEF663FAB0E7C1C6E9B6835F8A854A5B55
            A8D072A1225FB7F01DB12ED69173B5395E4CDFDE8C0F84AA32DEA966AB4A79A1
            2EE3F3F0A83EE5859A1CEB4BFD8EAA8CEFAFE27FA1C4637C36FDFDEA94EFAE4E
            733BC4CF1397F550E6E76349BFCD0F84521B3394FA5EEEB688253E1FCAF15B63
            3B6289C7A15CEB0AA5AC3394EF3B941FA150113B4BDA76A43CAECAB58EAAACF5
            E5F23556957C9CB5DE2423F98DB5F9EF8E6C1B87448008820810411004C10222
            404480646C67BEB6100142ABB2ADCEB621DB3AE6E33837880011041120822008
            821544808800C9D8CE7C6D114001B21A3F86E8D88A6D15B635323EF805DBB5FC
            9DB7F3DF4E112082200244100441B0820810112019DB99AF2D02204046B2ADCF
            AFB119A31CABA57896BAD093FC991B59A43CABB62B6436B1081021F088001104
            41102C2002440448C676E66B8B0A14207D78814DF953EBF2E32DD956A4F41F2F
            157432EE60BB91EDC3E428890810414841048820088260011120224032B6335F
            5B54800069E21731956A6B32463A8C518EEED43573D930C5EA46DEEA1F53FD10
            012208598800110441102C2002440448C676E66B0B9F0A9015D83660DB9C6D13
            B6C1648DE96C37B34DE615CD33B73ACD0F11208290850810411004C102224044
            80646C67BEB6F08900E10E01FD9D54E03884C77A541C9F1302CBAB4277F2DFF6
            E4EF200244102C200244100441B0800810112019DB99AF2D3C2C4096E6FFFF41
            C9A955C3A878DE62BB8AD7F5A0DA84F4DFC8DCEA343F44800842162240044110
            040B8800110192B19DF9DAC263020481E35BB0EDC0B6165B2D95C654B6ABF90B
            9F35BFD8DC0411208250022240044110040B8800110192B19DF9DA42B300E945
            6A9403D9AAB6651B4DE5F1107FCB4DFCF725F30B29EDAF081041280511208220
            08820544808800C9D8CE7C6DA141808C60DB94543CC7366CBDA97CFE43986A45
            F47EDA778B0011043B1001220882205840048808908CEDCCD7162E0990954889
            8E7F9A7FEBA87CC26CB7F2F6DEC07F3FCBB97D224004C10E4480088220081610
            01220224633BF3B5858302640D52D3AB7634FFDA053A06B7B2A8B982FF7E9B3D
            AD4B048820D88C0810411004C10222404480646C67BEB6B059808CE1FFB72725
            3AD621FBB98DBFE432FEFB75FEB81211208260332240044110040B8800110192
            B19DF9DAC20601B22AFF07C1F17F6C7F23DB31BE7F8A213C42F445DC7F112082
            E01A2240044110040B8800110192B19DF9DAA24401B20ADBCE6CDB914A9DEB04
            E800DCCE7E5DC55FFC65E6688B081041700D1120822008820544808800C9D8CE
            7C6D518400593EA4463930C5CACE988E4C3AD96E65BB86EDEB34E12102441074
            200244100441B0800810112019DB99AF2D0A0890A12C40203AFE45AA5647AE15
            DAC964FE8ACBD88DEF321A814480088236448008822008161001220224633BF3
            B5450E01D29D54BADC5D49D5EAE849CEF300DB65ECCBFBD9B126224004413322
            40044110040B8800110192B19DF9DA2245806CC10F7721253CFA913B3CC1763E
            DBBB495F44800882C710012208826DACC83694D4D51AB6806D3ADB5FBA1D136C
            40048808908CEDCCD31663B8D30FD1B107DBF2E41E8FB15DC1BEBC96EAAE0810
            41F02422400441B08D66B66E6CC3D856601BC536908D0F3EE3CAFC15DB376CEF
            B1FDAADB59A14844808800C9D8CE941787900A2687E8D884DCE525B68B59683C
            9FF437F9A6081041F02422400441709426B60D48DD09DD886D2552A2642EDBEF
            6C8FB27DCEF626DB12DDCE0A5D2002440448C676928AE7D897547C472F72179C
            372E6487EEC5937C81EF224004C19388001104C17520449076131970D64C79FD
            53B667D8DE677B8D64EA96B71001220244F9B532A9988EBDC8DD295671BE65BB
            9C8CEC56C90D10012208BE42048820085A4160EA16A43A33FF97F1DE076C5349
            4DD99AC6365FB7B3814604489005089CDB9DD471BA83C59FC06E66B15DC0ED72
            2DA98282691B200244107C85081041103C037A68DB909ACE81691D0D29EFB592
            12216FB03DC5F619A59FB904A71101124401B206BFB00FA9D88E61D65BDF56C2
            6C57B328B8803075332B0645048820F810112082207812F4CCB62575D71505CB
            BA67BCFF35DB8BA4C408A66BB5EA76B8E21101121401C217CAAA1DF9D17EA446
            2799A8F586B795AA5BF8BF4BD8A9EF13A240048820540222400441F03CC8B0B3
            13A95191F572BC8F54BFB8983F4E2A234E9B6E872B121120952E40C6F07F6349
            8D762C65BDA51DE1496E9F49BC5D1FC69D140122081585081041107C05326AA1
            83B4275BFF1CEFC7C508B26B4DD5ED6C452102A4120508DE4040F93EFCEA3FAD
            B7AEDDC4E29BCA8223741E6FCF7FD3A782890011840A4304882008BE04293F21
            420E62FB5B9ECF205BCE23A67DA0DB61DF2302A49204C8D23135C56A2C37CC28
            EBADEA18B87180188F5BC9140C224004A1A21101220882EF41E0FA61A46245F2
            318DED3F6C0FB22DD4EDB02F110152090204311D10EDBBF3EBB92A0ABA0D02CC
            2FE40EFBF9B15855BBF257048820040011208220540CA82902218279EC0D793E
            830288F7B1DDC3F6B66E877D850810BF0A909EFC18A38507B2AD6BBD059D2211
            7C723B196975E90774D863B1785B890011840020024410848A6334DB116CE3D9
            7A74F1B95708533E881E60EBD4EDB4E71101E23701B21CFF378ED454ABA1D65B
            CE71FEC7AE9ECEFEBD1D6F1B11208210384480088250B12093CF216C47B1F5EE
            E273DF931222B8233B4BB7D39E4504885F04C8C66C07F36B7B65AF54078914BE
            DFB19DCFED7267DAB43011208210444480088250F10C623B8EED48CAAE2792CA
            3C522204B507BED1EDB4E71001E2650182DEED9EFC3E46FD36B1DE4AAE801A3D
            E7B25D4EC64863358900110122041E1120822004068C889C4E6A6A5657E08477
            1BDB756C9FE876DA338800F1A200E94B2AA8FC60B665ADB78E6BDCC77EF23117
            FA31E9BB08101120822002441084E0B12ADBC964D43E280802D62F23A33E41C0
            1101E22501B21219D30BABC6914A49ED355EAB32C47EE8D5ECF8141120224004
            4104882008C10573E5CF61FB8785CF2246E442B61F753BAD0D11205E1020D867
            9160610FEB2DE12A7FB14D62BBB18AE2FE8B0011012208598800110421F0604A
            D6696CC30B7CAE8D547CC8256CBFEA76DA754480E81420A8520EE1B18DF51670
            9D2B797B2FE0369A4DA42688890051CF44800842162240044110183E41D019A4
            A666156211DB356C97B22DD0EDB86B8800715B80A0C78A9A3687B3AD677DCB5D
            E755B613D8DE4B9D26260224B9AC081041C84204882008420AEB108AA3116D6E
            E1B3334989963B743BED0A2240DC1220B5A40A6A62C46305EB5BEC3A18053C99
            42D5F7265F1201627A90B6AC081041C84204882008420ED001C408479385CFBE
            452ACDE8B3BA9D761411204E0B906652FB1D6CA4F52DD5024600CF248C0086AA
            535E1601627A90B6AC081041C84204882008421E90B617F11E7B5AFCFC3D6C13
            D97ED1EDB8238800714A80603F63D1518574BA038B69470DBCC87622FBFA7172
            3B4480A46EBFE941DAB2224004210B112082200805D89FD468487F0B9F5D486A
            0AD7C5BA9DB61D1120760B901144B547911AF1B032D2A6933F785B9031EE46B5
            4D2922400448DAF69B1EA42D2B024410B210012208826001DC994661C25D2D7E
            1ED3B28E657B47B7E3B62102C42E01B232DB045275681A4B693F9799CC3DE653
            88EAE7A9A72240D2FE8A001184521001220882500407B25DCBD6DDE2E73157FE
            24B676DD8E978D08907205080A6042941E505AABB90EC4F3E984695769F12A22
            40D2FE8A0011845210012208825024CB11EE0A5B2B6008BE61FB37DB73BA1D2F
            0B1120A50A108C78204DEDB8D25ACB75A2BC01A7B2FF972445820890E4431120
            82600322400441104A0499AF4E2FE2F3180D419D9136DD8E978408906205080B
            8FAAE3488D9AA1014B6B2C57A97A8490482144DF2A81200224F53B92FE910810
            41280F112082200865F07F6CB7B3F5B5F8F91FD80E669BA6DBF1A21101625580
            AC1052235E87505A4FDDD3A0A6CD2944B5F724374D0448E67724FD2311208250
            1E2240044110CA046954A7B06D56C432E75371A327FA11015248808C22A3134F
            48A75B4DFEE17AB6D342A8E961D440241120224004C1694480088220D8C4E56C
            C715F1F9D7498D867CA3DB714B8800C92740962135E281DFB29EFCC34704C114
            AA7A3EB9352240940B224004C1614480088220D80852ABDE4DD6BBCA8807196F
            2EE36D4480640A104CBB434CCFF1E49FA9567150D3E32CB519F14E331001A25C
            1001928FA5C97A0AC0256CDC3BD3321C8826C7396ABEF9BCC45355D9F833E0CF
            15022440BA3529011209EBF6DA2D0690F7ABEAEAE05BAA8494A882975983EDBF
            6C238A58E626B62328FD6CEC2D4480C4B7174503914EF718B21EFBE315FE4746
            5AE8D087C9ED14012202C41ADDD86691F5E235F8055199558700C177E2423F9B
            F4888FF877CE31FDD025C25A48FD069944CDB6C1FB7F92FA5D7F31FD9D69BEE6
            3001112078AF8A7FFEC65EBC1754076514E461B65D743BE14120CAFED2ED8450
            F1F4637B808A8B0BF9806D5FB6AF753B9F131120F5BCBD986A7524A9B81F3F81
            7EC624B6CBB2364E04088900B1C68A6C5FEA7642701C0893196CBFB2BDC7F615
            1BEE58FC64EFD7044480007C0E22A4A997FA1BF3434AC4B2C03EB3826E273C06
            C43D04482014A8E009EEA0E2EA3FA0A3B83FDB23BA1DCF22D80204D3E4505072
            E9D2B6582B53D98EE2DFEAFB9C1B2702844480580377341FD6ED84A08556B6EF
            D85E667B930D81630BCA5B658004088886896AF824DAA38F12205EDDAEF2E10D
            A4DFD9EA743BE2315E62DB5CB71342E0C05CFB49452E939CA3EF158229407660
            3B936DEDD21B4E1B73491540BCC3D8FE7C19BC44809008106B9CC6769E6E2704
            4F80D81A8891A7D91E659B57FC2A022640003EDFAD91A8A1A992A7626DC8F69A
            6E273CC8B56C13743B2104126448BAA5C86570B3716FB64EDDCE1B044B806CCE
            2F22A5EE16E5369B269E203555ECD7C4F68B00495F460448D1DCC9B69F6E2704
            CF81919027D9EE622B62A70EA0000108446FECC9E7D326352A5279A000D664DD
            4E7890C34905FB0A820E50B410378B8A8947FC9C6D27B6EF8B58C61982214056
            2535F2E4D7F8B945A482E3EFC8DC4E112019CB8800299A77D8D6D1ED84E06910
            C8883B6D53A860B69F800A104CBFC2671B7B13D5D456E248C815A4B2B408E96C
            C2F68A6E278440B33EDB736C3D8A5806A3DDE810BFA4D5F3CA1620C81A8894BA
            C716F72D9EE2415253AE7EC9B59D2240329611015214F8F5FF60EBA5DB11C117
            FCC0760DDBCD9457880454800023289D3FDFC422A4AAA6D282D21174B8956E27
            3C0686BA06934AF020083A5999ED45B641452E87E0F4BBB4795D9902A48154A7
            1DA306FD1C68353740728D53439953FC4480A4BC2E02A45C3034F8A96E2704DF
            81A17BC40DDD99FD56800508C0C847358B8F9E7DCDA6A81811F233F92F4DA4D3
            A0DAB4640513BC02AA67438414532B04E02EFD255A3CAE3C0182A2919348FD16
            7EE531B6A3D86666358D089094D74580948B64C012CA611ADBE96C6F245F0AB8
            00011021F5DD89BAF754EBF0BF08419A4814DBF35B655EA7C1DC7BBFCEEB162A
            1364AB7B9D547AFD62B892ED38D7BDAD1C01B229FF7F06DBA60EB79893A0B618
            84C7DD799B460448CAEB2240CA0519192ED4ED84E07B50880877D1A222404C20
            421ABAB1F5AC0401B22DDB33BA9DF02038774ED4ED842064C0271D23ADFACA45
            2E772FA93BF8EEE17F0182918E73D9F674A5BD9C03096726705BCCE8B2694480
            A4BC2E02A45C2403966017988E329E0FB7574580982033168A14623424E2EBCC
            58B8337AB96E273C083A6BF7EA76421072808074A4CD5EADC8E530856B6B326E
            26B9807F054813A9E072DC806870A5AD9C01B19CC773D35F9FAB2D4480F84E80
            3C4F3EE25DF267311CC1BBE0847C619AC008AA003196E7BFDD7BA9CC58FE1D09
            B98DED40DD4E789035D83ED6ED8420E4A1995486B662450896417ADF858E7BE8
            4F018294E4A89F566CAC8DD798C67628DBB7F9B2798900F19B0039752AF984EE
            A4024BFBEA7644A8381E611BCBB6C478165401023015AB8ACF143DFB25D7ED3F
            DE625B4FB7131E0375721094BF48B72382D005B8BE7F44C5279040AD10141F5D
            E0A877FE1220EBF07760DAE5668EB6893BA81B852622404480B8CD18B64F743B
            21542C5F90BA8BF663A00508C0FAEA1A54A142FF65C6C27CF21F496E5464F236
            DBDF753B21081618492A26647091CB7DC5B601DB3CC73CF3870019462AEBE3FE
            8EB5837BA0A6D791DC56EFA4BE2802A45204C829CF914FD8991D7F44B7134245
            836257DBF359E04DF534A002046024A4AE9BCA8C65C4C87874FBB35993D4454B
            4807B5132AA143220483D16C9F919AF9500CDF912A74E84CAD1BEF0B10D4F240
            907931451EBD4A22D399D5828A2240448038C5A96C17E876420804C8A2F45CA0
            050840207A63335143133FEED4BDA556D98B24D03A1769531804C107FC8D54DC
            67B127352418C1742CFB45887705C8766CE7B3AD6EFB36BB0FA6DA8F27554C56
            6DB208101201A217DCC11BABDB0921306CCF876232956B1005483C3B18A662D5
            36A85111EF83BB7FA7EB76C283ECC0F6B46E2704A148D0B12E65BFFD926D23B6
            B9B67A13ED4D54F3032D68DE936A622A25936601825819088F4AE91BA1A60746
            71D2A6D18900511FAA4001F22CF904CC615E57B71342A0601162D69308A40031
            B71BD6D4CC17DE3A2542ECFE0E7B41B1BD9D743BE14150E8ED6BDD4E780F4FEF
            CB82E200B6DB4B580E717D6B91D209F610ED4F7BD73F4E77F798448BF9B48B5B
            321A05C889A48A0956C2742BBE8019D3AD6EC9B9C922404804883E7080FDC0D6
            5FB72342E0D892906B3EA8020460FDD5D5AA4608F06A5B283E655B55B7131EE3
            27520264896E473C47D6855CF028E8689F53C272C888F70F367BE6904687D103
            3D0EA7DD1B5EA13911D5D5D220403625554C774D5BB6493FAF934A9BFE5DDEA6
            1001422240F481BCE092BF5ED001A6F9FE8DCF0C9FE9762427389821085A1739
            27400044484D8D0A4A8F7FA7F7184AEA22D64DB7231EE325B6CD753BE14D42CE
            1D3382DD945ADF671ADBA6B678101D4AB7369D4407757B9AE69933525D1420C8
            0A763155CE742B702E6FE799853E2402447DA8F204C8C9CF900FD89954AD0641
            D001B263E10EF21FE4B57E374E1611D6486DADCE77A4227CC56DE8CEDDFB46F5
            D87B60CEF7ABBA9DF020D7B11DADDB892C627DD86A757BA12E9E5573F84198D2
            3A15821779835496AB6241FF61D7B2BF5D9F00398C54AC479FB2B7C11B4C673B
            88ED652BB3204580A80F8900D103824ACFD5ED8410683E24CC27F6A200E95842
            D4D9E6CE74128C7C3434AA3A21DE0B4A3F9CED06DD4E7810745E6ED6ED84823B
            F9B11E6C3D69A5DA7768F9AAF9B438A6AFD3DF40115A106AA0573B59BB8620E2
            314B4D448887692215605E6CA1427023DB11657DBBFB020471AF48475B49357C
            90500881E6F353B6B3EBA61001422240F4711FDB9EBA9D1002CFDD7CE6DB4FB7
            1369E06401F10111E29600A1285137EE44D6D69B22C4335358AE653B4AB7131E
            04D34FA6E976C298861FEDCFBB4B94A6349D45631B5E5473E8358AFAF8F5F3EC
            D6036952EB697CEDFC554488F7C1946CDC102AE547C2CDCCF34BFE66F70448A3
            3935E9241BDACB2B603AF304CABC19220224C002E4245F0890F748E5041704DD
            1CCE87E84DBA9D5098278EB6163525CAADB9EC4665F490CA8C859395772AA5BF
            C0B6856E273C462BDB726C33F5B9808B28EF9F11D496EBA0E77B8DA52D1BBEA0
            367E69494C6F571F9E35F0AEDCC04E9CDD628A90EA5FF85516F52242BCCC1E6C
            F797B8EC3E546AAD207704C83F498D7A2C6D535B7901C4F0EECF978D4FB31BA2
            F0C22240D4872A5080783E353CE63C2203562FDD8E0882C90A7C987EA3DB09E3
            408F8689DA5BD599D5CD8108888EAA6A33289DBC10948EABC6F76CC3753BE231
            305D6565BD2EF0BE1119C9BFD03BF4618F33698DDA5F8DCE1BF6182F8C9DA11F
            D9C88E74E3C3E9BC96FDE88CD6B378DF6611121211E2719009EAF81297DD98ED
            B5E216E13D363A92AE6B9C4847767FC4090182696597B3EDE64C73690323D313
            D446E76A88C22B1001A23E547902E4C4A7C8E3ACCD0EBFABDB094148E16B3E53
            ACA8DB09E32414EE20EA68CD3801BA04A65F55F3C9BAB147B25E883E70B7F07B
            9D0E7894C7D976D4F6EDB8D68447D34AF52FD017BD2618CF6745D465D70BE223
            4EBA08D99745C8D93212E20F5E2125268A05F3EC56629B617D912A2371C2034D
            C71A69786D16208790CA70D5DBE9067311D4F640A0F983C98DCED51085572402
            447D480488FBE06EC08365AF4510ECE552D23D3F1707727BBBCA82A52B9528D2
            F3D677636B508FF5814ADF4FEA74C0A3207947C13497F68360F3EEBC6F0EA7BF
            373C436FF63AD6787516B239EB6E913CA03FD9644EC74A8E84484C88C7C10C09
            DC7828A5E3FE2DDB2A64B54648AC27F71767D0DC9E7B1AD3F6DACC5E70990204
            37B290A56E33575BCD795E2695327946FA46E76A88C22B1301A23E2402C47DC6
            B1DDA1DB0941C8268660C84FCB5E4D29E02046DC47FB127DE243B5811AF9A8E7
            CE665DBD4E117232DB451A1BC2ABEC4D2A89878BB0F88822C56E1D5DDDE3229A
            D0FDBFC6AB5E161F715245C8392DFBD359ADACDDAA66AA0C592242BC0A3AEFFF
            2B7159CC41DFC1D22763CDDC5F9C6EA7004171C58984646C95C525A4CEC73936
            DAE26B991F110142152A403C7FD3109D8A93CB5E8B20D80FC4C76A5ABED91020
            9D6A04447721B5F8D42B64C6425C889EA074DCA418A7B7213CC95AA43206B904
            E6C9F7E33FDDE8BEE62369CFC6D7A9837BF50B62DE171F7152A7639DD3328E45
            08F713AB7F25356B474488474166AB89252F1B8B9E5EF053481F5DFD3BFDD9BC
            2B35F3FED15ABA005987ED2AAAACD4BA602EDB217C397A34EF274480988800F1
            8B008183D6EE500882FBA0F684FB59B1BC2440805185BD4A15294C64C672D5AF
            B749E5CC17922C601B466A2EB6C39899AEA283F86F3B3DD47C32EDDAFD2D5A10
            561D7A0FECA1456F0DEE727737A6638DA5335A27494C4816DA134F64B8137B93
            4AEFD4A32EC535F9DFC68E3C8255F40FB4B0F78E461775496902E442B6537437
            9503A000ECBE6CBF7479391201622202C42F0204F33497D5ED8420E401733306
            B0B5B8FAAD46FCC71277D3EF16C2C88CC56799861E6E67C662D543BFB1F5D4DD
            041E03E9CBD771E7AB549ADD7E756FD057BD0EA37E7C5D9D1F312AC6F84E7CA4
            6C516224E4FC967DE87423301D232122428C738ED70A91C66243F93F64CCAC2F
            61690480E711066125AC439DF46AF381B451DD37342F6590D7A200D992D46C8E
            3575379303A4B59D08101120A60769CBE61620273C411E864F28F43305FE6C2F
            789CABD9FEEDDAB71917FFB077463F528108A9AD23AAEBE66666AC35C8D56946
            BE610ADB018E7E4308F9741BB88F368206D4BF463FF5196FC44FCC35FBA61EDB
            3B8B263526E4FCD67DE9F49649664C4840A76385CCD4DF88F5F2DA8F6B9C6A62
            A8F1714F114BA13ECE783E8F3E937B855195423AB490DEEDB507ADDDF02BCD09
            AB77E3BF7E0101821E2BA687959A2ED8CBE0A6DB38B687535F14012202C4F420
            6D593F0A907282CB04C14D86B0FDEECA3719A31F6DEA0EA4D704083044488312
            22EE0810045AFF47F7667B106469BBD4B9D547D4BCF868334D6ABA8ACE68BAC7
            B80EF921D8BCC8AD4C8A9096B1743AA6630535301DC733CE3B5E3CF7C43B51B1
            183AC4BB5858E201DE8623D9E6E4D850B52E8C7CD47C496FF79848EBD6FD4C73
            22D9BF781702044551AF275508B4D2400D15DCDCF821F30D112022404C0FD296
            F5A30041F19AAB753B210816B899ED30C7BF0527874898A8A3CD7B1D8054D041
            69E8C617EF7A37A66A9CC7769AEE4DF620FF6273E804CF2A23DA9BAD175DD73C
            918EECF9B4F133CFA930F1112767B1C22006A687DBC97B431F59F4E29E1C7E9C
            C63CEF23EDEEB17CFEBCDE3887669D474DF1115E9AB6EAF6304D6D3ECD783A3B
            92E82EA67F3ABB39EA4865823A4677433804D2061F9DEF4D112022404C0FD296
            CD2D408E7F9CBC4BE8065241BE82E075302B1855B8673AFE4D9D6DE614080F77
            048CA0F490AA1182B8106747421E61DB59F7267B101467FCD1F6B58610903BC0
            B89ADFDC7C2E8D6F7A8E1671E7AC33E683AE69194084743703D393232101A813
            82E317B166FE101F26B15DB897FA70C66BF8EF433E2F1DC8DBF149427CA49D47
            51BFA689FF2C43DB74FF0F3DDB7CAAF1EAEC686EF161AC35BD49501411FD9695
            75B7800360F2D9C16C7776F521112022404C0FD296F5A10029B9CAA920E8A0CB
            3B43E58303973B021D1DBAB7D31A31F34E6243776783D243A16FA832A7399403
            82F29722258C6D84FB20E1917C8DFE8CA6F7D99F46D6102D8CA89E895FBAA6E5
            902A422E6ADD9B4E6D3997AFB7BFF0C65768603AC447B8538DBA7A71DA5557C4
            624807BB53CA2BD7B2FF13D436A4888FC43685550AE950842EEA3E994EEA7EB7
            F156A12985299DDA4A2E19F025DB1E6C9F17FAA008101120A60769CBE61620C7
            3D461E05C73C2EA2FD753B220816412F048913E63AB276230014B79A3D187C9E
            0FC48354F3A15CD7E09400410632E447ADD3BDA91EE379B6ADED5B1DBADE7C61
            EE1CCD2DFD21CDED37967AF3CF3A2F9C98B012188CE9586CDDAAE322E41CDEC7
            31F05981232138663B96A8C0736324D327BF343A6EB150333F9A4F4A84EFCEE7
            CC479282235380604746FD9A5A7ABAE7A1B45DF70FA99D7FE88516EAD7709320
            F52F52B18FD1BDD90E713FA9AAE64BAC7C5804880810D383B465FD26405660FB
            4AB713825024484778B1636B87F8F01B8608A95595D2ED17219BB0BDAC7B133D
            888DA3710836EF6E049BFFBDE135FA6FAF9368205F3767452A33DEC3628B2462
            422E68DD974E6B39BBB202D38D4C7B7CDCB62F8ABFA0DBA3D288C536E1DF631E
            6F4FC694AB54011251353E421D34B5E781B455C367340F71F6214BBF24AA999F
            A37B331DE478EE345F51CC0222404480981EA42DEB37018239DD8FE87642108A
            643ADB68DBD78A8336DCA1A642847CD8C189A7E7ADAD571D1BFB184F2A018090
            CE116C3796BF1A049BF7E4FDAE3F9DDD7C219DD97C9FF152A565BA2A85541172
            61CB589A88C0F4AABFF8F844A7DDA71DF6380901821A963E1EE38A991DB854F1
            911020E6585694C547DDFBF46AE379B451FD97C9FA355D6FF24AA4463D36D2BD
            890EC13B32EDC736B5D8412F112022404C0FD296F59B0099482A7FB620F88D6D
            D99EB3758DB8904280F8B93300DF310A12AA352BA5DB02B2E44DD0BD651E04B1
            73AF95B50623D8BC1FF7C6EAE9A25E57D1C93DEFA725115501DAAF7BA0DD1831
            2130EE475CDABA2F9DD48ACCC72CB4AB50BECAC7C76AC50B10DEB6D84063B38E
            EEF6005DD2745576FD9AFC9B8CF3CD55FE6D9482BCC1B627DBAF46138A00319F
            8B00C9FA412A5880A098D03EBA9D10841278842F70BBDAB6361CB09D9D66A7DD
            C7D7BCF8F42BC483D897190B758236D3BD691E03C3648845FAABE43584787FEB
            1C4E5433833EEFBB1FAD5CD7462D51253EAA4B5E6965823E6BB7901A0DF93ADC
            44672F399EEE6FDF97DB70B11A1131F0D3711B531DAA4833FFE02DEA7915EF0F
            A105E4BBE965390548D4AC6CDE4EF7369F457B35BE421D7CC42CC88CF7C8FEC9
            50EB6932DBF6BA37CB41B2A66E8A00110192DD5E760990633D3BCBE913AADCA0
            2EA1B2C150C5405201906582A3962F98E1B0EE6DB287787A5E8890F2C1950269
            6687E9DE2C8FF105DB2AA52D8AEE345F143B46F16FF43DFDD27F171A56C73B72
            A7392D45F7967994F818416FB35F704FDB9634BE7D3F5AD2B9161FC273CD6959
            5E936E662727DA47FD4D74EBAA0DC13132F40135762E3284D5BB91BEBC4F202C
            B33DFFAA62E6D4A65C54B37831328565B681C33582D204085297730732329A7A
            D7BF46DFF63E94FAB13B0B22CA8B029DD7BDD8AE61EBE7ACC35AC174D65B325F
            1401220224BBBD2A5B80F42295D9A649B723825022394FE6C5831CFC1530FA91
            0A3A05557CE2ADA92D774DE811213D6485348C6DFC974AAA8B826929E8A0F5A6
            C1F51FD0EB7D26D068161FB3C212EF6115746421AD9BAAD50CA633961C4D172C
            19CBAFF450E97AB54D67327FC118FF8DF5357D6837460136AC799BD0E9DAA9E6
            7F34A67A3ACD89D652B7D012DAB4E6336AE08FD5B2FDC0FBC0EB1DEB5253A825
            E7DA9BF834F544DBDFE985F00A342CB428F13AFA1C58FEB98ED588C27D8DEF4B
            03C90D8C4E58CA6868F57C23209C62A91DBC30E591095D931020501983091DC8
            89CD37D0994D77507DE694AB4CD48B48787625DB211A7E34B740B6D1DD494DBD
            CA4204880890ECF6AA6C01B21EDB5BBA9D10843278916DCBF25661A6DD8D7692
            EFA63E14C210217CA2AF2D2B1E0453219ED2BD291EE44252317445608A8FCEA5
            E8E8E6EBE99A3E9325D8BC0CD06DC0C8013AB9AF772C4BFF6C9D44F3C363F8AA
            DB624E65725284E078AA531DF8586F3614039DADDE0A2DA6BD6A5E63FF6A69FB
            9AA9B45CF50C161D330DD194E9520B6F4434A6BAFD4DFC5E4DA153502C5B2218
            6322FCDFFBAC27FE8C2ECBC246099878B7ECA1B6EDE9A7C8006EAB36AAE6CE16
            BA6377B7AFADEA71A48EB644B01DF0D2540C552C72AA901536DEF18B9A232C99
            3E45D567C243F95CF307DDCDFBF6BE4DCF5BDBB743B421FF7F1B55768DA19748
            8DEEE49DAE2902440448767BD925408EC92816EA0DC6F206DDA5DB094128035C
            29310D6B4E698BE3C48379D81DE645B4C204487C136BB90B5055536A3CC8896C
            97E8DE0C0FB237DB7DD63F8E42737DB99336848EED7D395DD1EB56EA88AA1A08
            5E9B34E437B057F7310FDD3BDBB7A4712D67285160C486D8796301E708EEA047
            7BF0FAFBF06A67191DF26DAADFA6D5AB7FA7CD6A1EA3C1A1DF09A58A56C9E875
            2F8AAA4292717F4B25EF042C7EB1571559D65CDF76A2F278236F4D8BB1084650
            1E6BDB85BE8F0CA59EA1252C56627455FB9AD4161E610A3A38CE82AB73A8F925
            312546AAF9BD08CE2D3DB9DFF839CDEC77200DE1BEE5FCB0A5E984414882731D
            3742C154DD2240448064B757650B904AAE282A04072451B8B7B44571B4465401
            B0FC97F60A20A6A662952642709362ACEE2DF0206BB17D68E99346B03977DCAA
            E7D06DCDD7D0814D2F523BF7CE1689F8B00D1CC1184140A0FA1F7C488F6BBD82
            A6B66FCBFBFC626E7FDC9F285584C454E71AD398624DBC9A3F59687C401B557F
            C1A2E31D5AABFA231AC4ABAE35C3C8E2CC75A41E687E8AA9990AD7104793B323
            696A0BFC9DC38DFA076F13A688D587205858A42CD993373344FDAA3AE9E58E65
            E9B1F6B58CC28227373E4A1735DF69ACE6AF68A27B998F51A4A6CE6EEE6E2BB9
            CE6184F4E5167E1B11202240B2DBABB205C833A452990AF6328BD41DF93F49DD
            7E03D82D06B1F5661BACDBC10AE33F6CFB96BCB4213EE273C62B558090DAC6DA
            920A99BFCBB6B66EEF3D068E6FD4A159D8F5C7CCFDAA6304B7FD5FF465FFED68
            C56E448B3B708F5CC487DDC43B4C7DCCFEC89D4BB6A7714B4EE4637C209F8131
            05DFCA6888316468068D57AB15554FA7A36A5EA135F8EFCA55CFD0BA354B12F1
            E461B6B698FA3D758E9F162340AC002DD5644E6F8B5262AC38B59F4631167ABF
            468C896846D14C0C47CF8B16DCAF317288DA1E3D343697D3E0DA8F788F57E36D
            550811202240B2DBCB3601F2107990EFD896D1ED4405804EC82B6C4FF3CF8D60
            DDCF287F662604DBADC6BBDF8AFC7707B6ADD9BAE9DE009F03C187D48D45A6B0
            0AA96957B1D419D5152E4070D2AB2EAADB8B4415DFB3F5D5EDBDC740ECDCFA5D
            7F0417B51A15145CF7357DDE773CADCCD7D5D961111E4E8396C75DFBEE6C33F9
            F03EA4F5527AB66333D5D108C5676B86523E6DCE97326222F871683EAD5CFD19
            1D58FB3F5ABEEA571A53FD162D656A1132A7CD7592B7CE16760B90E48A73BF8C
            B3264645E217AFD6983A0177E1067A95A82774A8AE367209641B407AF8998957
            4480980F4580E81120133C274046B07D4D2A9988501A68BF3BF8B7C63CF05FD4
            4B56CF2289437B343FC4F416CC11954E5EE9FC9DD489BF386299E929BDD4A570
            82541192316724379866F4BE6EAF3DC8DDA42A18E7C1ECD4768CA03D7ADE4DF7
            F7BDD278757644C4875BA48D8630AF772E4F1BB59CC3BDE435F8473047431070
            6D14CA5B683C1F5EFD251D5EFB1A6D5D339505C8EF54679E0E3A6266B03879F7
            0CE1B6002992D5494DE55CD5ADF6D004B6F140CACC7B2C02C47C280244930079
            903CC6166C2FE876C2A7FCC1762EFFB437134E34F90EB62E89653E1CC00F2E23
            996B5F2A0894BEACA825A266E7BBA4DFCFE7182204777D0B0A10646E2931BEA6
            A24129EE4B73BF1556C5E53A87D37EBD26D39DFDAE3606DAE6149E9A2238407C
            7CA367951212A7B74EA04BDB8E2463DFAFFE9176AF7E8F76AF9D4ACB577D454B
            57CF376248C0C268D143AA5AF1B000398AD4C8470566F848E374CA17502F02C4
            7C28024404880227856B753BE143D0193B866D766247B14780C41F1CC476ABEE
            8DF4218FB1ED64F9D308C48E0763075180189B1ACA7182CD02A9664FD1EDAA07
            416AE267B25F461D8401DCAEAD4696AB637B3E6648BCB9223EB40331D1CFBC2E
            3FDEBE26FD12194CBBD43D4D83E387404C250540525A3FF6943D28407A928AF5
            D84B477BB80866E3ED41AA2E506E4480980F45808800514CA6CA2EFAE304B86D
            7643F2A92302046C466A74CA8FD7415D600ADCD2940CFAEF1A11208AAA8253B1
            20ECFEA5DB4D8F81E9152BB17D9BFE72D4141F617A63E07EB47ED3EFD4DAA1A6
            EE488D0F6F801F0EBF452F1CE688E3605BECF1A95556F19800D998ED4EB6919A
            9AC32D7E2075E3EBB32E3F2502C47C2802448F0039FA01F218089ADE58B7133E
            0137CF76E21F34A3189B6302049D6304A83FA97BC37D06E6197F62E993A9A968
            832C404055DE7BF338957DCEB6A26E173DC60C5245D34CB16BEE4BE161DC620B
            E9ED81E368DDEE7FD05CF3DD00EE51DE27462596C4F12E1E122041A91B84E282
            08369F57F0932240CC8722404480A84C4CB87B3744B7233EE11F84747AF97614
            670408FE3F95ED02DD1BEF2330D47F7FC14F65F63C822E404055CEC136A48B9E
            4EC9AB81A078916DCBE4D3284B9191B44EE3547AA4EF5934AC86686E24B07B92
            3F100152C48A2D7F1229E631B36257DD6DE102A8DC7EB0E54F8B00311F8A0011
            0142B40A151A3214E2E064FA88F1C80D01927D557C8FED6FBA1BC1272008FDC4
            2E3F91ABD72102C4DCEC2C1102E13D4DB76B1EE41A527160640C8E768EA2318D
            2FD32783261AED2869767D80089022566CE9531B91CA003552773BB8C06954EC
            8D411120E643112022408876A4AE02A6843893D8CE4E3C7352801857C39C57C4
            35D93ED0DD103EE179527555F213CB31DB5B0448CAA6A76DFF116CD7EB76CB83
            2076EE56D58B6D32FE7C3764075A86AF99B3C212EFE10B448014B1E2829F388E
            ED72DDDBEF0208214271C1478B5E520488F95004882601527866888B9C49A91D
            6B21171F91EAFCA763FCA8C99D2FF54F8E275D104B7E1EB528625D8641221664
            07DD0DE20330AD7065CA973D3316FF4F044897244F8848B870B86E773CC826A4
            62E88CD18F1BFA9F4887F77A8566758AF8F00D22408A5871DE7750436C0AA90C
            50950E52EF23F3DD87252D2D02C47C2802448F0039CA530204CE04E1A4510ECB
            5356961B4AD991528448A902043B4A84FF462285AE1E6BB3BDABBB417C4007A9
            E0E09F72BF9D22FA521101924E725F44ACC3E6BADDF1184BC8986612FB8BC2FD
            F81AFA132D1E7A9051111A752364EFF10922408A5871CE57714DBA87D4F9B6D2
            7987D4AC913F4A5E830810F3A108104D02E43EF21050F16BE876C2C32090EED0
            2E3F819D27BE73963C0202F151B0105CFCF31FF37FABE96E181F80B9C8AF77FD
            11112016F99D6D906E273CC6578414BC31BE78C61AE97F83F6A3CDBAFF4573C3
            B2E7F80A112045AC38EB15045FDF48C118F07B986D1F5237B74A470488F95004
            48D005083255A06642A36E473C0AE6790EA382773B62EA6008F13938942A22AC
            9C45780F89718F251AB6F8798393D92ED2DD383E607F52C1905D609B00C1B184
            C31D09577BB13553F6F42F9CF970F19A43FE2937D046AACEC57BBA1DF1208FF0
            C1BB2B52EE6ED8F812BD36E42C5AD069FCB0B862A2F05A44B7831960FF439A50
            3F15F5761E112045AC38EDD9CD6CE3756FAB4B5C492ABEA57C4480980F4580E8
            1120477A4680AC436A4851C8CDEDA4AA9117065730D450A8C6CE9D677A4F26D8
            8130EA1129BA3FB002A9BBAF42D74CA2CCF8A64267CBDC274B9C014792AA8131
            8254CAEAA5488D080C34DF87E0C0E18E1FB389AD3B6567120899EF2F24FF0810
            082674A6E5264536E7F2017F2645FAD2E47E93E890E657E359AF50F119D35ABD
            2640B07F3E448546748386089022566CFC3F92ED5EB6BFEBDE4E973896ED2ADB
            D62602C47C2802449300B9973CC201A43AD9426ED6A26202CD7015ABAE21AAE1
            1D3C9A23C0391563E7E1CF7474AAE542E673EBA0EAEA68DD0DE471B205645707
            78F2E9B2A40A7322F607F39B11CCDE5FF7C6089E632F8AD5DC4FD48D3E1CBC03
            ADC1D7C9794A72E0E6C00ABA9DCB0346DF209C6514C4247FD241FFE2A000D986
            94F8E8AD7B1B5D003789907ADFDE2CA12240CC872240822E40902ECF9E61C5CA
            0355B4572F7E318C84D47455515AED38513EB78553C547D1DC42C5143F0A26CF
            B26D977816CA7B26C634BB0DD8B660DB90BCDB7914BCC51A146BF898AA5AE9E3
            81FBD06A752C40A2C6F4BB99A446C0BCCABA24892C1254DAE8077048809CC176
            8EEE6D73893F09D92643F4BEED6B1601623E140112740122295DF373029594CF
            DC3C4C6BEA5445E968C6D5CD101F6CE1B672C407404AD41B743792C741276BDD
            C4B3F4B6C6542A54B0DE9954913D2F771805EFB18077A841141ED4B64B8FA7E9
            E10197C5473FFC30ADF524B64B753BE1052A517C009B0508CE8D77933A570601
            CC7A40A6AB5F1C99242B02C47C280224E802E447B651BA9DF020D80347B2FD5C
            FA2A426A3A56750E1112E9542320E55D25D0797E5E7743799C9F48A58654594B
            92EDBD1EDB0BA4623504A11494B80D0FA1F51A5FA2B7069D43F323C689631CBF
            7E876EE70AF018DB4EBA9DF00222400A8204140F929A861A04704DFD17A9E41B
            CE44E98900311F8A00D123408EB8873C0002697FA1B45F543079957FB07F94B5
            06880EEC54F5F5C9E79896D5B1841F17ACF56185E194B7C6856082606FC473FC
            651C8455895D7D53B697743B27F81A1619A10351FFE3B4DE93E9BC3E0FC505C8
            25FCDE89BA9D2B00E24070FE2F2F9D68052002A44B7661FB0F257B8095CE1452
            71B1494480247DCAB3AC08101120A5B035DB73BA9DF028254EBFCA20668A90DA
            3A951DABB39328DC61D7D50147ECAF6C03F43695A74110E1326CD38D67C91308
            5EFB9A12672241289A93F8A47F29457AD06B43F6A40DBB2FA6792AACFB09B67F
            EA76CE0248B2F09A6E277452A9E203D87089399BED4CDDDBE122486B7F6AD6AB
            2240923EE559560488DF04C8E19E1020C7B05FF6A596AB2C1084FC8D2D6B8A45
            9341E9F6898F381FB0ADA9A17DFCC4AA6C9F1B8F922710A4CE451631492D2B94
            CA76AC6F9FA5F0607A68D051B46BCFAF695EA7F1FA0C52F1455EE774B6F3753B
            A1131120394141C1FB498D7E0485A3D8AECFF98E0890A44F799615012202A414
            825444A818BE24DBE7BBC6D4D19BB2C3D90446B0B676A95DFC0A72D5BF6D3C0A
            250E449CED90A94852EB0AA5328AA23D6750ED74FA75F0041AC027FAC531635A
            1346259DE8B6D80DCE1DDBEA7642272240B2C08D3754FB0E4ABC0780D07A34EF
            BB2240923EE559560488EF04C8DDE40130FCBEA16E273C08B2C39CA4DB098BE0
            6211A43B55A580589E578D4738C84389A31E1DC521BA9D137C09F69D51141918
            5EA5DB5BF4D99033E219B0B6629BAADB398B2C203512D8AEDB111D54B2F80025
            0890ED498D7C042531C762525325A775F9291120499FF22C2B02C46F02E430ED
            02A4867DFA83FFF6D5ED8807C15D41BFC4C66047DA57B7131E07E9141F371EA5
            1FDC1F5149755E04C1C894B33545FAD3F8E607E9E6FEB7D38288117034815FBF
            5AB7734510D83810112069A01658F9318FFEE137525924BF2CF8491120499FF2
            2C2B02440448B16088F573DD4E789025A4A6E5B4E876C42288E13946B7131E27
            5D80248F4FA4515D5BB773822FB98EED680A0FA027871C4E3BF4F8311EFF7123
            DB61BA9D2B82896C17EA7642072240124C663B44B7BF2EF20529F1F1BBA54F8B
            0049FA9467591120BE1320779166306DE761DD4E7810D486D84AB71345700DA1
            232474050A6D3E6D3C4AC680808FD956D3ED9CE04B0EA350F466EA184E370F3C
            9DC6F77983E6A984B67E9BD68AE962DBE876C26D2A5D7C000B0204D913FFCBB6
            BE6E5F5DE465B6FF2335FDCA1A2240923EE559560488089062398DED3CDD4E78
            10B4CB05BA9D280211208519CBA6B23E180761E20085D8DC42B773822FD980A2
            8D6F52F55CFA7AE8C1B41C5F3BE7478DEC41B8ABDA4FB77345803810C441B5EA
            76C44D4480D0DF4815A31CAADB4F1779806DCFA297120192F429CFB222404480
            140B82CDF6D0ED8407F1DB9C681120853994D43483CC33EA236C3BEB764EF01D
            E8AC8FA6709F3F8774FB947E596A22B546883AD5B4D6CFC8992E8B9324933404
            8020880FD04587747736744082525C10DC4AA54E33130192F429CFB22240FC26
            400EBD93B4129200DC1C6058763015333CAB1F1120853998ED36E351FA0808E2
            42FE4FB77382EF80C81843915E7C5DFC86160D3BD1B89CB5C50C31FB886EE74A
            20507120011720A750807E6B938BCDED2E0D1120499FF22C2B0244044831F461
            FB8982936ECF2AD3D836D5ED44915CC9F66FDD4E781C1120829D60DEFCCED439
            98CE1D70059DDEEF599ADF695C9C5145D94FD337E3203E6A07DD4EB845800508
            46010ED2ED97CB9C40E566F7120192F429CFB222407C2740A6904636607B5DA7
            031E059DF9E3743B5124184A1FABDB098F83629BB7188FD20508E640FF4BB773
            82EF388F287A06758CA64B079D4327F4FB1FCDED30F6AA7BF9BDBD743B570248
            C73E8AAD4DB7234E1314F10152FA313D499DEBFC7673AD5C0E609B52F65A4480
            247DCAB3AC08101120C5B03FD97160561EBB91FF3283E16EEC8EBA9DF03807B2
            DD613C12012294CFEE146B7808511F6F0FDB8FD66D88C68B10FA39AB1A6E4ABD
            A9DB09A709A0005991ED2942CC52B0E8B2BA796A37366A5A5E4480247DCAB3AC
            08101120C5804ADF27E874C083608F5B8EED7BDD8E140977846857DD4E789C8C
            42848903141DAEBFEB764EF01D6B52B4C747543B93162F75B4710D688B19055D
            7F2475B7D98F9CC876996E279C2448E203F0A90EE9E4717DF0EB3E590AEDA4D2
            4A4FCBF56698AD77888C74759DE66B46B737D4F50A3B63E97DBD90F95A984AD4
            272240CC872240F40890F1534823CF90AAF62D24F9816D79B6886E478A44B299
            1506711E4F1A8FD20B114A2206A158FE625B96A24D0BA96616FD36EC70EAC3D7
            B296A82164FD3C8280E079B991513960FAD1EDBA9D7019A494DE9C4FF11FE47A
            1362A13F77C6FE8A12EDD57239CDA2EE14E59EE9EA55336997BAE72912C3C53F
            D9C18C722715978A4DEB5E37444B478A808578E91DEFDF66C29F6B8D25BAB8C6
            DFF698AA709CE82E8B00311F8A00D12440EE204DA0E5BF225C4485545460A9FF
            78916D73DD4E789C9D484DB7CA1C01914AE842B1BC4528DC161E4247F5B99DAE
            1D703FCD0B1B17E6FDF875AD9945CAE417B6A529796358F02F67B14DD2ED84CB
            CC245540F8CB5C1D71ECD403AA8C1B05D4B4E83E5623EBF36560AEF96E3E2581
            D7F8C8AEF99C5664F9B020A563F75BAC071D54F3016D56FB292D8825AF290BA2
            3D69C3DA69B466CD4C5A64F6D6213E86F2AAAA53BF021F8FAABB9DC6B7AB5154
            5A9C225C44808800C96E2FFF0B10CC05FD86D428A490E46CF2E7495BA6111566
            7B52A37E99024446408462B99D2F150751C7289A38E00A3A7FC013344705A063
            FAD2F1BA9D2B131C0B9FE87642280B8C7A1CA0DB0997C1EC858D481501CDEA34
            C7473E5AB84FD9B4F001EEF5F36E5E85D992D5D6D61EEBC9569DD1A966F5106B
            60AB4B7F3DC61DE5AA9F79D5B392BD6E5E7EA79AF758AC7C45F3A3D5EC4F2DD5
            863AE95F757751337774D5E848888655C5A8375C42DF378738C014C2795D4C23
            14012202C4F4206DD9DC02E4106DA3A3B84B3055D7977B965028394DC76E9C9D
            7CFC36DBBA4E7E4105B03EA93BD7E614ACC419E857B641BA9D137CC571BC035D
            49E10174F9804BE8B83ED3686ED878BD12A6B51ECE76936E2784926824358ABF
            A56E475C06D3AD10F3313BFE426AFF2D213E8C910F161FE135F9CC8F304F8BE2
            A368204CBAF1DFBA94D722FC5A93F97ABC63CB9FABFE85125124B1461A59F31D
            ED5BF3112D8AD5D042FE3957A89E4EDBD73D4A6DB1EED44EDDA957E8375AA926
            CF0CF1905AF5DC58F2CE7224F3FD5CCB14400488FA900810FB40CD882B757DB9
            47C1B18A00F41F753B5224D8A3BE655B46B7231E2799E1272940F0DF6F240244
            288EED28DAED59AA6AA5EF963A9046F335737EB462A6B5620AD938DD4E084583
            590D4FB0ADACDB11977983D4F4E3F6D417E37DB3B8F858CC7DFD1E101F9135B8
            8F86C112A7C44791600425DE590CB1B7D14635DA121729A136FE33CFECBDD719
            53C6C6D6BDC3EF866871AC9EFA845A698FBAA7A8813F372FD69B9665F1B2524D
            1B45E301F319FDD885DC0E35FC1A625D3A89BA1E31C968CB84CB8937323E97B5
            60C6722240D29709B000096231A242E096C80AE4BF00F47AD3F761BA1DF138AB
            B07D613C4A9E40508C733A052B438C501EE8D3ACC802E47B08906F871F48CB70
            BF605E8446F2EBDF91FFA7B57E4D2A6DABE01FD623253EFAEB76C4655E2035B5
            363B66C9ECD7613A534BC48CF988AC59DCB42BED981DE098794A096164853BE8
            D13E29DBC9AFB108313E1BEBCE9BF613ED5CF335FD1CEB412B56FD49BBD6BFC0
            62A48A16C49A69ADDA376995DAB9B408234121F3326886B8B4993988F114C1F3
            514A76794580A80F8900B18F57D836D6F5E51EC5AF95809B49DDC5EFAEDB118F
            83E05A35BA953CB8972225DEEA4A5BA510406610461B3B074576E9FD383D3CF8
            665A1031EE2862DACBF3BA9DB38951E6760ADEE79FA4926B5495BB229F816DDE
            29D71BE836D6F129BE07B7C89B9DCBD306AD9388C26B707F13F79AFC223E8A21
            FED347940889F654C224D11AA4A67ED5FC401B54FF426F447BD3EEFC78A7BAD7
            68360B937E55F369AB7A35231F4BF54313C52F912941F28B6219B5524480A46D
            8B0F05C86DA4812652015B03747CB987398754E610BF3194ED27AACC33AB5D2C
            263545ED4FE359F20482E90A9F91A599B08260808C735B52C7083AA4DF1D3479
            F03D34BBC338ED1FC3AF5FA5DB399BD89BED3EDD4E080519CF76B36E27348042
            C1BBE57A035D4674617BD610DDDDB625EDB7F8463EBBF3E9BF6A26253AB78124
            6AC498A81814488A1A33809ECF5C554BF829066F55F4FBE9F5D3A86FD5429AC7
            42669BFA976974CD97D4CEEF0D47EC891967921A243FDF1429591D10112029AF
            7B51801CAC4580A0D3F5B98E2FF63421DA9D54C12667702E067D55B64F1D5B7B
            65801122C4F7B418CFAA1227900DD95ED3ED9CE02BAEE093C5F1D439904EEA3F
            992E1EF018CD5513402A695AEBD5A4E20405EF12C434BB0082EBB05C6F24C407
            9FDEA7B46F4507B45EC787EA6CB68514BC0122ABA0D5AA55EC49E2A51E2AE317
            DAAC9A2F9D552DC6E726D4BF61FC5DAAFA2FDABE612AB5F2E7EA434B6895BA9F
            13AB821831677565A510160192B18C7E01722B69001DED07747CB187C19E3686
            FC29CC3095EE15DD4E781C8C728C493C4B9E40307DE109DDCE09BEE2608AD51A
            778EDE5B6A3FFA5B37A2B92A6AEC555269402B81F7D8D6D1ED8490971B48652B
            0B1A37B21D91EB0D63DA155B0FEE53DED1B6251D68888F396CA84B987772403F
            4AC99C256412532985E3ED17ED65A61C6EE597E6AA7894501B6D57F705ED54FF
            B6318D6B78EDFCE4E8484805FF87E331252240D29709A80009EA9D93AE406563
            C40374E876A404762135242DE407A31CC998A7E409645FB6BB753B27F80A1619
            55AF53A407BD327C57DAB8BB214030AF01D3202B2508B8C3DC9685BA1D11D240
            EFE17E52371183C664B64373BD912A3EA6B46D4607B4DE60648B2A30F2F138A9
            A9B9FBE8DE307F110F8C875080ACE0468FF4519DF59A9F68B7DAAFE8FB686FDA
            01A2A4DB0B34A6F60BA3F822AA10B49B4BB41BB3414480E81720076911203881
            EDA1E38B3D0CEA68F8B5901F86A36FD4ED84C7798AD4688779672671701ECB4F
            AED0ED9CE01B700D1DC6E26336D5FF4A33861D47436A0859659035EA4BDDCED9
            0C6A45BDA0DB092101623751A36A13DD8E68E05AB609B9DE489F76B58539ED0A
            231F8BA80BF13189D48D5814DC9422B4B61053F12551338530A670552FA0656A
            7EA043BBBD450736DE4CB521D5576E4452AFA8AACBD216ABE3D7D410B2089060
            08908FD956D3F1C51E26EFDD151F7006A9007A213F38D00E311E8542A9C7F2A5
            6C27E8764EF00D10192B53C730DAADEFA3F4E0D0C9F4578711CEB92B39193FA6
            0774D0E4BCE20D50A708C90F8256E303E4DD0F13E283FB91B7B76D490725623E
            BA141F67B39D693E563714641A9603C4CC94C110247C86AC4506B208AD58B588
            F66F7897366D789FD6A97BCFF8998C9A25A4AAD4B7C77AF2E30E1120EE08905B
            9CF8E5BBA237DBEF94FC2505831032D85CE3DCFA1DAD821ED4F9C0C590BC8825
            8B1082296CFBEB764EF00D1019BB23007D5CDF87E88E4177C52BA057E2B4D6E4
            A8A1A01324CF788954B6C3A0711ADB05B9DE48171F5BA5888F2EA75D9DCF3631
            E3B59D49558F179CC40872378543A407F7FDE7D3F0BAEFE9861EF7D298BA4F68
            4E7480F1B78A7FCF708468A1214452726B89004979E85F01B22EA9E946423A28
            66F48C6E274A04F11FBBE876C2E360F4430D3786CCE83805EE2A6EAEDB39C137
            4CE213FCD91469A4E7871F4E5B36CD8D0B904A9CD68A94D5888BEB2C774542C9
            A0C0E0B36CBD743BA2812EC5473CE6438D7C5C6F457C1C4B4606BB2C2E613B59
            F7C6068BF8E808EE8787CD80F6065A9D05C9DE0D1FD0C18D7751EFBAC5C627C3
            C654AD46BE6C87598EF430AFDC2240D2FE962E40263BFA33E7E000366DD50F3D
            4CB2489DFF788724634D21B6237521CF3C7920EB5910A73508A5B1179FB9EFA7
            8EFEF4DF1147D08E3D7F8FA7E0FD882A732E39B6E913DD4E0414DC147B948259
            2415D38ACFCBF546BAF8D8C2141F05B35D6186C00D79DE9BC6B6A9EE0D0E26F8
            356BCC4AEF112548A20D44F55FD3910D1FD1660D9FD246F56F51FFEA3F133A60
            61A417458D3D4004881F0588CC79CF06158A70A7CFD179520E5165FA3F48B723
            1E27D9914A9E3C10D4892AE803753B27F8865529DAED7304577E3AFC485AA59E
            685E849A498D1654E2B4D683D9B414AB0A3841CE6C88188D49B9DE484FB5BB05
            1DD8721D5F010B069C77253E00864D700D68D3BDE10288AAB81163CA5698CFAA
            DFD12AA125B45AED9F747AF37DB442DD27463F3A1CADA6D6685F962D35199D75
            1120A60769CBE6162007BA2E4030AF777BB7BFD4E320D3CB56BA9D2811CC0B46
            7457904BBC16623EDBF2A4522DA79E3C5660FB82A44295600DDC621D4C9D0397
            6CD96B2A3D3FFC7A9AD3619CCF2B795A6B327983E01641AD6E0E269112205964
            C77C5C634EBBC2549DBCA7F0BDD9FE63E17B9101B3528F611F8302223D54ED91
            683D51CD5C5AA3FE073AA5692A6DD9ED35EA5DF35BA2EAE1C2F020EAA47A9614
            5143688463B5D4BF66BA2122E686974DBCAE1001620A10D7CF33E8AC8E74FB4B
            3DCEF56C47E976A24436607B5DB7131E072203D5E2D50857F2E48161F797743B
            27F8061C671B51B83F0D68FC887E1B790E2D8A18F7EB304AE07A309F4B2063E2
            1ABA9D0810A7529EB887006029E0FCD6B6ADE990966BB99F35ABD0C8473199E9
            90CA3EA8A2CF27445551C4482FFEDDF9C45B33932674FB88BA57B5D3DFEAA7D3
            2E3DEE37FAD7EDE1DE140ED55063DD2CFA68F1C6F4DA92317468F343D44E8DBC
            8678A75C04880E0182747333A88B89920105F9C5AFD5ED448920F0F57EDD4E78
            9CA96CDB188FD203D091FD6A8A6EE704DF80D8B98328DC97260DBC99CEEAFF3C
            CD0B1B9DA38BA872835891A67414A9CC8982B39CCB76BA6E273401E17551AE37
            52A75D19E2A3F55A2B01E73B527199ADFC9C863F60608FA856B122D126353252
            B598FEDEFD63DAA9E1733AACE703D4A3E60FBA6DC14174F02CFE496B7FA1D8F0
            5D68616CB40810CD0204D38CA6BAF9853E615BB6E7743B512241BE636695EBD8
            8E361EA50B10A4E53D43B773826F38912F0F976104E4C91147D00E3DFF8807A0
            A338DC0EBA9D7310A4E27D4AB713150E0AC91EA6DB094D7439F281C0AA26EE3C
            DDDABE158B0FA4DA2D38F2F10F5281E5C580442EEBE96E08A1144C9110EE6B88
            92E1DD3FA44155EDF4EEE2758D4C5B3B353F438F0E3C8905C8522240B204C801
            AE0A1074C21CAC75E15BFC9C016B0A491D8B42246BBCA41721ACC4D4A98273A8
            1B15E17E74CF52A7D23EBDBE8D0B904A9FD63A89F2CCCB176C019D80F1BA9DD0
            040A029E9BEB8DC4C807779C6E6FDF920E3202CE0B1619DC88ED652A7E9607E2
            BB86930A48177C4B942882C287D5469D110AF7A1ED1BDFA2A7061D2F0224B700
            B9C9CD5F075F26C38CE9606A014E3C61DD8E9488A4E02D4808D3AFD4C85FEA41
            1DA277F9FFB5757B27F8865114EE39831A7EA43F479C664C0959120DC4B4568C
            F0FC9F6E272A9407D976D3ED84260A573837463E30ED2A1E70DEA5F8403AF5F7
            D8BA95E8CF3AE6F242A5600890374580784480BCC6B6A19B5FE803A6917F7380
            7727D5F9E9AFDB110F0361B922A974BBA90204A953BF23693BC11A33D896A570
            EF30357C47EDA34F3782233A638198D6FA2BA951E20EDD8E5418A8F1B1936E27
            345138E09C3B4CB7B46D43E397407CFC5528DB15B21CBEC1D6B70C9FF661BB57
            77C30836220224B1AC6E01D2C0F63349872B131558EA4F562395A546C8CF0C52
            9DA7A8F12C79504BDB09C58018B16DA9B33F1D31E03EBA7ED0C3343F6CEC5441
            99D62A0509ED03D7E2C7C9BFA9DFCB05091B2EE9EA037D12231FD799E2A3CB91
            0FD4C042A6C33E65FA85D198B374378E6023224012CBE61620E36E74EBA71843
            7201C945C193A1872926CD6050511D47100AA50A902017FA128AE76AB67F53C7
            10BA7BC4C9B46FDFAF684EBB713A0FCAB4D6716C77EA76A2024058C334527527
            8248DE6C5700DDBDBEDC517AB66345DAAEE5193EC07E2F94ED0A0584914A7D19
            1B7CC3F520A8D3E12A1311208965750B100CF53EEAD697F90874E21FD1ED4489
            04396DA3552E649B683C4A172093C8FB77BBBE64FB80ED33B61FD866A7BCD79B
            D4C517371670F1DD982A3B0E413728C6772BB50FA6AB97BA8026F47F87E6AA09
            494199D69ACC2427940A123AA1B3BCBE6E4734711E15C83A58C7A7E726FEBBDC
            E2C9F45D980FAB2A4CDAE8B24EEC5B645FF62ADCA05D5D77230936220224B1AC
            6E01828EEAB965AFA5F240912DBF4EC5C130BE048776CD5E14AF939276408770
            B76B17DDCEE500B7FBFE63DA9B386F145C427D02B51AB633B77703DD1B51816C
            4491C6D7A9760EFD30EADF34A28E6841C4B89BFD13A9292095CE9B24FB5539F4
            637B86829BF4A260B1DFF8E8C7631D2BD14E2D8F723FEA17A2C2A73FC4F1D931
            FA0170836759B6F99ADB4AB00B11208965750B1049399A0D3A7BE8B8CDD5ED48
            09A0F383BBE2C3743BE2715662FBCA78947E4063746145DDCE657029DB656C7F
            254E36210B4BC5B29E6C4F2ABDA56447B38716421C51A4C79F54FF3BCD5BFA44
            AA0F1919B030FA849B17567E25BF8336184A2A5DA9501C034909B8D1BA1DD1C4
            956CC715FA1086871AF9485AB9E526FA32BC3E1F55BF5181D10FF03CDB9636FA
            8A63FA335D0D25D88C0890C4B27904C80D6EFD141F910C2F66F229A960646788
            15BE795D06ABF38EF491935F5001FC414AA0458C67C993C60852755F0A5EDD5C
            E21552D35B522E7C6509903893C8FBD3CCFC0044C61A1469A6AA6EDFD0DC5167
            1B5345588060BEF883BA9D73114C1D7A4BB7133E630829F13142B7239AB88AED
            D8421F4286907E7C367EA46375DAB5E55E3E33CF240BA31FE03EB63D6DF41737
            6F9ED1D15082038800492C9B5B80EC7FBD1B3F03325FE16E790F37BECC47600A
            D38EBA9D289183D96ED1ED84C749A95F9016FF81BA20CFEA76CEE422F6EBD4EC
            976D112010C1D8FEFF9277C4961F418CD8AED43194CE197A159D31F8659ADB6E
            BC7E04A9A925410177B1AFD4ED848F80F8789DD4287B10C134D27DAD7C10C3F9
            DDF95CB72A463F3A59E756A13C97A581451C7F47D8E8F3916CAEDD15161C4604
            4862599D02041937DE74E38B7CC6B56C13743B5122B7927FD307BB05021ECF53
            0FD30408460526E9768E54F6A4C914CA75A1B54D80E0FF7FB0BDC856A37B837D
            CA244225F0B62174EEF0ABE8F441D3E2026477B607743BE72277B3EDA7DB099F
            806957101F76C527F80D1C1796462650A86900F7031F6D1F43BBB4DCC7FD274C
            BDB23C7BE07C8A2719B1878BD94E71B3A104071101925856A70019C776871B5F
            E4334E60BB5CB7132582E93AABE876C2E3A454404F3B613CC1F64FCDBE61E4ED
            71E59BE30204606AC1539AB7D9AF60AAD5C31020672D750D4D1AFC525C8004AD
            96CCE76CABEA76C20760C6016EF805557C1435B300A31F98D2B87CCB2D3423BC
            0E9FF33073D6725895DDC9755088701FB71A4A701811208965750A1074B20B06
            8105104C4F7952B71325800BDB77BA9DF038ADA4EE422E369E254F1838FA90DB
            5167F07E7AC55D77040890B4CDA5A132E5650B10F49DA6939A6A130430557F30
            194912843C043DE01CF16C9B58FDB091F98ACF71EF4588D659FCBE59F3235CCC
            F7213DF6641BFD7F996D3317DA49700311208965730B90FDAE73E3674050D5B6
            6E7C91CFC01DCC4F753B510298BA73936E273C0EF2ED6F6E3C32EA7F244E18B8
            83ABF3373F9EED8AB4579C1220B99320A062F04A1AB7DF6FA0B38DCE644B0E01
            025E60DB42B7932EB235A9CC434236C81206F1315CB7239AC094334CF78C5A5D
            0067E55EFCDFD1AD13E8BAF643CDE0F3A2388CCDCE54A2C88EB86A31DB207818
            112089657509905A5269489776FA8B7CC622B6E548654AF21B9252B930E7503C
            0354FA81AC53BCDDCECE64C7ED54E58A0F2F438018CFA379A651C7362175974F
            B0C69BBCFFA8FA178600B9365380A0D06590E68C9FC676816E273C084654D101
            0F6AB62BDCD4418D938E6216EAC1E7B7B97C9E1AB4E8393E3535F3F96E51B1DF
            8BBA47F716BB5017E086C30A6CF39C6C2CC12544802496D5254046B27D4B4A88
            084920CA1043E1B73B1D98F68128BDBEBA1DF1385B91BA3B9D29406E633B5083
            3FD8DF728C3C84EC152018F588450A2DF136DBBA1ADAC08F20D9C321C6A3B800
            19F272AA00B1BB03E47554463021154C4B83F808EAB42B8C1A204573513562E2
            8507EFEF589BF66AB99DCF837F52099763BB63DB30FF6B795269DA05BF230224
            B1AC2E01828ED854A7BFC4874C63DB54B71325B009C91DEC42A0681AAA539BF1
            1F6907F2F7A467341077D5BEC9FD963945CCF033967C2DE54F97C4E21F8C2AF1
            5138810C629F1ED7D0067EE418B66B8C47B905086E6204A9701962CF96D3ED84
            8718406ADA55506718CC22152355F4DCA98690BA9BD673F15DB424BC9A997AB7
            E86CE14E9CCB502FED1307DA4A701B11208965730B90B1D73AFD13A008D01565
            AFA5F2B09CA3DC63484281C220E669FBC4B3E40883AEE07DD4F9B8A8CB4F1871
            2A38199622404CE1120D9BCB175C085F84AB7D7F0D6DE137B6A378CD18162067
            B200393B5D8060E7425B0ED0EDA84B6007C334A35F743BE20110708EC28C41AD
            F3319F6D2D2A61B4205E78F09EF675696CEBDD7C14CD28D50727040862BAFE67
            F33A051D8800492CAB4B80E89A72E2753077DBCEFCE16EF1130537C8D12AA82A
            AE8616D30F62BB33A658E133F6618CA54FA605CB5B1420580657F348BB850FA7
            21E785C240D12DCB36C378060132FCBA4C01021094BDA56E675D6407B6A7753B
            A199A0079C637479432A71A4A01BA9AE5FBFC577D1A2E8AA7CEA42E84551E7AF
            384E08104CABBCDFE6750A3A1001925856970079956D23A7BFC487F8B1E2E97A
            A4EEB8095D8329226AA423FD204671ACDD5DF6E56F6C1F58FB684C9DD8AA52EA
            0576754D36C4072F13E954B11FA1A22EE0A86DF1A0CB6DE13790AE3919549C5F
            8048207AB0C0C8C77B6C4BE9764423286EFC76290BC6473FEE6E5F9FF643EC47
            35EEA995243E8013020499B56EB6799D820E44802496CD2340AE71B2F971A301
            43E512B09C8D2A2EE62F64FA556170476EF5C4B3E4890249187E2577A7CA9456
            D40A02C4F03B56F8BA1C2E497C004C47434C4AD193AE03044636B64E3CCB2F40
            3095F36EDDCEBA08CE9BBBE97642130DA46E02AD5EEE8A7C4C59236088FD68E7
            53D6088C7E4456E13310C2483C25407033E1629BD729E840044862D93C02E46A
            279B7F4552192A846C5023E225DD4E1401F61A04FA0DD6ED88C7C19DD9D3D4C3
            B4FA1F48A5FABACBBEE04E690945DBD8EFEA9AC4C3ECB7436A263E463EA2D152
            C40740C3203B5E508367AD7025A50AFEFC022468E75908D715743BA101DCD09B
            C6B68E6E4734925E44B548E299AF5EEC5C8AB65CCC1AA6AAEC2CF84E0890F349
            0AB65606224012CBEA102032CD22371805C61D2CFBB3D714CE40542ADBF2BEF3
            8C734D523120BDECBBEA6188520E5A5C54DC8CF949EFBC96424D5D0E01629EAC
            2261B648A9E243118B052D76A13842A1F1FCFF2D89E7F905084EEDE8490525A8
            1F799E31823643B7232E82910FDCC0584BB7231A99C056F69CF13E7CB41CD5FA
            6FBABEFD203E727E2B77754E08104C4B39C6E6750A3A3004C85B2240F20A907D
            1D152028C436C9C92FF029289684BB967ECAF5FD18DBBF743BE1716690BAA3AF
            92C9A79F243E22F7A64DB4921AFD585CF21A30AD0AA320C648484A662C9C103B
            CB1AF9480501F987B8D4267E04B173C951B3B800193A2D538080E72875BA56E5
            832C7341BA2182D4E79BE876422367B29D5BCE0A8CD10F3E657DC2F275F5456F
            F2F90B07517B39AB044E0810BF66C814328100697A9B9E1A7C1C2D8C0E170192
            2540F6B9CAC9E6D71174EB0730E9145308E6EA76C422A8B22B692F0B8374D3C7
            1B8FD2324A19BFF5575AFC2819339D6E6D2DA59D78203E62B6880FE0F6A8909F
            40CF6808A59E23BA162048B37CB26EA75DE40CB6F3743BE1128877D84EB7131A
            C15DD27FDBB1228C7E1CD072224D31463F70FFAFEC1034BB0B1182296C07D8BC
            4E4107224012CBEA102008C8B59602345820960299925A753B6291B349DD8112
            BA0659C2DE311E8542A99D748881CB5CF201A95B9139A9ECB90589E0F2DA0675
            EE0977A8A95721DBE2C6A546507E3E675B35ED952543E98AD117D3B183DFA3D9
            6D595DA7B16C77E976DA458212881E74F161CB68403CF3D5277CFA5A7DE15B7C
            0E5B42368C7E803DC8FE94B932025229B000D98E05C8D3438E1701E2B2006966
            FB93ADDEA92FF031281C060152FA14994CF0A386F9EC5A8D5FD996BBD3717464
            6FF22308A85E3EF12CED8034D245AEEB921FE884EE6FDBDA20428C5810DE9ECE
            76BB463EE21C4536CCE9AE50B23BD81D7D699BBE2FD133A3EEA096083F4D8FF7
            C2F4BE8F743BED220844C73456E7A2DEF43385EC3C96FDC754B66DEC5A591FEE
            EB1DB4E878BABDED60BE4E4E279BAE9348997BA3CDDB0D41B397CDEB14742002
            24B1ACDB02647DB6379C5AB9CFC108083AAB2DB6ACCDA8C7C03D92F676D559AC
            AD51D364EC39C18E63BB435743F9084C0739C37864C49E27DA7E34DB0F2EFA81
            8E6849C5B93480A0524783D07CCC39A462E89274F6A6359ADFA3B7465F47E198
            4A259A023224A16E483FDD8EBB0446FA701367BA6E471C02C9070ED6ED8446DE
            2735A21C297745F1CC579FF21EB3DA42C47E60E241875D7EE237BAA5ECB5A473
            1FDBDE36AF53D041B8370B907759809CC40264A808906C0172A5534D8F2AC7B7
            39B5729FB388D4DDBB9965AFC9101F2C363ACC132A769EFA3AF53866CBCD41DC
            695C4E4F33F98A94E28369278713D92E71C90708FE0D753744111CC176BD6E27
            3CCA9EA462E892B40DA1F3475E491387BE4573DA72DE5E7891547AEFA0B02DA9
            E0FB4A23E8B15133D8D6609B6FD70A31FA316ED10974A711FBF13D253A7EE573
            2AD95F14530448A5200224B1ACDB020473DECB0C84AD58B057AD42E5E6EE4F15
            1FA93B0B76208C82183B40592204C3DFCFEA6E2C1F80C260EB279EA59F1C9092
            776D97FCC8EEB47A1B74B2CED7ED844741FCC7E769AF84BB13D5CDA3DF573899
            FAF2756B51346B198C264DD0EDB88B20E8DE2D71EF16932873E42B58A06ED19A
            64C7CD394A8E7E7CD4C92B35463F30E9C0B6D10F8091EFD36C6E031120950204
            480F0890934580E414207B3B2640D071B56DFE6605F20FB6574B5EDA28061731
            B31251BA00C1F42B4CC5AA8E4FC52A998FD956D3DD503EE0603EAE5246FB12BF
            C5B2A46243DC601EA9D4BB9DBA1BA308E426456E90F96A29CA4C52D1D19FF61D
            F818DD3DF2615A80322CD9F7168256111D35A6F6D0ED848D043D2903A6D5A1C8
            A2ADB14CC87C3576F18974CF92717C4DC4E8478D9DAB470CDB5136B78308904A
            41044862D93C02C491F31DBE0139EE463AB1F20AA18C8AAEE6C8073212C53315
            6582FDB6A64605A59736156B27B6477537920FE04E6228597323FDB770B30ECE
            4D6C87EB6E8C2281683B50B7131E24F754BACE661AD1E333FA72B92B8DE3BB2D
            FBB0C69DE30F743BEF22B841B2866E276C0241C72557F8AE1050C7E6793B57D8
            874FC75F44885699FF2A9F9B3BCCDA1FB682DFCCEE8071112095820890C4B26E
            0A9091A4026F6DCBD7598160EAC9E9452F851F2F125519AFBA8A313784497C2A
            5649E0F71BADBB917CC03DA452A02AD20EDA1062429671C90F4C017B4B776314
            C9136CFFD4ED840741D2876C61D6D19BD6EFF326BDBAF4646A8B6605A183EEA4
            8EDB41BA37C025904B7514A96C8B7E06C7C013BA9DD00CCEA1F7D8B9420CA70C
            E0CBDFCD2D9BD3618BAE36335FD9DE257162A68708904A212E40868A00715380
            6C452A859E909FE7281ADBB6A825F0236346550473582D66B8C2CE54859DBCA8
            5190A3F8BB243DAA35D26B7F244115EBD2A7D81507AEAC7E148B68B775743BE1
            4190B820BB6E4C7B7FDA67E0E374CFA8BC53B040D02A66973795553F384FBC42
            36E74EF719B6C7F2E0D0E8CD2DFA173F183CFF41BE6E0EE116B62DA63D152752
            AC8B00A9141202E41411203905C89E973BD1ECC7B0395AE1B002C03CEFE16435
            156F557CDA5524FFB4AB9CC49400B15E3CAE17A93A250DBA1BC8077CC8B656E2
            59755A1B4F21F772F8A30AF6A9BA1BA348505F06D5E197D6ED8807C99DDD29C2
            87644D2BFDBCD20934980FE985B9C3BB7047E958DD1BE022B8D65CA3DB891259
            8954BC439D6E4734827E82EDFB2BCEC4BDF818D971C1447ABC755F3E6E90CCD1
            D6D88FF8D76094DBEE9B3F22402A858EDEB46DF3BBF4CCB0534580B828406E65
            3BC889155718FFC7F6A4E54F23E643459C17F115A6583146412C2D87C0CE2054
            18B683716C771A8FAA42A9A21045385189BCBB4B7EFC9DD49D383F3194ED6BB6
            26DD8E788CFCF52D3AFAD0FA7DDEA05797BE25DF142C80D8325BA7B2781CD460
            18AFDB8912C0CD27D4EBE9A5DB118D3CC4B6BB132BEECD9D9D9F2244A3E63DCB
            97C05AB3F687ED834CBD490990BE36AF570A11560A224012CBBA29405E67DBC0
            89155718E9F1033909A94C56D132EA31C5F783C2226447B6FFEA6E149F807491
            2349CD43E7B64D3B212018FC0697FC40F1B911BA1BA304C6907F0A26BA096238
            5023283B9B59470F966BD369EE0A1750373E8C5B738F80042D10DD6FB56F404F
            52231F7E9C366917E8236CE4C48A8DD4BB7CA99BDCBA311DBAF00AEEE3FD4E65
            A6A3CFC70AA45265DB5654C4C442BF40F0052C40B66E7E8F9E1301924F80644F
            352E13DCD144AEBB8176AFB802414142A4DB5C90F713D8FFCA111F2094F2C0F8
            F143B93E838BE24F14EC3B72C580E253C9FCEFE902049D8BD55DF26332DBA1BA
            1BA30490F1A6128BC895CB0BA462E8B2E96C24EAF607FDB9E2246AE6DDAD25B7
            00A92755C82D2881E898D83F84E23702BC0F7A1C6F52B0639F20B291BD6C91DD
            2BC6E5B297D99FAA9EFB1FA2C8483E37CF2287F2E16C4C2A7EC76E30AA3ECE09
            8705971101925836B700D9C376012277368BA3EB6C58E58A0F90B61F54519E51
            90A055512E870837213A3D7FA9A769EDB92E1F8C6E4E87C2A8D5E3BA1BA40420
            9A6ED2ED8407C93F27DE1020BFD3AC15CFA61EF90508085A203AAE399FE976C2
            2248CEB255D96BF12F0B49FD5E3F39B1729C8931FD6AC2C283E8DAD6C3B97FF7
            0B39988C735752D3C8EC06B57CF673CA69C14520407A41804C1401E2920071EA
            A0AC54DAD80650AEBB41283468C7C87128C793941D95B998ED24DD0DE12350BF
            E2E0C4B3F40315F377DD2A8E867D0742689EEE062901D9E77283D8B9DB73BE13
            3605C84AE7141220412BF088CE9A1F0A30DE4532B5666DB6F79D5A794F3E2E16
            F071D16FF6537CEDE4E3A50A03648E0910A70A47625EFC094E392DB8880890C4
            B26E099049A40AB009D679807FF63DD35E895730775E801C426A1A8F601DD4F6
            F821F12C79A0420C2026C3EE39C1F9F81FDB16BA1BA344DC146A7E02B1736FE6
            7CC7BA00410D91DB746F888B5C4ADE17B348337BA26E273483E2B68F39B5721C
            0EFD6A886E5ABC391D3EFF22A29ADF9CDE1E8C561EE3C07AD3A7F70AFE0502A4
            B708902E04C8A5763739463F76B57BA50120BD10933B0204770EEFD4BDE13E03
            D39D76540F4399A31FB870B8990EF74CB673753748892078787DDD4E788CC5A4
            C46DEEC27AD605C8DFD8DED3BD312EF21479BBA0A55377CAFDC4716C573AF905
            4D7C2A5EC4D7CB7E73EFE2636504F7831C1F184606CB1D1C582F463F1CC90E24
            B88C2140DE1701E2A200713300B7D2588FF74055D42EAE3C9C1320A8513145F7
            06FB10E4EEFF2AF12C7990D6F113A45BE9E3A22F88D97949778394006ACC2051
            C550DD8E788C4FD956CBFBAE750182F4CFB8FDDBAC7B835C6206A98AE85E44A6
            2413A1A8ED0427BF203EFA71E4FCF174C3A2C3896A7F24176A3B3AD5D7C1F4DE
            208D60562E1D7D58807C200224AF00D9DDD602A4C8BC82BCD892DBBF34100782
            22646F382C4026920A7E178A2365F483D24F02215753EF024C6E1E65FEF51B28
            3E88F384E33D049FD1755D84840039B7900001A80EEE489A530F82B324EA6AFC
            AADB910CD0FE7EAED26E074FB0FDCBC92F8867BE42BA96FAD953883A4770BFCE
            F1D3A253354000CE014117AD9541476FDA8605C8B34B8900714380A020DA9B65
            AF453880778329C6237B05482F7E72333954FC2900648C7EA49D0490D565B88B
            BE389647DF0510B7F2826E273C48D753EA52054875410182BBCE47E9DE2017D9
            8EED59DD4EA480A974C8CCD5A0DB118DA0460646F4A2E5AEA8107DF87898B470
            673A7BE1294435AE84E161E4E32387D6BD29DB34A73740700111208965F30890
            8BED6C6E0968B60F04E99ECC02E4E7B2D7A47EEF716CE790AA3B22140F822777
            520F4399270054ADBDD7657FF2A76BF53E47B25DA7DB090FB21BDBC379DF2D4E
            80209BD6ADBA37C84590F5CB2B7116B82B8ECE77506AB1E402714C28A8E97820
            461F3E15BFDED193369AFD34F77D1693AA7AEE58E6AB38BB5057C76AE9A0C7B9
            2ADB174E6F80E002224012CBE61620BBD92A409CCA0A11545A484DEB99C2F665
            09CBA32819E6201F4DA84F21944E88962335E44E490192189EC2846397E7A087
            1C1EA677A472701C04A3FEDBC92FF029B85BFC69DE771302E43C2B02642D7230
            DDA90741EAE283743B41EA2A8D04006BE9764423D833D72417EA8175B20DAC25
            3A75DE5E74D1825389EABE2117C40740ED2E271280A0A026849B2375520497E9
            E8C302E44311202E09105436DEDACE150A09505C0C530C3E26254666E6F91C86
            FE5726F53B6C693E17CA23BDEE477AD57364417952834FAB907FEF926134C9D1
            79E13E640EA9297CAD793F519C00C1D41FDC85EEA97BC35C02C93BD6D3ED04A9
            38B1FFD3ED84661C4DB71BC7083CE7E3603AAB90D173EEE5E3A32FF7E76C2FAE
            9E0F8C78EFE5C07A91C8040264815B1B22380804489F8F4480B82040D092DFB2
            8DB66B85425E7096C5890A774BD0C9C0B97820A9E0FF11646464126C22CC3698
            6DB6F12CF3A00C853EE4FFD770D927FCF623D93A74374E09A001313D6525DD8E
            780CC4CE6DD0E5278A1320E015B68D756F984B60AA0FA697B668F401D30A8FD4
            DD109A716D2A1CFA33BD6A8876987D323DBD781FBEEAE1BE5C8D5BDB89D14527
            46B9306A2459442B0511208965F308908BEC6A6A747C67D8B53241F00867F2A1
            620EB5C7320F7CCCD97F50834F48BDBBB9EE8629917EA452C4D6EA76C463DCC2
            36BECB4FC405C8CAE75B152041EB10E346C0C79ABE1BB51B6CCF69EF336E643B
            C28D2F42B70CB11FF3F818E8FBC743FC42139F9B17BBB59D48B58ED8CC4607D6
            FD22A9990B4225D0C902A4EFC7F4ECF0536961649808100705C836E4AD2C2482
            502E7F90AA5591ECEAA51F941A623F0CAE26FFC6502016E96DDD4E788F107ECF
            ABBBFC48F102246815D1F7647B40C3F7EECCF688EE8DD7CCF3E4F2F46B64BE3A
            7ADE4174DDA2FDB91FF767F92BB4CE866CAF39B4EEBBD8F67773630407110192
            5836B700D9F542BB9A5AEE0009950602F8CD8E4528537CE8CB32A46A8EDCE4D8
            FA1D8D3FA77DD9EE76F41BFC09EAFF3CD7E5272040BA43805C605580042D10FD
            6CB6492E7F67D0AACEE70253AF91B9C99529A1383DF5E5FDFF7DFEB6B5FF7899
            FB3B8BF89CD8462E96154251C5ABCB5E4B6E30DA7EA65B1B22388C0890C4B24E
            0B1074C6BC90854410EC20BDCE46FA018F2798463450936FA8A3F13F5D0D5326
            E7B19DA6DB098F81AB0CA6B0FED2E5A78A1720DD4825ABE8AD7B035D02370B76
            75F1FB101B865A1F4E14A3F30B101D487AF2BD9B5F8AD18FDDE7FC9B1E5AB427
            51ED743E821CAFFB910AA64B1E5CF65A72835206414A9F5DD984FBD2D6FD3EA6
            E7961201E2B40041876D83B2D72208DE60795277F628C7E8C7296CB61D384582
            6E272A89CFD0D7346581D4C16E7612FD008447E12296C50B1010A44074888131
            2E7D17A29D3F70F1FBBC0A62D15E72EBCB90116400B7FC67EDDCF07F3CAF6A7E
            84DADDDE66048A3BF4BB87B62229D25A398800492CEBA40041CA47DC69EB63C7
            CA044133480D774AE259FA8188BBC9880DD195698CBF3B34841C9D28E5E81C2C
            74125771F20B7C0862E7B62BF8A98400B9B0180182A97A87EADE409758482AED
            F82C17BEEB29B6ED756FB0669C9D0A9A836E21750766F55917D3F76DEB70FF0D
            A76257EA7EC4C1A8F76F0E7D29360D53D94AA9F9257891703F1120E6B3DC0264
            970BEC68661C349F96BD1641D00FAE68C3D822C6B350D6E8C714D21B2458385D
            AB776926D5BE0DBA1DF118485B7A7CC14F9526409095E87ADD1BE82208107EC3
            E1EFC0FCFF09BA375433D7BADD0646DD8F1AA29797D4D366BFBF4454031D1071
            7BBB51E3E57187D68DF4EA10D0ADE5AE48F00891FE2240CC674E0A105465D691
            7D4410EC267D083CFD20C4B0BBE3D57D0B700FDB58CD3E940A0AC5BDA5DB090F
            82D8B9DB0B7E2A2E4056B9A8180112B436C7DC7C27337FE1AEFF0DBA37523353
            4965BD74158C7EA0FFB2EC9F97D1CCF655B99F334FC7B69FCF36D1A1757BA598
            A66017224012CBE61120E7DBD1CC93787567D9B12241D0C87D6C7B279E651D80
            46FAD87535FB883B067E0DE28670BA4BB7131E647DB222124A1320BDD87EA2E0
            5444BF8CED4487D6BD29B918EFE051907A1C95BA5D2D826A64BEAA219ABC705D
            3A74D6F544B5AEC6BCA7F22AA52627B197F4EB8FE07F4480249675528060F463
            773B5624089A984F2A107851E295F4837C2FB67B753B496A4ACD8DBA9D289173
            D8CED0ED84C740042DB22915BE9D5B9A000198B6F777DD1BEA124FB0FDCB81F5
            8E2415BFD4A47B0335825CB7AB512239877B740FA96E4DFD9F7CEA6B5F8EFB6D
            7F918B6977E340C4A3E08853534875A491169C44044862D9DC0264675B04C817
            6C2BD9B12241D004E6F63E997886833079FCE08283D88566DD4E323BB13DA6DB
            891241D5F8DD743BE13130A56F754B9F2C5D800429101D01BC8849B4DE3A8541
            3A63C4382EA37BE33453B8568D03C4633F6E59B80E8D9F753551ED0C5DDBEF74
            B1659C1B1FD6B571820344068800319F39254090F90A19B024B054F02B77B28D
            4B3E0D65DE5C7332EF7BB1608EF03BBA9D2811B951910D44D91E963E19EECE5D
            E13F69D6181620DC216BB11E7F7B18F977D4AC5830A28434D5336D5C27621EB6
            D2BD619A41A1E1CBDDFE5274BF9AAA5497A6EEB71B883AF9A7AD9A4D1A463F00
            52869E52F65AF283D12549E65329A0A32D0224B1AC530204F3215F2D772582A0
            09CC8F1F99F64AFA8187F9F94E67D5290614ACFB59B7132580F49568EB7ADD8E
            780CEBD32E4A1720885B7A5BF786BA086235A6D9B4AE2BD9FEAD7B83343385ED
            005D5FDE87F7F5A3668FA5EBE71F4254FB0B7A487A1C0919755FD67468ED5055
            4B919AE62654022240D296CD2340CE2BB79991C1452A770A7E25FDAE53D6816D
            CC775E56B793268853194AFE4CD388D4C1AFEB76C283589F7651BA0041ED9AE9
            E48D29846E60579C14463D6FD1BD319A798F6D1D1D5F6C049E73FFEC930EA2D5
            7F7D8AFB359DAAF0A09ED10F88031C434E955C47C1D04D746C98E01055224052
            97754A806058F6B8725722081AC09DCDAB934F330EB890E782A6BF219581C6D1
            4A810E21372A7212426AE7CF2C7DB4740102308AB7BEEEAD75896BD88E29731D
            5E1BF9D4C102B61548C5BF69A14F2DD1FE7F1D4277CDDFCF8CFD70B5E8602A18
            012A9C2ABB745CAFAB22384C5595089094659D1220084ADBBADC950882CB3C44
            5999DBD20E3854EBB6D631740F4CA3F16B36A34B49CD2317922095CF28B23AA2
            D5D944D4630675AC76959103B5BDB830EB2005A25BAB2C9F9FFE6C5FB1F5D5BD
            219AC1D4BD77757C717CF4E333DED1C7FC86BA7FACB6434B74B6053220EEE5E0
            FA9DAE5F23B88D0890B465730B909DCE2DA789D17A48C83DB2EC1F4B10DC039D
            8B55F84048E9C2650DEB239BCE8ABA1DCDE069B61D743B512272A3221B4C49B3
            5E5320C6A7DB481DFD77E57369C77EF3696E7195180E619BAC7B835D02D32671
            E7BED491C28F494DCD0C3210ABDAF6174380D4121DF0D7C13465FEFEBA473F10
            B786B8BB010E7E0732E1E92E722BD8890890B4659D1020484BF83539372F5210
            EC6621A94C4CC92C39D9079A57A715FE876D5FDD4E94400DA91B1523743BE231
            70C7D37A76B528F7C842117A6D9589B46133D1DCCEA2BE2B4815D1C36CC348D5
            6C2896BBC99FC7989D60B4EC705D5F6EA4DDE55DFDE1452BD06EBF5FC7BD8BD9
            BCDF17B7B3DB8CD3E97711808E5A40FFDFDE79C04952556BFCEB307966C36C02
            96B04BCE2B200A489228E9A1A8CFF4CC98132A264082607C8011544C98151451
            411114098AFA90282C2CBBCB66D89C6676F24CBFF3D5ADEAE9EEE999E95055B7
            AAFBFC7FBF3BD3A1BAEAD6AD5BF7DEAFEE3DE70CD93C49C54738884FA6340E48
            CE6F83102041DF988AE237C74BBA3FEF93FC1B8D4FE943F7755F22D74B7A9FED
            4C54C0BE30B34ED61E614694021BA449186A019A3761C5A19FC7DC26605B79C3
            151AA0AF40FD18A27366A95CA70774B1FA79DB19B78CD5659E1C6E4D9156A281
            63AF955F03FA0F04D27C5664B5E960BB1BA420637F7386CD13547C4605482802
            E4C392AEF5E172294A18D090F0C6BC4FF26F32C6B459ECFE8F225F92F409DB99
            A880B324DD663B1311840F70FE54F2D6EC8CBA77C1670FBC1E17EDF1303697BF
            249EF163AC7834B200979C95E3F480713E4ABF16B5C90698D9E18DB632C0D678
            7A1AF8F4A63371D5C68F8812790E96BC5EE542EF57F302DCFF95728A97DA3E49
            C5475480942A403E534D317309C1DB7CB85C8A12346CE0F3D5F65897BB7F45B4
            5D21F209ED176D67A2022E9654B5B78B1A836B4A68A7F06CC9BF70BD60AD5BF0
            254C2DDF0B16A9A7F6BA1CB14ED7D67CF0D0623BD396B166744E38D49A9634FF
            1B96FF50EAFB0C20BD099605C8B1289C31F71F8ADFBB6C9EA4E2231C60AB0029
            5180BCBC2A01F200E2EB9547A91FBE02CED6E5DD4F633AB5A0A3DCFA41794B76
            A2C32F31C6E358DD439B98FD6096BC97066D40A4DEDE79F027716A27CA354227
            5CBEF70DDB271E12BF93746E89DB3E09F3E4BF9E2977C6C8773CC3F3CB379E83
            2B36BDD7D87ED8F6389E70DADB20DDE3F22E6690D6AD764F54F10D15205E0EF2
            7E3B8E00B9A2D262EE90B414C665A1A24495EF48557FA7F32A7B3F8C111FAF44
            A9C1E0ECF2061877907183811E0FB19D898851BEAB58C7087D04F71E7C318E9F
            5E91003901FE45088F3A8C99B37F09DBD11DF7AB6C67D632141EEFB099019A33
            CD4E032BA44ECF5BFE5BA9E7F249B20B96673F383AA4F7AB5D023C0663CD1C6B
            F324159FA1F72B1520810B10BA8D7BC4A74BA62841E0C6FAF06E96629B240E82
            717F18074F6E6F96F423DB9928137A77E132A366DB198918574BFA5859BF708D
            D0572FF802E634423AB4B28FC987460C2AD76AFBE443A01FA6EE6D99601B353A
            071E92F442DB996894B6B95D062867AFFD206EDF76B67CB0DAB89DB6CBA992EE
            0CF8185F90F429DB27AAF8880A102F0779BF2D2E40CEAD58807049C52F7DBA64
            8AE23737495D7F8D7939AE0069930FB9FC222EEE6169CCFD07DB99281335EE2D
            CE58870893229D51CF4EF8C2FEDFC427E63F5A89113A7958D261B64F3E24E87A
            F85FE37CA78E11806E180F75CFDBCCC49054EBD94DC0CD5BF7C67FAFF9BE89F9
            91B0BCF4CA10864BE65324FDC5F6892A3EA202C4CB41DE6FFD162034E8BDC4A7
            4BA6287EF24D49EF1DB3E46AAC00A19BCE97D8CE6C1954E25AD4367CBAF739DB
            998820AC770F94F58BA166A0713B9E5EF059ECDB026CA92C6AC077504EEC9178
            33DE8CE17C18B7D04DB63368999325DD6D3B134D6EBBBCDBEACF634BEF21409A
            CEB8AC7BBE6A952C308E4C7B80C7E0ECDC6E9276D83E59C52F122A40CA132097
            555AD25C33FF4A9FAE9AA2F805DD427FD4DCBC399FF23ECE172471348C7E29E2
            B7865FD7D88F858BDB3908DE54D6AF32526F07A7E23B075D8BF3775981CD7D15
            1D9B06B5717464500914BE17177CC6A098B40FD9D376E62CF37149FF6B3B1383
            D22ECF11317DD5BA53F1E9B557881A615CE348840B7A23825FEE7ABBA4B36D9F
            A8E223091520610810EE81EBE6D5B0548912174ABAC6BC740548C67332942B48
            12D7813324F1236ED3F56C7296C33CE55346F98FA443CBFE155BF0C176DC78F0
            D578F3CE6B2A152061B8158D0ABF91745EC167B7A274EF58B5CA2D88C0C3430E
            ADA6278DB14EEBCA2FC98BFD653C569E260F90FB60669C8324AE5E0D95A22454
            8098375E0EF27E5B5C80FC5745F16F66C30C2CEADD6FBA120D86A552BF1EB4FB
            C8C2DA9EEBE1342B40A8B82FB79DE10A99684D7B14E1FAF245B63311417E2EE9
            F565FF2A93962A9DC6AD075F8573677563737F45C79E22894B4BEAC129009759
            E5BAD7A5CFF94FDBCE9465E8B992DEC12A5BC0E72329698FA7CAF8EB45AB2EC4
            83DBCF029A9646C1F09CEC2F7DC553211CE700494FDB3E59C52F5480B86FBC1C
            E4FDD64F01524F4FD19468B34AD2ABA552E70FCC33EE9FEC4DE40810DA2C5D59
            DEEE23C5DE300388B84043EBEFDBCE4404E120B8B2C08CBDB370F541D7E1A3BB
            2FACD4089D30D8DC91B60B210458420C32C8B5F6AF433C5D58FB0DC587F58702
            4ECC0FD1D30B45441FB49CCF8D46A489EE41046C3F0867D13F12F0312A9B0555
            A24B420588FBC6CB41DE6FFD14208CABF06D1F2F9DA254029723BD56D2C6FCBB
            CDF5A0927703252F923F9FB59DE12AE18CC262DB992883EB25BDC7762622086D
            627E5DF6AF4668BE90C01F0FF9345E3663A49238201E8CFBF076DB851012D360
            DC0FAFB29D9108F02618CF4ED66990A6B943062447ACFA141EDE712C90A677E8
            48880F46FB7C4ED2CC808F439173A1ED93557C84037715200843807C4DD2077C
            BC748A522EF9FED3BD1B2193E3BE71F406A2216A654F9CA345DC04C842986506
            4A3EB49D7BA2A25FF6CEC635075C8F8FCCAF6A06E44392BE62BB1042826BEC4F
            82DA2B7E0B117918E0B9DDBD63FB4C9CB152F45003C54724DCEE12067BFD4908
            C76150D0FB6C9FACE2232A405CCA1220152D89BD43D2E93E5E3A452995D55275
            F9F4B620409463715EF09153D12F87B1FBA805E22440F68E515EC38456B60C90
            3758D1AF7B67E1CB075D8F0BF678AA1A01720C4C0466A53E7850D28B6C6782D0
            2A6FA68CB9BAE545C7B2AFCB5DB08B8CC1B8422E12B31F248C38398CAE4E2F6C
            E5871255A289B3FC4A0588FBC6CB41DE6FFD12205C07B04CD2AEFE5E41459994
            1FC299B64E6CCCFFD8131E633A31C60379B7ED4CFBC85E3051C5E3C0DB247DCF
            76262208E3B854EE5DA77726AE3DF89BF8F01E4F5723403A6106416DB60B4309
            1CBA7CDE0F96830D7A700C32AD0178EBF3FF831B37BC19685E1615C3737234CA
            8DCD5319DF80AE20A92D5480E46C578E0039A76C01C2A8D1CBFDBD7A8A3221EC
            3C3F2675F7A7E66D61808FC2CF9CBB9A06A7718BF3311947C03CA18B03F56467
            500EB49DAB5C14F7CCC2B5875C5FAD0021FF86A94F4A6D739AA4BB6C6782384B
            AF1A813F774DC1A92B6E02D2EBA4D9AE6C2230206897755ED57B99944464AE89
            E2132A4072B60B56809C0913404751C2806BD5E93E73CB98C8E6B4F728FC0C98
            05E3E7FE58DB190F801325DD6B3B1325B20466C646C987DE75BE5CF1AFFD1320
            14F3E5BB0256E2C4E7255D643B1384C3A81669A25B65BC75F88A4FE2916E699E
            1BF85C29324BAFE82D6D7508C779CE3D965233245480542E402E29B7B4E9B9C1
            7A0455A5E6B95BAA282BE73FB29F4C38F1E1BCE0143A239CD76AE0BB3360ECAF
            FC838D41C6770350BA977C2CA432891BB49DBBB3E25FFB27403E2CE95ADB85A1
            04C63D925E6A3B131E8EDBDD26E0B3EB4EC425CF5D0C3471157764C407F31256
            70DAAF4BFAA0EDB3557C24A102244C0142BFFE6FF5F9122A8AC73F257D4ED2EF
            C774508E9D7906F93742F6553DB8867EB3A41FF9B32BD768DF99454AC2672F34
            FA90A2382352D85CC25AF99356FF04083D43FDC57681288140ABEEF992B6D9CE
            0871C4878CB3BAA4F64F597A3D303453C65D5B112101429B28CE4C3485702C3E
            24FBA7ED1356FC22A10284542C40CE2E5B80F089F4513E5F4545A1F1DF35523F
            6F19FDA8F0062862EF9170EE60BA983CDFF609840007F6D7F8B22716E1D09049
            0D8DD20EA6FC9C09F92BCC7231251F3EF6DDB3AA3DF4CC1401F22D3F04C81C98
            A0966A885E7B9C88082DD564608D0E19DABF6AC5DBF0EBCDE7018D1CEB47467C
            902B2455148FA04CE815705FDB27ABF84842058843E502E4E2728A9B4F08D64B
            9AE2FF9554EA14DA13898048DCE6BCCBABF3DE9BC2817176A3174ABA51D241B6
            4F2224683B507D845E3630C383467C38EF13468414F1645C0174314B0F4B699B
            051551FE20E9ACAAF6C0199043ABF682E51186CB51255CE872FC33B633E1C116
            66B628905F6DDB1DAF5E719DB40A1B5DC3F3C808901698D98F69211CEB7218B1
            A3D40A2A40CCFF9004C802498F06701995FA628DA49B609613B9F52991F7CF21
            77B9D55861C2A9BBCB91BD83EB825B25BDA2AA3DF0E61F1901060773CAD42D67
            8A90EA550867A2BE63BBA0224AF5D18FFD1520BCFFDE68BB5014DFB85BD2C9B6
            33E1C15664BAB4CE83F2A279F1374CCC8F349F5F26ABDDB59F7C12C6583F0CE2
            E4465D9994840A909005C86B24FD22802BA9D43EFD9238CB718BFB7F7BFED705
            42239329FEB9F3C436C1815C640C2C43849EA5F6A9F8D78EB670C547F6038F8C
            6938530DA84E8024B8F4E378DB051551E896F8FB55EDC15F014263D8AFDA2E14
            C51768F7C1E57D5B6D672497CE46E08A7527E1F2B51798A5579948890FAEE858
            27696A08C7E2B2D4936C9FB0E2272A40AA17206795E5A5EF72D44E54692578F8
            B8EB4F30C6AE7748C55B37FEA6932CB732B5F932D477FD63E13000E87365FFD2
            9BD8181CC0B8CB1F28FAD2D22026D3A85084D0F075E9F807A87B683BF7AFAAF6
            401B1047803CE38700E1D3F23FDB2E14C5174E90749FED4C78784BAF1EE9010E
            5F72B38CB37648BBD26F3B5B857C0AC6E14918BC0EFAF0B68648400508421720
            2105EA5162CA72494FC274841C68D1B07C34D254A29271A9F31B0614A4F038D0
            F6094600DE7FBF29EB175EB10F0F9B34D17548BA0D041BCFF235C895304BE394
            B1C850CC710FBDB9BABDCCC435877C131F99EF8B00990973CFAA217ABC6130AF
            AB6C672217C6FC484BEA5C7629BA771C0A346C40C49E4B744A7E68AB1646DDE7
            8337DEFB918ABAA85441420548DEFFCA05C8A7CA29750E2E751058DFF4C1CC6C
            AC857127CA780FCFC078F8A051EBF8C3D6F205C83130B36EA7DA3EE908C1D80D
            1F2DFB5743223C4A51146C484632C62B56B6912B49897063DAF6EC64BB80220A
            EF8DEA238F3B02E45B7E0910C2FBF750BB45A3540167974FB19D895C68F331A7
            05F8EEFA03F18E155F019A2369F6C065BCD53BF4280DBA24FFB8ED13567CC4E9
            1B558084294066C378B709C357769CA028FB314C4D8AD402D72A612DE1A8958F
            AE7ADCFFF42BBF11CE139D4477F97B2C5980EC07333DFE66DB85104128F6F62B
            7D730A8A2163785ECA13C86C43C2F820A972AE1967667E6DBB70220C0364BEB6
            EABDF82F407E20E92D564B46A914DAD1D1EE6393ED8C78F0D9C5CC06E9200681
            9D965C2F3D48A7F48C344F89D4EC075D50AF82F1101C0674BDBBD8F6492B3EA2
            0224FF7F0802E45849F7077335634DE4A6BFC3A1820E65F2C1EC9192DE03E399
            47DDB88E0F9F58FFA7A42D6974CE6557A55EAF64C176B953CD13F390A4C36D17
            4C84F1C73DAAFF02E40218F7CE4AFC385DD29DB633914B8334131D32AC3F73D9
            F9F8E3E65701CD4BA40D8A9AA3C24498DEDFEE90E6F30CDB67ACF88C0A90FCFF
            150B90334B1620EA5EB338AF97F4F3683DE009832A04C8F801EFD4C6A834BE0E
            E3C168629C72CE98C792A5922C765D2715202F47B97629F5878CC67C9821EA99
            816B0EBD011FD95304488F2FF9D288E8F184AE63CB32E00C9A21696666B7003F
            DD380FFFB3EC3AA069A5ED2C15637F494F85783C2E1F56470FB5842734548084
            2A40E8AE71F2414FFDC1D8288F3BAFEA4A84542840268EB6CD0EF5B3B6CF2C06
            70E8C96504132F83E3EC07A95A80B8248AAE30E43286556E7E94F1391866B966
            75F82F406888FE3C74C6314EFC03C63E2E3238E2A311583B00ECBCF87A6973A6
            485BC2156291EB14B98AE3D8908E55E672592516A800F153807CB2D462BF0B11
            33768B00B487E01ADCAEEC2715797A8A23659EE7E4B31FE41C49BFB37D6631E1
            0A1803FD2264F2CBD92F01523C28E47761E25B28E343B7C98CDF52BD64F05F80
            10752E121FB8F08E7DCE5ADB19C9A551DA847691B02F5B763EFEB4E55CA06945
            D4627E9070FB9744E29DD05523B5870A90D0050843242F92342FA86B1A538A3F
            89AA0B11528900C94C264068ACF774F93BAF4B3810990FE3E271944CF6CF28BE
            091092C8BD3A5C47FD23DB051103F8D4D59FE08C5901B2D84F01F213496FB053
            344A99F8B394CF47BCA557376DDA0DAF59FC2DA07995B41123B6B3550C7A6D9C
            1BD2B1E86E9B1E01D5F56EAD90F0FA3E1520610B103EBD5B041D1816C2C1D758
            4F4D2A40C661D28130852EBD85EC6EFBEC62C21D92F20D1C8B093CBF0588F9C7
            C067F7D82E8098C0A7A0EFF4654FC108904F48FA829DA251CAC0BF7AE4136C5A
            3AD36EF8A0672E93FA795014637E904B61668DC3E2F2908FA7048D0A90FCB2C8
            FD1FB0003953D2ED415DD71843DFDEFF5BF49B9A17218108106E729BFC3DCBF6
            D9C5888F49BA7AC2B2F55F801C0713E1BEC5F6C9C704DACE7DDD973D7902642F
            5F05080D6523E54D491943E4EC09D8AA344B73D0D62015E8D9F3F1E72D324C68
            5A13C5A557BB49BBB50CD9D15EE03010FC0C1837C94AADA00224BF2C72FF572C
            405EF689528A9E839C2F05755D630C07CA7F18F7DB54E41A621F29438064CA0A
            A94DB7C6D5BB2BAD2F5E2E85FCDB71BFF55780E8B2ABF2F1CF134E3002840E04
            68A752CB0D56DCA18D4E98DE9B2685ADCA8C26E0C71BF7C29B965E23E2E37969
            1E866D67AB1814D76106B3FDAA0CB22EB07DD28A9F2454805814203F94F4A6A0
            2E6D4CE12257DA2C2C9D70AB9A1521E50890B2D6037349D11FCAF981E2F0DF92
            6E2EFA8D3F02842D2567FB3E6CFB4463C6004C3BB1C297BD8900B9FAD0EFE0A3
            FE0A10424F7E87845E3A4A29BC4FD2F5B633918B233ED2C0C62160D653DF9281
            563B908E5CC041C2E09F3F0FF178FD70665C9CC0BD4A2D902736F8810A90B005
            088DAD8F0AE8F2C6154EE9D2A7F8C0A45BD6A40829B1A3F1625194CE2C49CB25
            B5DA3EC3187225CC5AE77CAA172027C304ABD3016AF92C81B1A1F387E0040807
            69D5476A57FCE6F792FECB762672616BD222CD446BA3340C4BDF81BB379D6E66
            3FA2273EDA24AD913435C4637E05FA90A6B6500192778CD1FC211401C29B974F
            F9670477856309DD129F36F96619B74246AE71AE9252054845DE50FE8E88F9B9
            8F11FF9244C3AE7BB29F542E4018999E4B095E6FFBA4620C67F3FCB3691201F2
            B505DFC407F65CE6B700A13DDB17C32D1A6512E849691E72DDBC4784CE06E05B
            1B16E03DAB3E65663E12347B885C1F77238A3989090E7ABCA2972D9DFDA82554
            80E41D63347FF041809CFEF1C98A7F81FCE6D120AF6F4C29EF4947CD899012CE
            A5FCD90F0F46F92D39408D5294BB25FD00F4943592D958F2AF9209DA039C0E23
            3A4EB77D12350007F5FED5E59E4E5C71D08F71E93E4F604B6F85775771F830E5
            4FA1978E32118C52FF57DB99C8C571B9DB0C3C2A92E8B0853789F8D82E63A81D
            88A0F9900DC70A3AFB516B78E24205086C09100E447E1AE0258E2BEF90F4DD92
            B7E6603C9DAA21119298F83BCE7C8C54EC0B9E012FEFB27D863502A3A5F30102
            674656C22C6FE393BA3E494D6E9A07E3FA98B34E874297BFF9C95B606CE8FC61
            600AF699F504161EF10BF4499332E05FB805C62CA09D4A63D805A414E55A491F
            B59D895C58D5A6A7CC8AE2C4D39748CB72A0D4163EDB885C9F2612C9597AD519
            E2313905C47B6893ED93577C4405C898638CE60FA10890CF49FA54809738AED0
            15E9DF4ADE9A028405EF8990F23C434590493A9DE1AABCA17050CC45C5D36D9F
            A5A254096DE7FEE5DBDE7A67E0DA177C1B1FDEF359BF976091C76004A86297FF
            2062D781E2A34506106D32B4BF60C94BF1D5E73F08B4AEF2750ACE3712091B81
            35E9B9F132DBA7AEF88C0A9031C718CD1FFC10201F9BEC12DC22E915015EE238
            C2AE7FBEA4F565FD2A2B42D2B6F3EF031308109E67E5B31F1EBF84F1ECA42871
            856B537695B4D5B73DF64FC551731FC43F16DC8A2ED1F883FE0E007F26E975A1
            96905208AF28BDA62DB19D110FB6E46D32786811F1F1E9C547E2AA67DF0D740E
            4A1740874F919BFD609FF1CB908F491B1D2E5DEDB57DF28A4FE40EB05580E41D
            634CF9384552A900396D5201F284A48302BACC71E549490757F44B0ECE532933
            1312EB5990093A9E617659559F9B2EFD53E20E67145EE0EB1EFB3AF1D1FD7F85
            ABF7FB37B6F4F9FE005AE33DD9E7FD92AEB39D098F5CF171C5D22371F9D3EF90
            375BA4FF1201D2DA217D59DA9DED8E425F96A007453ACCE908F9C0FE051A55A2
            810A90480810DED00C50550B8FECFDE457925E5DF9CF33A672C65A848C234032
            C3EEEC47D54FC6D889D09B4893ED3355940AA16B5B7F3D88F54DC73BF7B90DDF
            3EE0016C1D28CFC15909D0E9C01DE1158F52C01F259D693B131E6CC55B65D0D0
            2AE2E332111F9F5924E2A379B3F45DBDA6E235B71901C2076A4E7B6FBB2F4BFC
            05C6703F4C56C97177B77CE28ADFA800094B805C38D165A09DC37D015EE6B872
            85A4CB2BFF79C6B4D56CBC632B428A080C9EC6F0909F07F9B5A4F36C9FA9A254
            C8C5303674FE3120BABC73097A5EF4236780D8EF9F113AD90366E98F3E700A1F
            2EE3D905C66984751C9B0F69E2DB5AB9ECEA45B8EA198A8F8DD2670D7084E26E
            350C6754D131CD58A65767F7572D1749FAAC85E33246CBEF6D9EB8E22739C2C2
            79AB02A4F018A3F943E002E43D885804D688C0805DD5AD33F5EC411A1A626A94
            5EA472B203E20C887FEB82CF91F43BDB67AA2815F22A1811ED1F7D9DF8D481BF
            C4E7F67BD46F37BC8437EE429800AB4AB83056CC1F6C6782640DCE5B283E5E8C
            AB16BD5D3EE0CC4781CD8737F8483598C1566383791F7E57F66249FFB45054F7
            4B3ADEC27195A048A8000957809C3AA1A7BFAFC2AC6F54F25920E9F1AAF6E089
            0E5E8B86387ABE2CAC9C722E838340C237F141F824964B0067D93E5B45A9000E
            E417F9BAC7817660EA6A741FF55DE756EBF3770684A8F387F0F916CCC33EEB64
            6D3E3CF1F134C5C726698973673E5CBCB69E0F9E92D254B7BBA617E13E4CE341
            798FED6CA1B80E94F49485E32A41A10224520284817C4E0DEE6AC7926D301E2F
            FA7DD99B3713D2D414B3599082CA48F141DB0FFFE39C7C41D2276C9FADA29409
            E301302E80AF6B12E905EB25BB3E88BF1DF63B740DF9EE058B70D9D855A19490
            425648DA1366EC6F955C83F34B97BC08573E7D3ED02CD5B881DE0E52637F9028
            187470E0C507514DB28344CAC4820A1EDA2CD90898FA0D39FF0F5838AE12242A
            40222340B8D52A497303BDE0F18353BD47FBBA47274861DAA4D888909C0A3834
            6C6C3F8209B2B88FA4676C9FADA294C9BD924EF47DAFFD53B060E747F1F011B7
            A067C4D740841E6720224B81EA842325FDDB762672673E2E5D7C84888F779A99
            8FE4C0E860AB9044FE00C3080EE9BF5ADACDE02BF8BE8CB698975A282E3E5CA0
            E1B9FF9178144BB8837015209111207C2AB334D06B1E4FBE27E97CDFF71A3B11
            922B40868214208403A2336C9FB1A294C1B725BDDBF7BD0E4CC19C594F61E591
            BFC080BF91D03DD4103D3C2E8719445B6548EAD134B9DA8D223E2E5EF4627C6E
            D15B8DCD47AADF1899E70C4EF22814201E49777971BAC9D838063313F25F72CC
            DF5A2A32C6CAF985A5632B81A002C48E0039E523E35D91B3A1DE1D8A41C576AD
            BFBBE40571454763A3A9C091172139958BCBAF82B53C7CA9A4BB6D9FB1A29441
            30B101FAA7E1F43DFE8E3B0EBD23A825586A881E0E9CF538D27626587FE634C3
            69BECF5DF872FC6EB534B54D3B46C507295780385E1E2535CA8E1B9B8C00C9B8
            9FFBC33C18BB0F1BC693C1CC6C2A16F1C4045480203A02E4E392BE18E4658F29
            F4D3FEC740F6ECD983B0D1F69E22459644CEECC760911BC277FE0F11E8B015A5
            444E91F417DFF7EA18A1AF41D7D1DF759A88008CD0891AA2070B1BF6BD242DB3
            9909477CB4009BFBA4B23EF9663CB2F668A0D573B59B63F351AE00719EA77106
            44F4419A9EB1DCB850FECC90532E5120CFB7546CF360EC76949A4105481405C8
            0F24BD25C0AB1E57E621C80628D7283DD2EE79DDCA35D03F9AE760394DD29F6C
            9FB5A29400475CBBC17870F3170A90CE65E839EAC741C401F1F8A4A4CF075940
            750E3D5E7DCB6606B2331F527F8E7DFC75F8FBCA3344D83E2BED382B14470A05
            82A25C01927DEFF65F8C79456F8F55F767095B46E7E422392DBD2F6A0E152051
            1420FAC4792CAB618CCF8255056CA4195DD69BBE8E22ACA483DEEC47E0E2C3E3
            214987DB3E75459904DA50EC8B20DA897004881AA20787F5253CDECCC7B67E60
            DA83D2FF77CD075AD79B598F6C53EE970071C9F66739B744F962E46B926C799E
            7A42D221968EAD0441CE605D0548EE3EEC0B9056496B244D0BEEEAC7122EBD3A
            339423D1A52D0DD21BFD786A140452890607C2CEDBC992FE6CFBCC1565126E83
            09A2E93FE108103E64E1F2A0C0D755D6197D927685F1A2143A6CA9D9F5774AEF
            BEB50798FEEF8F02DBF704DA9E972F5D9F03410990A43B20CBFBFD24D52B6F50
            830B247DD946B9B91C2AE93F168FAFF88D0A90080890933F5CECD21C8108B806
            8C207C02F3A1D08E4611D218A82791CA70E27EE478BE0A5784DC23E904DB45A0
            281370B5A48F05B2674F801CFD93200508795AD27E81EDBD3E79BDA49FDB3A38
            5BE9198DC022111FFB3F26FDFEB67D447C3CE71A9BE71A9CE7BDA85E8078DB15
            2ED5E5B2AC62FB1DBBFF5749BAD956B9099749FA8CC5E32B7E922C183CAB0089
            9C00A19BB99F0574F9E3CCBB24DD10DAD1BC717D7353B43C63B1020D0C9808B8
            E12DBFF260F4D9276D1781A24CC05B24FD30903DF78B0099118A005143747FF9
            95A457DB38B03784993E05F8CDAA6938EFDF97036969BB9BB78C7ABA0A438014
            BE766644261520C7C32C5BB3C5C3300F64955A410508720E0ACB02E4826297E8
            4A49970474F9E3CC4B243D10EA11BDA746CD2D36661BC6E2E56120F4E557B95C
            0F63C8A9285184814AFF19C89EC313201749FA6C607BAF2FB8E48A71B5B6877D
            60B6D04DD264B74BF7F1C3D5FBE12D4FBD1E18943AD4BC15F983FF480A9017C0
            DC474D61975B0E7B43E3A1D5162A40907350445180FC5AD279015DFEB8C2F5BB
            F46CB331F4237B46E94DCDA3EF6DE1453E1F1C8085D90F8F36492B2575DA2B08
            4529CA3698414B30ED447802E415926E096CEFF505FBD2DF847DD0ACF890D6F2
            ABCB0EC0058FBE0F68906EAC7933C6C699B42540BC81D4983E8DB632743A323B
            EC72CB8106EFDFB0787CC56F1C81A00224E7A088A200E112970303AA02718506
            68875A3B3A6D40B866963621CE85B52442EC2EBFCA4507484A147954D26181ED
            3D3C014243F41581EDBD7EF889A437867D5046379F22639B66111FD72C3E1817
            3EF96E5123A28DD33D6E74F3C2B6DB820049B8EE7EC71E730A8CD7A9DDC22EB7
            1CC27338A384870A90FCDF581720278DB1A99E2B69B1A496E06A412CB1B68637
            CBC8B0892ECB9910BE0E1B6FF9555F9FD562C8E126D8BE268A920F63D5BC2CB0
            BD7B02E4989F062D40083D61CD0BF408B50D67C1D89F0E847950C7CDAEFB9CEA
            ED8B4EC3F7979D6E663E3CF141AC0B9022DB9BEF447C24B8CCF9A030CBAC802D
            30F53EF425734AC0A800C9FF4D0405083D0CDD135C0D882DB48BB9D46A0E1C7B
            10181192B6E019CBF37E6577F9552E14C9CB61779A5E5172F92A8CCBD0600857
            80F0A1CB2B033D426D738AA4BF847940CE7CCC96EE61C72070DEC257E1CE5527
            01AD9B649CD39763708EA80A10BAFDBF1736571A185E0A1D03D51005F54F0508
            720E8AA809107A7AB21AA535A2D0238C4D578006CFFEA349C6DEE954B8F620CE
            F22BE9D986420D3E38192F9142F89BED4C288ACBBB257D3BB0BD6705C8CFC210
            20743F7A79A047A85D7E20E96D611D2C1BE3A311E81902DA1E926AB8FE08A063
            B57C318C3102227A0264AAFCB90FF6C5C765924775B95B53A80089AE0079E907
            0BAF168DAEDE17402D88378904D7753F6A3B1B0E9CF96025696D73DF8721425C
            BB9381FE28D87F14428F6D57DACE84A2C044B9BE37B0BD872B405E0E0BC6D335
            C07A497BC0382E099CAC9B5DA91A8F6C020E7FE41340EF1CA065A3896E5E8C68
            0910C979E27E79F58230CA6B02385B758AE53C287EE20985DCF72A4090735044
            4D80DC29E954FF6B42AC6187B297A46EDB19C9E218A53700CDCDA3B61981E20A
            90FE5E6024133501427E87A0A24F2B4A6970ADFFBE08D2783B5C01A286E89571
            86A43BC23810975CB5A7CCB3A89FACDC0D6F5CF856A98553447C6C76975C8DD3
            4E474780B4CB4BCE602F08A3BC2660031CEF7509B5FBA8255480E47C1E7D0142
            D33546C09D17445D8831FF90748CED4C8C8133114D72C99A5B83374A67A5A4ED
            4774EC3F0A11358685302E5015C50674DEB1BFA46064011F32F4B4A37DE7A7D1
            75FC2DD8C6C9C8609F3B24DD73DA33D0A3D416374A7A6B1807A2F898D960C639
            DF5DBD1FDEF1D8BBE48D54BD5606182C32D3904B3404C84C185B0B9B06E71E2F
            92F4A0ED4C283E922B1E723F5301829C83224A02641F498B306EAB55B784BA9E
            B774326650427B10BAE70D5284445F80B02C7681592637CB765694BA844FBDCF
            F07DAFBCC79D659772DFA51844AE11F71DFE191C3703D8B8A3A0EDF71F8D0955
            3AEB60668D02F77AE578BA6A84F3D8E5FD0B4FC6754FBF1A68DB683C5D217770
            12590142517B0FECBADAF578BBA4EFDBCE84E2332A40B24458807C20F7086749
            BA2D98DA106B2E94748DED4C14C5597A4511D22A22447AA49180D664C44380F0
            EFE192FE0FD93B5B5142E35A491FF5654F9EE8F01AEC8646F390A1210DF4334C
            C200FEF9C28BF0E2E9C0FA5E197706774BD220F7D361145E0D70B2A4BB833E88
            E3E94A9A7B0C03873EFC26FC67ED61224AB74B8B3760663EF2EA42240508DB68
            C6D98882F7C2EB24BDDF7626143F29221EB25FA900C9FB8D750172629E00F9B8
            A42FFA5F21624EC20948F447DBD91817CFFEA3ADC354CC20DCF3C647809013E4
            F53DB6B3A3D41DEF94F49DAAF6E0CD62D2CD7652C4464A3AA8860663EFE53C6B
            A00308B9BFBBE7029D4F2273CC75CE4074FD406022847655BF0BB514E3C9F724
            9D1FE40178F9B9E46E761BB0A21B38F1F1B762393D5DB573E2C515AB00222E40
            5E2A7F6F4734E28CFD196AEF5A83A80089AB00F9112C446D8D386CD9B9AE7BB1
            ED8C4C0807DFACF06D017AC66200C2E1A1E80A907CFE4BD26F6D6742A92B2A78
            02EE2EA3F41C3B70A683E283C1462940E07E97191EFBBBDE19386EEEDF70DFC1
            BF469F7CBD632490B5B35C2AB3D44E71C686C0975E79ADF90C19B63FB60D78C1
            C31702DBE78BF85883FC255788B200A12BFB5F06554665C23ABD40F2B6C37646
            14BF5101125701C208A447FB5F2162CD7218DB9821DB1999142EBF4AA5831321
            3D3DA36BD1E3019FB6DD055D8EA5040F079FF494B77AD22D790F655CE1C1CE8A
            F72C4507C547031F0CBBCBAFBC99CC71EF63B90FB7CEC385875C8FFF3DF8DFD8
            BACD3C21F7F9EEA40A7A12C6BB97529C9749FA53503BE7D54FC9459DD601DCBE
            A60D67FFEB0AF940EA46F396E29EAEA229403E82E82C63A6374BC61B59663B23
            8A4F14AB8B2A40B244588064973FB64B5A2969BA9FF5A206B8538AEA74DB9928
            192EE1A0517A738BFF46E9BDBD669FF11120E42530CBE73A6C6744A969F84475
            7C0F6C9EE860034CC141B1C1E555ECACD24DF23A69BE1FA6E828584239AE00E1
            F6CDCEFFCFEE75332E9AF738B60E9809139F612C9097DB29D6C8F30B49AF0B6A
            E7B4F7989636E63F9F5BF2025CFCF46B4CFBDBBC2D27B279E405C8D7112D3B8B
            E32469F0DA5A420588F337CE02847EB8A311682F5A7C19E6E94D4CC8989910BA
            E6E5320E3F8DD2E32940C801522E74AEA0EE4495A0A0C83D33FF23DE27EEFDE8
            D872C828B2B1D9B5EF4899EFB3B321DE6C07FF942A40B88B6163943ED0815B5F
            FC119CBB4B3F36768F5994532D0CF27989CDC28D288C1D314F524F103B773C5D
            71424CAAC3BB179D886F2F3947EACE803138CFE45EE1C80A104EC5DF8C203CC3
            55CEEB24DFBFB09D09C5675480387FE327404EC8063D7F83A49FF85A296A031A
            167ECF7626CAC21BB0B44F31031FBF44487C05080BA55306773F9717A7D9CE89
            52938C7D50E1090FDE87E946D7A603C69EC3111DB91B6772FE952140F8031AA5
            F7CC70225F3F73E4E7B14F2BB0BEDF57A3F4574AFA9595528D36AF90746B103B
            76C447ABF170F68A275F8F07561E6F8CCD530CAE5E7CF051FCAD3501C2D81E14
            1F0704513E15C2FBF3CBF1ECBF94095101E2FC8DB300B94AD2C5BE568ADA209E
            D3B51CB4B022B5FBE8192BDE02C41BE3D155EA876DE746A939DE25E986BC4F28
            403AA601AD1DC67943564864F2FE8DFDAC4C0142284276CC02A6AC40EF515F41
            B3DCA21B077D8B1142271CB403F1796225D6D0C185EFCBD2B87CAE414A796A0B
            B0AC0BD8F3A10F009BA5F83B686CEE75FA85BF8A9C0061DC989F4A6AF6BB7CAA
            E04B92B14FD8CE84E22345E3CB386F463F530192F379B40588069C1A4B3F4CA0
            A40DB6335211B94F6049B546E9B5214008BDB1D0FFFB4CDBB9526A86B361DC8B
            1A2838B80C72EA4C73CFE4DD7B010810EF75D75CBC72FEEDF8D50B6E479FDCAE
            DDC3BE8810F692F402383FDC228D2C52B260D0D3AD7EEE346BEF21C3F6BBD735
            E3E4072F927A244AA47553BEB179B405C8A592AEF0B35C7CE03B92BD778E5B16
            4A3C510132E69CE327408E7FAFB7C542446BBA340AF0A9DFC1B6335131BCD0C3
            832648615BBB6BE05A8508A91D01C2F71C40D0385245B7E2079C2558E4BC623D
            1B91FB6EFA1C339A1C2EE24237E7DFD8CF2A14204E9C1019C1F675E0B85DFF81
            FB16FC0ABD03408F3FEE7969437556A8251A5DFE07E609BF6F38C1059BE08C47
            DEFAE4E9B871E96940BA4FDAEEAEB1C6E6D11420745EF36344AF8E182701E39D
            83121F52B4691D705D9227A0022497780B103E095E079D622F846B58FFDB7626
            AA6664483AB236A0B5B53A7B90DA1220DE8B3749BA5AD22CDB3954620B674877
            861312104670B4C8FDD631C3DC7B63085080B0C31A6A7262847CFDB0ABF1FEF9
            CBB0B5DB64ACCABBF63249978758A651E54E49BE79457434A3FC992963AB6ED1
            AC6F7CEA1CDCBA4C76DFB651C626FD26B27996C80A9013606288EDEE57B9F8C4
            ED92C9B3273C072506C8754BB7003B96CB3D21ED6AC3143720AB0A90C2738EAB
            00395ED2BD7E55971AE272446F3AB90238289181509BDCB82D2D459EC896486D
            0A103253EEFC4FC2D886A80857CA853662C739AF28F0D9F174CEC1F8B657010A
            10E28810B9CFFBDBF0A3C3BF8837CE5D8B8D3D552FC5524374130B6A0F49CFF9
            B1336F68315D2ED5A35B81C31E9426A847EA4DAB888F444E64F32C911420B41B
            BDCA8FF2F099DFC309469B5B6671ECB7EA1DB9660D1DC0F6853869E33F70F72E
            67CAFBE966264405C898738EA100790F5FBF5BD2377DAB33B503FDBBD786CBBE
            8CBB0EA37D9AD4F986CA6284D4AE00F1067987C074A8AFB19D5B2556D04BDEF9
            CEAB41E9183B3A8DF1F9B033FBC11EA6E0660B5880100E607BA73B4B78B61EFB
            194C6D02D6C9EDDB50F9ADCB60AC5C6216C79BDF2F3E24E96B7EEC88C6E6AD52
            335ADB819F2F9F87D73FFC0E38311F5BB716CC7AE4122901B29BEC836386A82D
            B922AEF8C8C9B70A9078C2D98EEE253863ED5DE84EB7E3FE9DCF32B3215CE2AA
            0264CC39C755807C05A67155F2616C94C76D67C2371CF120157ECA347373942B
            426A5F80781C25E902A810514A83DE75BEE4887C8AFB6933CD7D66663F4E96F4
            5E37AD339B872040882742A62E43CF91D7A3255D957B5EFE8A816A77B552C2F6
            7944D2E17EECC871B14BFF508DC0454F1E8BCF2F6620F5A4092EE80D488A1219
            01F25A980796D3FC280F9FF99DA473F3079745CF41893A0D53457C2CC629EBFE
            EA5CBAEDE9A9F8BF39274903D6A602A46604C8718E00B94BD229BE559CDA80BD
            C11C184F58B503976231527AC7949CE8CC25523F02C4FB8C4E19F8649B4264AE
            ED335022CB39A09136EF2D3ED29E36CB9BFD20AC3FDF91B416C655EFEF421320
            5E8C902EA9BA331F47E6981B9C5DAFEBAF7826844F96CFB651C01180712D1656
            B303CE7AA4A4DCA7CBF8694D17F0E6A75E89BFAC3E5A84488FA41DC6D87CC2B6
            D5BA00A13B45CE00BDD9D792F50F233EF2CE4F0548FC48B8331F8B71EABABB31
            946CC46022E5FCFFE79C935580382F6B4780F0E355306E0595511E90F412DB99
            08040E945AE819ABCDF48AA5527F02C47B45FF34ECD8B824EF24988E58513CE6
            495AE1DC5774BD3B7D76EEECE235C80F50F87DA9581F94FF3B4211201EDD3BE1
            83FBDC84AFEE7B3F0664F7DB872B3276BA1CC618BDDEA08DC3A7ABD901AF448B
            14786B23F0AF2DC0518F4A95D8BC37307595FB6DE1A0A8185605C8AB60EA72D4
            0CCD3D46C547DEF9A90089170963F3E1888FBF3AA2A337D98C86CC0006934D2A
            406A5080482BE8F87857F2918102DE6E3B1381E13DAD75DCF30E95F69BFA1520
            B950A89F0AF3D4FB0898C1A752BFD0209986C9438EC7ABF6E9C6D9C3A80029E6
            BE7605284A32B865F4A3200588FC1F4903DB76C31BF7BF093F3AEC2EECE896DB
            79A46C11C241E8CD6117B065964ADABB9A1DF02AB44A41B788F8B865ED54BCF2
            E10BE57AC89B96CD392E765DA22740A6CB4B7A097C9B4FE519043F93FCBEA1F8
            F9A900890FAEF8E812F1B17E547C24A53D4C65865480D4A60079179F1ADCEA63
            2DAA153E06E39EB536F10635344A6F681A67005E6023A202A47083161811728C
            A4A3619669EC63FB4C95507954D261CE2B8AFAE9B380A676CFFD2E6F140E60E7
            8FF3DB1B255D22694DE03320DC0707BDFD6DB8F2C01FE2927D9E404FAF891152
            8608D9D33D9F7A82DECDFE56C90FBD798DCE56386E08CE78EC1CDCB1FA581940
            49C1A7C759D91B2D01F246495F8471311D55BE2BE91D63CE470548CCC899F958
            7F0F06128DE817C19174DB42152066A35A14209F97D79FF4AB1AD510F4A2F17B
            DB990814BAE3E54DD22E83A674A64070486D49B5B8817FE46667C5510132769F
            F93448DA0B6656E4509801DB2E6E62AC1DDA14C928D0BAABDF4CB1CCFBC81670
            89D1C416B5959296B419C6462B1DD0FEB7BA69B2FDF37B463FFF86F132973491
            CFD38D9E01FA6EF2E1CA49F6C1F3F884FCE0DBCEBBC004084C6736D82422640A
            AE3CF807B8E480C7458100EB06CAB209B91126664E1501856201AFEDDF51A18B
            591A9ACF96D620D10CDCF6DC145CF8ECB958B4E11029E81E1360B0646190F765
            DEBF319F177D5B910039485E5C01E37A39CA70EC7251D1F35101122346673E4E
            59FF570C8BD0E8CD111F440588D9A81605C869304B4A947C3E073390AA5158B1
            1BDD27A3CFE185C9ADF249C6B941924E2C83041E6A9C0BB4EC21F748AB6C3724
            43CA6DE6C9AE0A90E2FB98180A8FA9A048C9A0DDFDACD94DB98339166E374CCC
            8160844AC211071506832909EEBF3FA0FCB3C5EE0E30EF95313468820F4E9D9D
            1B7C9001EBEE28710F7F05ED0C321CF4062440088DD2079B9D3821AFDDFD5EDC
            B0EFEDE8906C6FECCE76C34A1530A239975BB5B799E735172C3E15372C3D49CA
            5FD448EB6653FE99094AD9AE0049C9E6B47589839D8FEB12B9703059787E2A40
            228FE3EDEA993C9B8F64411BA802C46C547B02E4D877555D7F6A929A6EAB58A9
            F9B03E859D8717E3C8913532A26B949B23096FE140323382C6CC0036D3F55DEB
            9E327C9E05F0C19D331B12E4C3F300CFD9AE00A9FA67BE51D375DB12EC10DB67
            8A0869CFB5FFB850D2FF96B9A76FCB0EB82C6B63F6133F0588E3198B0F1D52C6
            3BD6F425F8CD01BFC0CBE7AEC1B0DCDF9B062B76D35BF7B08867349B17BF593B
            1FE7D1BDEEC68380B6E7A550A56033254C08DA1320F4F4C7598FFD6C966189FC
            B79CD6CDF965A202247E24726C3EEEC680088CFE22E283A800311BA900A9176A
            B6AD72673EE404293E0ECFACC316B48CBB75F3C800D218C270A2017F69D85D1A
            0C9A388C60EC6827137171A202244BCDD66D4B70F6A3750A30A5533A9CC1DC6F
            6E00D7A797CF0698E525DF9034E8BB00F1488850EA99ED1CE20D7BFC0DDFDCF7
            3674C8007AAB0891E18C569352A123C18E34D024CDEAAA2EE00D4FBF16F7AF3A
            5ADACADE0243F3124A347C01F2624957221EAB20B8F4F21C19E03C30C6585E05
            48CC481857BB5DCF3806E703C9C671C507510162365201522FD4645B953BF3F1
            8C233EB68AF828653CDC280D40930C54FED4B0A7FC7C9A599295B75FB9915232
            0063E5CB0CC0FE28BBC8B9AB0031D464DDB604EDA69C47DF3B49D56FC85D7E45
            6843704C157B67E4F1CF483DFCD9041928FA72FCEF0A36E292A0E12611223380
            A9CB71EBFE3FC3B973D722D30F6C1AD265591331E446336FA7A99C94D73B9F39
            09DF5B7E9CE8B95613D19C658B2203A389084F80CC97BF1F95F43EDBE5582274
            F6709EA46566605658262A40E24322CFE663D099F9681A577C10152066231520
            F542CDB555DECC4752C4C7221C31B21E5B12A5890FC2A621255B3767C6BAEC4D
            39B623D233A46760696A17F960068C10E9777F1985C2540192250A97A356E072
            AB3611E4AD1D85B31FF47DB4C3A7A3DC03F394FAEEB15F5529403C3858DEC1FB
            7608E7CD7B003FD9FFF78EDBD86D7D329E1E29E85FEA1CB668EC4B3B39712CC5
            79C3AA7DF0AEE5278962DB479AD86E49BD287E93454280D011069706BE17A68E
            C6815BA55C1883A9CFBC5501126B68F3D1F58C888F7B4454344C38F3E1A102C4
            6CA402A45E886D5B951E27F3A6D1DE79E819111F6BB139E16FDF93A0657566C0
            19DE2C4BCFC4624788CC74674A8660BF40558064B17D296A05CFF3155DEFB223
            C9775BCDE12963809CE4E311E995EFCB3006EB5E268ABE1CFFBB892A9FE47FA8
            59867922A63AD6E2B6836EC0593B6FE70A2D6C1C50114238EB31B341CA42C4D9
            135B818F2D391777AC78A971ADDB4C8766AEF3DDA265655580D0010603603228
            E634DBE55806C6D355A26080A3022486240A6C3E9A279DF9F050016236520152
            2FC4AAAD72975625447C647AE08C18C638204A63D6F02A1C95791E9B027AF045
            23F6940C62DA337DF22A83C7D373B1A6717F378B5C9665B3505580648955DD8E
            3059D7BB33CCF2AB4C51C762140C17F87C647AD6BA56D25DBE0A906C7D97FF7D
            D39CE085AF9B7F0FBEBFDF6D68165DD22563ECFE8C7D1FD236A05BDDA9D2BCB2
            1C204DD927161F8F2F3D738689ADD2B6DEDD2AB7832EB6172B0244467CF8008C
            D7A8D9764BB12C5819DF2CE9C763CB450548FC48189B8FEE458EB7AB890CCE8B
            A102C46CA402A45E88455BE5D97430C9E860783D5E9CD9801611208363423064
            D02CE2A03790D009F9784264FA480F9E48ED8CE5CD073B9F66E389D82A2B1520
            8658D4ED18509A00E186E7CB9F6FC1FFB8282240F015497F30871973DC222F4B
            1120301DDF50A3133304AD1B71D9BCBFE0F2BD1ECCF685433208DF3E3C1A3F64
            D0769D0E08AFFB9FDE6ACEF9FA9587E1432B4E00B6ED0A34751B43F3626E75ED
            0B10060F7C2B8CF8D8C9763996C9D37212F4CAF578F1725101122FBC990FCFE0
            BC3CF1415480988D5480D40B916FAB783569D3D1273566038E1ADE80CE4C377A
            130D1872DCB98F1D110C597876392DD38327D33B6145A36D11A202244BE4EB76
            4C285D80F0CF0B619EE6EE1F404E18A9FB3A39CC2F8A1CB7E065890224775B8A
            90A1262CD8F5415C32F7CF484B4FF2C229EBB16BAB09FECEBE87A7EFD42B2FFC
            B77CDE55E0D2975FF58F44C72A6C2298577A029BDD6232FBD066E094A7DE8EAD
            6B1600CDDDEE722B8C7F26F604C83EF29682971DFB54BBA55811ACC3EF9073CA
            8FF5A30224A6E42EBB9ADCDBD578A800311BA900A91722DD56F14A36494D598B
            970CAF44077AD12F62A4170D65DFD8614011F27472273C6B75264405489648D7
            ED18519E00E13F0E67BF23E90D01E568A1BBFF1FC171595AAD00C9FD8D9C679F
            0811DA8964D272CE2B70506B179E1A4C63AF741F2E98F34FB424873090496068
            B00D874C7D0AC74F03B60D8DEE815D2DDDFC66C30D79B03E8E981986ECFB12E1
            A6140ADDAE33329E42B3ECBF2555FE6D36E4FED679AEE3EEFC1FEB81CB97BD0A
            773E7FA8396F47789422244AFEB060938A05C87192283C5E9B730671E36392AE
            2E2A165480C490D1998F5336DC8BC14463C9361F85A800311BA900A91722DB56
            F12A4A2F9E5983970D2F71663BBA51D94D1D26D3323BF0547A272C6B948EDC11
            2161DB84A800C912D9BA1D33CA17201EEF97F4F50073C6780937CA0125E13FF9
            C7AE44801422E73DD02E9D6BDAED20A5428DE4748874EBDB2A23F78E4D8E5E31
            FB968E3639888BE63C88E9E941F4E6345743238D98D1B40DAF9EF9ACD3370D97
            717F70DB4639F44E6DC88E23D00FACEA35E380729822595CD803FC61E3119892
            EE4797E4EB8AC567013D9D723E1B64E0339413D36312C211201CBDBC5A3E6027
            7E6279671B29E86E9AE2E96FA3E7A70224DE24DC381F8B70EAFA7BDC6557958F
            535480988D5480D40B916CABDC998FE1E770C6C862F4269AD08774E4C58747E7
            C80E3CD94011728819BC21CC99101520592259B76348C502C47971384CA0C223
            02CEE5EDE0D2AF0C7E03C77CBA5A019299FC63BAF4A5372DDA90247236A0AD04
            C5C998955E2264527D8EE7ADB21931BF7DF79C47D0961C416B2A83FBBB66E39E
            8D07C840A5BFBC7DB1791D907C77EF24F91E3279E68C477AA0BC6082E36EE69B
            009106D49945A39DC4BCF20B2D52FC50D27BE4A47AF34F5305487CC9151F7F2D
            CBDBD578A800311BA900A917ACB755BC5ABC611B90AD8009A9AC23AB71C6D012
            111F8D223EA2B9E46A223A333BF04472272C6F661FEA454F9FA8B0FD1AADAB00
            C962BD6ED708D50910EF258DC83F14426E5748BA490EF873F9FF48F16CFA2440
            CAFE7DC6CCA00C3757705A19230E06DB46779D12F1D0D053FA6C456ED644C420
            CD7013E3DD24D6048854B2C4D9304BAC5E564141450DC6C879B714C94FC6948D
            0A9018E32DBB7A5AC4C7BD15199C17430588D9480548BD60ADAD4ABB894FE078
            C5BAA546488798E093C36E9C3EBC1CFD5269E3283E3CB81CEBC9F4CE58D178A0
            7B8E45066ECECA0E7E9770454AB5A376152059B41FF6077F0408FF9C0163BB31
            37A49CDF2FE966983825CB46F3624B80C489D005C869925E29E9E588971BDD89
            603C9B0FCAC92E1F2324B22F5580C48F448EB7AB7B2A36382F860A10B3910A90
            7A21F4B64A04865319BBA4067461D7916D6895EA3A3DD38369223706E4BB94BC
            EF17714217BB71151F1EAD9901AC4B76A07B9C062A3D32220D580ACB523B9980
            868E10A1DD48A50318152059B41FF607FF0408FFD063D1D5306BE1C382CB5EEE
            91740B2846329912D640A900A97CB3920508835772B683331D07D83E631FE1D4
            D24530B171303AF029281B15203124577CDCEB8A0FFF6C535580988D5480D40B
            61B555CECC0607D75B64D0BD1D476436613A7638C6E5ECAC0744700C387135E2
            DF7517D29C199AB0814AC9194B0DC5B2F40C2C4EED9C2344265A22311E2A40B2
            683FEC0FFE0A10F77DE63CF97B0DC25FDB4FF74E0FC088913B25AD9CF05C4AFC
            B88A0D234A200284EB6C5F0A33DB71AEA4BD6D9F6500DC0DC624492416E69587
            0A901A2077D9D57D551B9C17430588D9480548BD10685BC54AC5190F5E91ADD8
            73782DF61CD98C46911D3D8E6D47AA2EA30D17C2E68B22A43D63FC73AE4C76E2
            A9C679526CD35D11520E2A40B2683FEC0FC10810FE6D97F42538C6B956E00DF7
            2F497F8211238FB99F4105886F028481024F85719F7BA6A45D6C9F59406C9774
            21CC12C3B1034515203127E11A9C3FE5CC7C0C259BD1EBB3F8202A40CC462A40
            EA8540DA2A2F7239673DB662DF91D5D83DB3C5891A4E57BAC335B0B42A081859
            9DE5C278229C19BAB3E950B96F674B19F696B117152059B41FF687E004880707
            A7D7C20431B4C90A98A55AF74906E92AF599F14EB18442B37C2AD552B1009929
            1F321012ED7D8E94743CB2A38F9AE587922E91B47AB45C5480D40EEECCC7F6A7
            71EA867B7DF176351E2A40CC462A40EA8520DA2A67B955BF54CAF5382EF33CA6
            A01F5BD1EC2C335226874284B6236CE0FEDC7448992244054816AD6EFE10BC00
            F1BEE3BAF94F4AEAB07DCA2E0FC1CC8A70590D97D43CEAAC962CADD06CE7BD4A
            4A1620BBC244BD3F1646401E05C793555DC0B81E174A21DC36B65C5480D4042C
            DFB437F3719FAF06E7C5500162365201522FF8DA5625E179B13A72E819CCC96C
            47B713C323BE9EAC6C4111D226224EAAB32B42E648B9F694F04B152059B41FF6
            87F00408D95D5E7E56FEFF8FEDD32E0245C862383324CEECC81392964F5816B1
            A5E8CDC308F72F90B4178CE0A07BBF0592A6D8CE6DC874814B07138E3385BEA2
            65A502A40648046EF351880A10B3910A907AC1B7B68A15ACD1895C7EE2F04AA4
            A50AC621727994C99F0939581AA45DDCC19F1B95996E7DB383C16C286615201E
            DA0FFB43B802C47B7996A4CB6096F144154E4BD2BDEF5249FF765FF3A9F833CE
            DAD3F8C251C39E30331BBB493A144678D07DF2AEB63367999F4ABA185CAE574C
            54643F5201126F12599B8F53447C0C86203E880A10B3910A907AC197B6CA8D5C
            9E598533879F955EB95192CE7AF80145480B06445E24715F7A37F7861C3183C0
            64BB247A35959B37D1E27E3E5830B85301A254891D01E2BDA1BBDE4B6106C271
            81E2631DCC2CC9B3929E87992959236995FBFD368BF96324442E73A3A0A091F8
            1EEE6BFEA767AA7930B1386ADD76A31CEE95F419B911EECE7EA202A446491404
            190CCEE6A310152066231520F542596D95675C9E2AD801A3FBAEC0599965E812
            2132E018532B7E4111D28021B466FA736ED111F44959F7251A459C24F0AF34E3
            8874CA17AD70023C3A410D87C6EE4C0588522E760508FFD05BD6C7DCD462BB38
            AA8427D42DE939491B256D72D376F73D675536B8DBF2730A152F6A2BB7D992B3
            2F36C673DCD71C1D25DDF7ACF9D36196464D77CBAFD37D3DC74DB4D368B45D18
            31E03F7084077E65DE160A8882CFB21FA9008927A3331FA78BF8E8F329C279A9
            A800311BA900A9174A6AAB3CE1C1D423956D1D7645BFBC6249271DBF56076636
            61505EABF80807CF752F8336A6A57EA7E51AF4251AB02ED18145A969F2A50892
            44B31BD43067C0A802442917FB02C4637730C602F02198C6485182821EADBE28
            E99BC86B405580D42EF6663E3C5480988D5480D40B93B655ECE7F9F04D844766
            038E19DE8069991D1849D03CDA5D0E24FFBB653B3E8957F1610F0A9296CC80E3
            EE7843622A56A7A660ADB36C8BB32223468CA80051CA253A02C4635F8C643E28
            FFDF0915228ABF50785C27038DEB61669C0A5001529B244237382F860A10B391
            0A907A61DCB62A47780C6FC45199F598861DE843A37AB58A389EDD487366109B
            13ED782ED581559C116160C3112ECB2A589AA502449988E80910A9C7CEE7FB48
            FA882436EE7AB5956A5829E9EB926E00854772BCEAA402A4F618151F611A9C17
            430588D9480548BD30A6AD12D19168302E5F873788F05827C2A3CF111D2A3CE2
            05AF5433869D59111AB13F94DE059B52F3E4FA369A382DD965E36EE3E00C0AF9
            190798B9154305485D135D01E2416F4D9C11792B8C81B5A294CAD39238DBC108
            E67DD94F5580D40909D7E663214E5D7FBFB5990F0F152066231520F582534685
            361E467874A257DE71C623A54BAB62CCA811FB20B6265A8DC17A72AE1122EC73
            873DBBD626233E3D8F5A9E4B5F360E1C848286ED65D4041520B541F40588B72D
            6D44D8D0D373D66CDBC5A6449AFF93F40D493F2EDA50444E80C0B4CDA9066407
            9279DBAB00291B965D4AFAC0AD4FE0D40DF759B1F928440588D9A8460548B9C3
            E8522A6229FB2CB5425732CC2FE766498EFD6DC29BF1D8E1DA78ACC7B44C2F7A
            6570DAAF5E186B8E6669E09A44483C959C830DA936EC3ABC1DBB8D6CC5907333
            26B005CD78363515534706B09A2E7E936DC6768406ED89B69CC16702639EC6E5
            91318DE7B84CF2DB8AC9D96F7202F3800C97A1F9D1D124CCFDE317196F895C6A
            E2FD66B72BB5CDE0B93698FB7DBCF21D6F9FF11120DE3F7A7FE26CC8DB251D52
            620129F5C16F41C3F204FE34FA518405488A0F8552E6FE1BDC26F5BE17E8DB80
            3D86B6491F3DB67DC8A8002919F6796969CB0EEC5EE6BCB72D3E880A10B3510D
            0A103A4F29A772B140D2EE6F0A0752E99CEF0A97AB14EE23E96ECBEDC61BF478
            DE1027DA57B17D73DB94FB3FE3E6B3D8FE99870677FF999C63F0C2F7BBC2834B
            AD7A9D181E2A3C6A1F0638E4AC08FFF6398352039DFA36674C7D1F900E8E9ECD
            1AA591DE9C68C573A976A447E47BA9632BA5911C48D0AB67B1FAE6D5FB4E8CD6
            4B8F949B86C7F99D57A7CB15080D39BFF396926D1F675BC64D6997D464F299F1
            EECD7248B84BD9E477996DEEF1AAEDF899AF2966068A4BE432DB26D88EF96F75
            DD2D0F4FB2DFB4111E232C8F1E140FEF30C13EE32740723917468C9C5BD6A550
            6A09BA37FE85A41F487AD8F924EF568DA00049B6987B76709DDC8A3D68EBDF8C
            03FA9FC794C12E24E57EE440754485469598FEA637D52A62246D5D7C10152066
            A39A1320FB1C7D1ACA79B2DA24039227391848D2653ABD0879CB4FB8D31D5231
            D891F7E1A0CC5619B0A78BEE8383B9CDB2A7B5890EF92997264F71F7C1C1CE30
            8CF0E0FBED9833B21633337DE3EEAB10DE2C5C5AB324310D5991939CE2EE93E7
            D9EF7ECEF772638D6CC4DE998D4E84F221EF42CB05E06CC7AC4C9733E3A1361E
            4A2E09F77E11F9EED4E546E709B9B9A9D8C064C6990131FED132F8736A2E4612
            3BC1DC3FACEFAC77F4C4B51E078C6C964F5279B52DE9365B8B928C67C215348D
            66FB09EB64A3C953663358E7779641F634F90D7FB18BD46B7A06CB8C698E32D8
            986843B7DC9B4B18CC91F710EF1D67603DD1AC8DF9B5111E23CE31F715E1BEBB
            1BF43A53E58080A5B146DA9C2793B3316F648BDCAF9B8BEE97DB31FF0FB36D4A
            CE72F353AC9C5CE191E94172643D8E92BC76C876438964D1636F14F131BACFA6
            5121126F01E27D77A07CFE1679F13A6834EF7AE15F927E22B7CF4D5281D7E77D
            133901E20EC01ADACD67FD1B30BBE7591CD0B3020D23034E9B359468407FD2EB
            DF557CD4222A40CC463527404E3DFAC8B22B03632B6C47331E48B053E640AA5F
            0606CFC9C0663B3A64B89EC90E9926A65186FCDDF2771BDAF058829D3807577C
            626B84C781220C2878862A987948BAB9A070D92203BDA745ECF425294ABCA7CF
            1BB0FFF07AECE106DE1D2E302EE6315578287EC30EB3436A6597DC3F7FA70849
            CD729EE8BF70F839CC90BB61789CBA6E24FE30D68A587F2C25F75D6296BB4490
            03ECDCE5418DE606977DEE31B45606EB9BD0941814E961043C07ED7DF27ABC47
            0EBCDF5232B0A6B0EA96C1F6E3A999D8CA7B9C0F0BC608111375C5D8CCC8EB61
            111E23CF63FEC856A7C1DB217BF1CBDC85F96A90E30F4BE3D83B8187D916D9AE
            5104C2BA648788869D0A8448627459E58899DD9C9AE9C50EF97E60027B2E1EBB
            394317CE6DF837CB9EED14F739D26F3A88780B10EF73AAE157487AADA4B3FDB8
            664AA460F0C6DFC0B1EDC07DCE2745671AC67D63085B80A4283CA482F6AEC4CC
            81F538B867399A86FBD0936A95B680ED80F6CFF5800A10B351CD0990971C7D4C
            D99581330CCD3210E19AF94D221EF8BF43BA70BAA21D28C35EC318010F3B1D3C
            073CCF8808795EFAC123326BE5EFA00C60B8E754C522C00B4AC77DB7C89E282A
            1E11D1C4E1D7023906254A977CEBF93C529430F0EE9F4647C837A25D5E5318F4
            9630CBC7FB222D35796D622A1E7506C214ED9EFD82111EBB8B78DF47C47BA308
            89ED4E44F8F2EF21CF40BF3DD3EF0CD01F4FCDC656E78143876B13313C2A3C46
            36E300CE788C6C76F2D095B07F4F65858808A7871D57CBB34D9E452019E1D157
            F6EC26F7D924FB5CEBEC932270A6591232B5C35DED399EDC8A8500C9FD8C6E7C
            CF93F41A4987557D31145BF069C19D926E86233E12F96B2F232B403266A69176
            1E3B9663F7FE3538A06799736FEC48B545665990121E2A40CC462A400AE0F086
            85EA47A46F76F01C5CF538C2C3DFE07D9E1869739FE076ABF050220097FE0D3B
            F322E52D1DA010E1D2AFB589293218E6CA9966EC3AF29C111E9CBD907BC88F00
            98BC4778A7B43942A4098FA466A22BB9331C9B08111CFB0D3F873D46B8D42A81
            EE08088F31E5248281426A7572BA7462C3CE2C6D8F3BE351292D9941E7A10997
            85AD4AB46373E702A061AA7436DD28BE0424760224F7CD51303323B415D9AFE2
            4253C2E46F926E9174ABA465A31F17131B4109108A083AE84821AF3EE50E08B3
            CE1D72975B25CC0093DF752FC6CBB619D394EDE90E201BE057A9375480988D54
            80288A12195A9DD913383385CDD299F73A738AC1AC83A658E28CC80619746F12
            01323FB3D911F5DD596711D1A5C91DE8F8E94882FB9C32D283D50DB3F050E7F1
            D297B48E1521CE00CC1D34397D494E380E2ED91AEE43C405482E2748FECE91FF
            341C542F5AD1816BFFEE9774BB74EEF462F59FE29B85244038004BC920B16F3D
            F6EA5D8CC1845992DD2483C8A50D3345AC33F0EB00D0D829DBB598FBC0F33AC9
            C149CFB338B26B213A87B6A227D922BFD7198F7A470588D9480588A22891C218
            B72330E1918B17C49162A4D759CC18FC31A30C97AA4D1DDE8ECDE9E97870E609
            EEE06A30FBAD6327E20CB052E67FDF06384F7D69C04E57CE4D734C67E26C37E4
            DA91E4DBA3157B694980E40AA417493A131425C089560ABFBE619022233A807B
            252D723E9DD005B8DF02C41D687129A63720721C33481DE9598AE3762C42BB08
            F4A18419642533705ED38E8B76666B1BA73B02A355EAFE938DB3E45E980D0C6C
            C5495D8F3BB3953B28E815052A40BC8D5480288AA228598C08E99201D54C3CD6
            BAB711128EA818C021FDCFCBB7C38EFD199FE2CE1AD8E20CAEE824834F769F6A
            D91DCF73F045E1929E22BF1936310DF296A58C7D19010192CB9E924E9274ACA4
            5324CDB57019EA81476044C71D921E8471A39B4F5802843379F406373C000C6E
            744576022DC3BDD875A40B7BF63D8FFE245D99178B2161965A358F7021E4B073
            FFE42EADEA97DFA89D87928B0A10B3910A10455114250FC7B140A61F4D9CC970
            1B5E271A52A221EB1CD471029E34119BB93D075FED3260E3765DA9763CD7D889
            95ED0748072B6264683BC60881E80A905CB8C6EC207099562643178B2F81465F
            AF044E85AD94749774D88C4E7E37F2EC39C621700122032619084284F441BD4F
            A063A80F1D233B9C198D9184B165A3D38BBE64F497652AF1410588D9480588A2
            288AE22B0DD2C1B60FF7604BBA030FB4C9F8BD659EF4047DF9AE7DE321400AB7
            A5E2A2272D2ED97AB1A42360664C9A822DD1D8C1D98C67615CE42E74FF2F75BE
            99505414109800916B4951C165513B9EC2A9DD4F385F3B415913A5C5E852944A
            510162365201A2288AA2F80E67455A477AD132D287DB3B5E00B41F2C1FF699E8
            EF6CB8B363FFC468E7E508949CA52AD11320C5A0009193C3BE3033247B48DA1F
            7484581FAC85111B1418F458B55CD2BF256D2EBA75140408BD500D6DC71E3D4F
            62DFFEB5223A52223E547828E1A002C46CA4024451144509081AE8D2C5F20056
            36ED8CC5ED874887DB6E8408573739B62583667664588449BA154ECC0442A132
            4C31526CCD3DA224408A315FD2EE92F696B4C07DCD44B13235B8F20E94D59256
            485A236989A4C76096553D83F1C44631AC0A90A489C731B8190B7AFE83DD0636
            604BAAA3A2D8428A52292A40CC462A401445519400493A2BE9A70C77635D7A26
            1E9EFE22389E86FA9E07C5C12C190CEE36B8C58903B35D3AE385746D4A8F5A8D
            D3E1AC78A23BD3E19E9CFDC542808CF7FB9D24C90982C16E2852385B324BD22E
            30B625B3DCFF612EE962C668A4B30E26C2386734E8DE8C4283A263A9FB1DDF77
            9525208A614580B84BAE68EFD1F32C5EB6E3512704EA8E64B30A0F2574548098
            8D5480288AA22881639664F5A147067D3DA926111E5BD19019C4200DDB13F4AD
            95743C6A353A9FA5D1956A936D9BF044F39E321C9F6B664946864677184F0132
            19141E9C21A1CFD6193062A5CDFDCF2EAFD3FD0EEEFB86898E08133DDC3B305D
            DD52C9D12D19672CB6BBFF37BA9F6D432991F1622740E4F4531DCE8CDADE5D0F
            63CF81E71DCF54FD52EF547C283650016236AA2501F2FF461F1FECEF484F1600
            00000049454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 631.181510000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#193'GINA : [Page]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Width = 684.094930000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'AVENIDA AFONSO PENA 5000 - BELO HORIZONTE - MG')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 366.614410000000000000
        Width = 718.110700000000000000
        DataSet = rel_DS_Mov
        DataSetName = 'DSMov'
        RowCount = 0
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 3.779530000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Movimento:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Funcion'#225'rio:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Top = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data:')
          ParentFont = False
        end
        object DSMovtipo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 34.015770000000000000
          Top = 26.456710000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'tipo'
          DataSet = rel_DS_Mov
          DataSetName = 'DSMov'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSMov."tipo"]')
        end
        object DSMovmovimento: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 154.960730000000000000
          Top = 26.456710000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'movimento'
          DataSet = rel_DS_Mov
          DataSetName = 'DSMov'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSMov."movimento"]')
        end
        object DSMovvalor: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 309.921460000000000000
          Top = 26.456710000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'valor'
          DataSet = rel_DS_Mov
          DataSetName = 'DSMov'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSMov."valor"]')
        end
        object DSMovfuncionario: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 26.456710000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'funcionario'
          DataSet = rel_DS_Mov
          DataSetName = 'DSMov'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSMov."funcionario"]')
        end
        object DSMovdata: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 555.590910000000000000
          Top = 26.456710000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'data'
          DataSet = rel_DS_Mov
          DataSetName = 'DSMov'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSMov."data"]')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 113.385900000000000000
        Top = 230.551330000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 200.315090000000000000
          Top = 15.118120000000000000
          Width = 359.055350000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RELAT'#211'RIO DE MOVIMENTA'#199#213'ES')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 49.133890000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Inicial:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 49.133890000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Final:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 464.882190000000000000
          Top = 49.133890000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dataFinal]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 287.244280000000000000
          Top = 49.133890000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dataInicial]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 132.283550000000000000
        Top = 438.425480000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 71.811070000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de Entradas:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 94.488250000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de Sa'#237'das:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 71.811070000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Saldo Total')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 90.708720000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'R$ [<totalEntradas> - <totalSaidas>]')
          ParentFont = False
        end
        object DSMovimentacoesvalor1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 71.811070000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSetName = 'DSMovEntradas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[totalEntradas]')
        end
        object DSMovimentacoesvalor2: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 94.488250000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSetName = 'DSMovSaidas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[totalSaidas]')
        end
      end
    end
  end
  object rel_DS_Mov: TfrxDBDataset
    UserName = 'DSMov'
    CloseDataSource = False
    DataSet = query_mov
    BCDToCurrency = False
    Left = 592
    Top = 496
  end
  object rel_Mov_Entradas: TFDQuery
    Connection = fd
    Left = 504
    Top = 440
  end
  object rel_Mov_Saidas: TFDQuery
    Connection = fd
    Left = 584
    Top = 432
  end
  object rel_produtos: TfrxReport
    Version = '6.7.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43650.683186342600000000
    ReportOptions.LastChange = 43650.695701354170000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 664
    Top = 496
    Datasets = <
      item
        DataSet = rel_DS_Prod
        DataSetName = 'DS_Produtos'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      BackPicture.Data = {
        0A544A504547496D616765C9890000FFD8FFE106BA4578696600004D4D002A00
        0000080007011200030000000100010000011A00050000000100000062011B00
        05000000010000006A0128000300000001000200000131000200000022000000
        720132000200000014000000948769000400000001000000A8000000D4000AFC
        8000002710000AFC800000271041646F62652050686F746F73686F7020434320
        32303137202857696E646F77732900323031393A30333A31322031363A31373A
        3232000003A001000300000001FFFF0000A00200040000000100000253A00300
        04000000010000034A0000000000000006010300030000000100060000011A00
        050000000100000122011B0005000000010000012A0128000300000001000200
        0002010004000000010000013202020004000000010000058000000000000000
        48000000010000004800000001FFD8FFED000C41646F62655F434D0002FFEE00
        0E41646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B
        11150F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E
        0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800A0007103012200
        021101031101FFDD00040008FFC4013F00000105010101010101000000000000
        00030001020405060708090A0B01000105010101010101000000000000000100
        02030405060708090A0B1000010401030204020507060805030C330100021103
        04211231054151611322718132061491A1B14223241552C16233347282D14307
        259253F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3
        D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6
        37475767778797A7B7C7D7E7F711000202010204040304050607070605350100
        021103213112044151617122130532819114A1B14223C152D1F0332462E17282
        92435315637334F1250616A2B283072635C2D2449354A317644555367465E2F2
        B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6
        E6F62737475767778797A7B7C7FFDA000C03010002110311003F00F414924948
        85249249294924924A5249249294924924A5249249294A8F52E6AFED7FDF55E5
        47A97357F6BFEFA90534D24924E43FFFD0F4AFB11FF49FF47FF324BEC47F7C7D
        DFED56924788A1ABF623FE907DDFED4DF623FE907DDFED56924ACA9ABF623FE9
        07DDFED4BEC47FD20FBBFDAAD249595357EC47FD20FBBFDA97D88FFA4FFA3FED
        569246CA9ABF623FE907DDFED4FF00623FE907DDFED565242CA9ADF623FBE3EE
        FF00CC92FB11FDFF00C3FF00325653A5654D5FB11FF49FF47FF32599D669F49D
        47BB76E0FED1C6C5BAB1FAFF00D2C7F83FFF0045A3126D45CA492494887FFFD1
        F530653A82903292174C9D2492B249248A1492499252E92694A5252E92694A52
        53258FD7FE963FC1FF00F7C5AFB96475F3EEC7F83FFEF88C770A72924925221F
        FFD2F538F24BE497C928F2450BA49BE49D05293274924AC924922858CA5253A6
        D5252B54B54B5F14B5F1494AD564F5F9DD8F3E0FFF00BE2D6D7C564F5EFA58FF
        0007FF00DF118EEA72924925221FFFD3F52DC96E5182941450CB725B9460A509
        2996E4B728A492996E4A5452494CA5295149252E9264A1252EB27AF7D2C7F83F
        FEF8B5564F5DFA58FF0007FF00DF118EEA73124925221FFFD4F5191E0948F04C
        92285E4782523C1324929791E0948F04C924A5E4782523C1324929791E0948F0
        4C924A5F4F04A4782649252F23C164F5EFA58FF07FFDF16AACAEBBF4B1FE0FFF
        00BE231DD4E5A4924A443FFFD5F50493A48A16493A49296493A49296493A4929
        6493A49296493A49296595D77E963FC1FF00F7C5ACB27AF7D2C7F83FFEF88C77
        539692492910FF00FFD6F53D12D132708A15A7825ED48A8A4A652D4B44C02749
        4AD12D3C1327494A81E09E0264E82950128092492550163F5FFA58FF0007FF00
        DF16C2C7EBFF004B1FE0FF00FBE231DC20B9492492950FFFD7F5209D249142C9
        25AF9A7494A4C927494A4E9248294924924A5249249254B1FAFF00D2C7F83FFE
        F8B6163F5FFA58FF0007FF00DF118EE145CA492494AB5FFFD0F5320A6DA567EF
        B3F7DDF794B7D9FBEEFBCA7521D18849676FB3F7DDF794B7D9FBEEFBCA5C2A74
        613ACDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF77DE5
        2E153A492CDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF
        77DE52E153A4B1FAFF00D2C7F83FFEF88DBECFDF77DE551EA6E71356E24E8EE4
        CFEEA206AA69249249E87FFFD9FFED0F1A50686F746F73686F7020332E300038
        42494D0425000000000010000000000000000000000000000000003842494D04
        3A000000000125000000100000000100000000000B7072696E744F7574707574
        000000050000000050737453626F6F6C0100000000496E7465656E756D000000
        00496E746500000000436C726D0000000F7072696E745369787465656E426974
        626F6F6C000000000B7072696E7465724E616D65544558540000001700480050
        0020004400650073006B006A0065007400200033003500310030002000730065
        007200690065007300000000000F7072696E7450726F6F6653657475704F626A
        63000000160043006F006E00660069006700750072006100E700E3006F002000
        640065002000500072006F0076006100000000000A70726F6F66536574757000
        00000100000000426C746E656E756D0000000C6275696C74696E50726F6F6600
        00000970726F6F66434D594B003842494D043B00000000022D00000010000000
        010000000000127072696E744F75747075744F7074696F6E7300000017000000
        004370746E626F6F6C0000000000436C6272626F6F6C00000000005267734D62
        6F6F6C000000000043726E43626F6F6C0000000000436E7443626F6F6C000000
        00004C626C73626F6F6C00000000004E677476626F6F6C0000000000456D6C44
        626F6F6C0000000000496E7472626F6F6C000000000042636B674F626A630000
        000100000000000052474243000000030000000052642020646F7562406FE000
        000000000000000047726E20646F7562406FE0000000000000000000426C2020
        646F7562406FE000000000000000000042726454556E744623526C7400000000
        0000000000000000426C6420556E744623526C74000000000000000000000000
        52736C74556E74462350786C40520000000000000000000A766563746F724461
        7461626F6F6C010000000050675073656E756D00000000506750730000000050
        675043000000004C656674556E744623526C7400000000000000000000000054
        6F7020556E744623526C7400000000000000000000000053636C20556E744623
        50726340590000000000000000001063726F705768656E5072696E74696E6762
        6F6F6C000000000E63726F7052656374426F74746F6D6C6F6E67000000000000
        000C63726F70526563744C6566746C6F6E67000000000000000D63726F705265
        637452696768746C6F6E67000000000000000B63726F7052656374546F706C6F
        6E6700000000003842494D03ED00000000001000480000000100020048000000
        0100023842494D042600000000000E000000000000000000003F800000384249
        4D040D0000000000040000005A3842494D04190000000000040000001E384249
        4D03F3000000000009000000000000000001003842494D271000000000000A00
        0100000000000000023842494D03F5000000000048002F66660001006C666600
        06000000000001002F6666000100A1999A000600000000000100320000000100
        5A00000006000000000001003500000001002D00000006000000000001384249
        4D03F80000000000700000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800003842494D040000
        000000000200023842494D04020000000000060000000000003842494D043000
        0000000003010101003842494D042D0000000000060001000000033842494D04
        08000000000010000000010000024000000240000000003842494D041E000000
        000004000000003842494D041A00000000035900000006000000000000000000
        00034A000002530000001200460055004E0044004F002000520045004C004100
        54004F00520049004F0020004100340000000100000000000000000000000000
        000000000000010000000000000000000002530000034A000000000000000000
        0000000000000001000000000000000000000000000000000000001000000001
        0000000000006E756C6C0000000200000006626F756E64734F626A6300000001
        000000000000526374310000000400000000546F70206C6F6E67000000000000
        00004C6566746C6F6E67000000000000000042746F6D6C6F6E670000034A0000
        0000526768746C6F6E670000025300000006736C69636573566C4C7300000001
        4F626A6300000001000000000005736C6963650000001200000007736C696365
        49446C6F6E67000000000000000767726F757049446C6F6E6700000000000000
        066F726967696E656E756D0000000C45536C6963654F726967696E0000000D61
        75746F47656E6572617465640000000054797065656E756D0000000A45536C69
        63655479706500000000496D672000000006626F756E64734F626A6300000001
        000000000000526374310000000400000000546F70206C6F6E67000000000000
        00004C6566746C6F6E67000000000000000042746F6D6C6F6E670000034A0000
        0000526768746C6F6E67000002530000000375726C5445585400000001000000
        0000006E756C6C54455854000000010000000000004D73676554455854000000
        01000000000006616C74546167544558540000000100000000000E63656C6C54
        657874497348544D4C626F6F6C010000000863656C6C54657874544558540000
        0001000000000009686F727A416C69676E656E756D0000000F45536C69636548
        6F727A416C69676E0000000764656661756C740000000976657274416C69676E
        656E756D0000000F45536C69636556657274416C69676E000000076465666175
        6C740000000B6267436F6C6F7254797065656E756D0000001145536C69636542
        47436F6C6F7254797065000000004E6F6E6500000009746F704F75747365746C
        6F6E67000000000000000A6C6566744F75747365746C6F6E6700000000000000
        0C626F74746F6D4F75747365746C6F6E67000000000000000B72696768744F75
        747365746C6F6E6700000000003842494D042800000000000C000000023FF000
        00000000003842494D041100000000000101003842494D041400000000000400
        0000083842494D040C00000000059C0000000100000071000000A00000015400
        00D4800000058000180001FFD8FFED000C41646F62655F434D0002FFEE000E41
        646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B1115
        0F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14
        140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800A00071030122000211
        01031101FFDD00040008FFC4013F000001050101010101010000000000000003
        0001020405060708090A0B010001050101010101010000000000000001000203
        0405060708090A0B1000010401030204020507060805030C3301000211030421
        1231054151611322718132061491A1B14223241552C16233347282D143072592
        53F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3D375
        E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F63747
        5767778797A7B7C7D7E7F7110002020102040403040506070706053501000211
        03213112044151617122130532819114A1B14223C152D1F0332462E172829243
        5315637334F1250616A2B283072635C2D2449354A317644555367465E2F2B384
        C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6
        2737475767778797A7B7C7FFDA000C03010002110311003F00F4149249488524
        9249294924924A5249249294924924A5249249294A8F52E6AFED7FDF55E547A9
        7357F6BFEFA90534D24924E43FFFD0F4AFB11FF49FF47FF324BEC47F7C7DDFED
        56924788A1ABF623FE907DDFED4DF623FE907DDFED56924ACA9ABF623FE907DD
        FED4BEC47FD20FBBFDAAD249595357EC47FD20FBBFDA97D88FFA4FFA3FED5692
        46CA9ABF623FE907DDFED4FF00623FE907DDFED565242CA9ADF623FBE3EEFF00
        CC92FB11FDFF00C3FF00325653A5654D5FB11FF49FF47FF32599D669F49D47BB
        76E0FED1C6C5BAB1FAFF00D2C7F83FFF0045A3126D45CA492494887FFFD1F530
        653A82903292174C9D2492B249248A1492499252E92694A5252E92694A525325
        8FD7FE963FC1FF00F7C5AFB96475F3EEC7F83FFEF88C770A72924925221FFFD2
        F538F24BE497C928F2450BA49BE49D05293274924AC924922858CA5253A6D525
        2B54B54B5F14B5F1494AD564F5F9DD8F3E0FFF00BE2D6D7C564F5EFA58FF0007
        FF00DF118EEA72924925221FFFD3F52DC96E5182941450CB725B9460A5092996
        E4B728A492996E4A5452494CA5295149252E9264A1252EB27AF7D2C7F83FFEF8
        B5564F5DFA58FF0007FF00DF118EEA73124925221FFFD4F5191E0948F04C9228
        5E4782523C1324929791E0948F04C924A5E4782523C1324929791E0948F04C92
        4A5F4F04A4782649252F23C164F5EFA58FF07FFDF16AACAEBBF4B1FE0FFF00BE
        231DD4E5A4924A443FFFD5F50493A48A16493A49296493A49296493A49296493
        A49296493A49296595D77E963FC1FF00F7C5ACB27AF7D2C7F83FFEF88C775396
        92492910FF00FFD6F53D12D132708A15A7825ED48A8A4A652D4B44C027494AD1
        2D3C1327494A81E09E0264E82950128092492550163F5FFA58FF0007FF00DF16
        C2C7EBFF004B1FE0FF00FBE231DC20B9492492950FFFD7F5209D249142C925AF
        9A7494A4C927494A4E9248294924924A5249249254B1FAFF00D2C7F83FFEF8B6
        163F5FFA58FF0007FF00DF118EE145CA492494AB5FFFD0F5320A6DA567EFB3F7
        DDF794B7D9FBEEFBCA7521D18849676FB3F7DDF794B7D9FBEEFBCA5C2A74613A
        CDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF77DE52E15
        3A492CDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF77DE
        52E153A4B1FAFF00D2C7F83FFEF88DBECFDF77DE551EA6E71356E24E8EE4CFEE
        A206AA69249249E87FFFD93842494D042100000000005D00000001010000000F
        00410064006F00620065002000500068006F0074006F00730068006F00700000
        001700410064006F00620065002000500068006F0074006F00730068006F0070
        0020004300430020003200300031003700000001003842494D04060000000000
        070007010100010100FFE1120D687474703A2F2F6E732E61646F62652E636F6D
        2F7861702F312E302F003C3F787061636B657420626567696E3D22EFBBBF2220
        69643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E20
        3C783A786D706D65746120786D6C6E733A783D2261646F62653A6E733A6D6574
        612F2220783A786D70746B3D2241646F626520584D5020436F726520352E362D
        633133382037392E3135393832342C20323031362F30392F31342D30313A3039
        3A30312020202020202020223E203C7264663A52444620786D6C6E733A726466
        3D22687474703A2F2F7777772E77332E6F72672F313939392F30322F32322D72
        64662D73796E7461782D6E7323223E203C7264663A4465736372697074696F6E
        207264663A61626F75743D222220786D6C6E733A786D703D22687474703A2F2F
        6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C6E733A64633D
        22687474703A2F2F7075726C2E6F72672F64632F656C656D656E74732F312E31
        2F2220786D6C6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E
        636F6D2F7861702F312E302F6D6D2F2220786D6C6E733A73744576743D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F
        5265736F757263654576656E74232220786D6C6E733A73745265663D22687474
        703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F52
        65736F75726365526566232220786D6C6E733A70686F746F73686F703D226874
        74703A2F2F6E732E61646F62652E636F6D2F70686F746F73686F702F312E302F
        2220786D703A43726561746F72546F6F6C3D2241646F62652050686F746F7368
        6F702043432032303137202857696E646F7773292220786D703A437265617465
        446174653D22323031392D30332D31325431363A31303A35392D30333A303022
        20786D703A4D65746164617461446174653D22323031392D30332D3132543136
        3A31373A32322D30333A30302220786D703A4D6F64696679446174653D223230
        31392D30332D31325431363A31373A32322D30333A3030222064633A666F726D
        61743D22696D6167652F6A7065672220786D704D4D3A496E7374616E63654944
        3D22786D702E6969643A62363966383932382D393063382D383934352D613530
        312D3862613432396534356232312220786D704D4D3A446F63756D656E744944
        3D2261646F62653A646F6369643A70686F746F73686F703A3665626435353434
        2D343466622D313165392D613635342D6335636565343334373364662220786D
        704D4D3A4F726967696E616C446F63756D656E7449443D22786D702E6469643A
        34316464636231302D613935342D373234322D616633642D6635663335396264
        66626233222070686F746F73686F703A436F6C6F724D6F64653D2233223E203C
        786D704D4D3A486973746F72793E203C7264663A5365713E203C7264663A6C69
        2073744576743A616374696F6E3D2263726561746564222073744576743A696E
        7374616E636549443D22786D702E6969643A34316464636231302D613935342D
        373234322D616633642D663566333539626466626233222073744576743A7768
        656E3D22323031392D30332D31325431363A31303A35392D30333A3030222073
        744576743A736F6674776172654167656E743D2241646F62652050686F746F73
        686F702043432032303137202857696E646F777329222F3E203C7264663A6C69
        2073744576743A616374696F6E3D227361766564222073744576743A696E7374
        616E636549443D22786D702E6969643A66313461373734302D396136622D3434
        34372D613462352D303737383032663837336362222073744576743A7768656E
        3D22323031392D30332D31325431363A31373A30392D30333A30302220737445
        76743A736F6674776172654167656E743D2241646F62652050686F746F73686F
        702043432032303137202857696E646F777329222073744576743A6368616E67
        65643D222F222F3E203C7264663A6C692073744576743A616374696F6E3D2273
        61766564222073744576743A696E7374616E636549443D22786D702E6969643A
        30393063613532612D396433612D626534392D623635632D6235363861333161
        36326530222073744576743A7768656E3D22323031392D30332D31325431363A
        31373A32322D30333A3030222073744576743A736F6674776172654167656E74
        3D2241646F62652050686F746F73686F702043432032303137202857696E646F
        777329222073744576743A6368616E6765643D222F222F3E203C7264663A6C69
        2073744576743A616374696F6E3D22636F6E766572746564222073744576743A
        706172616D65746572733D2266726F6D206170706C69636174696F6E2F766E64
        2E61646F62652E70686F746F73686F7020746F20696D6167652F6A706567222F
        3E203C7264663A6C692073744576743A616374696F6E3D226465726976656422
        2073744576743A706172616D65746572733D22636F6E7665727465642066726F
        6D206170706C69636174696F6E2F766E642E61646F62652E70686F746F73686F
        7020746F20696D6167652F6A706567222F3E203C7264663A6C69207374457674
        3A616374696F6E3D227361766564222073744576743A696E7374616E63654944
        3D22786D702E6969643A62363966383932382D393063382D383934352D613530
        312D386261343239653435623231222073744576743A7768656E3D2232303139
        2D30332D31325431363A31373A32322D30333A3030222073744576743A736F66
        74776172654167656E743D2241646F62652050686F746F73686F702043432032
        303137202857696E646F777329222073744576743A6368616E6765643D222F22
        2F3E203C2F7264663A5365713E203C2F786D704D4D3A486973746F72793E203C
        786D704D4D3A4465726976656446726F6D2073745265663A696E7374616E6365
        49443D22786D702E6969643A30393063613532612D396433612D626534392D62
        3635632D623536386133316136326530222073745265663A646F63756D656E74
        49443D22786D702E6469643A34316464636231302D613935342D373234322D61
        6633642D663566333539626466626233222073745265663A6F726967696E616C
        446F63756D656E7449443D22786D702E6469643A34316464636231302D613935
        342D373234322D616633642D663566333539626466626233222F3E203C70686F
        746F73686F703A446F63756D656E74416E636573746F72733E203C7264663A42
        61673E203C7264663A6C693E61646F62653A646F6369643A70686F746F73686F
        703A63383837363862342D336162612D313165392D396266372D626532623861
        3737326435633C2F7264663A6C693E203C2F7264663A4261673E203C2F70686F
        746F73686F703A446F63756D656E74416E636573746F72733E203C2F7264663A
        4465736372697074696F6E3E203C2F7264663A5244463E203C2F783A786D706D
        6574613E20202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020203C3F787061636B657420656E643D2277223F3EFFEE002141646F62
        650064400000000103001003020306000000000000000000000000FFDB008400
        0101010101010101010102010101020201010101020202020202020203020303
        0303020303040404040403050505050505070707070708080808080808080808
        0101010102020204030304070504050708080808080808080808080808080808
        0808080808080808080808080808080808080808080808080808080808080808
        08FFC2001108034A025303011100021101031101FFC400CE0001010100020301
        010000000000000000000102030904070A060501010101010101010100000000
        0000000000010203060405071000020103020405040301000301000000000111
        0212131003203021144031041517330607375060323641220523110001020106
        070D06050204050500000001003111214191A1023220305161D133A41040B112
        4203D3E30405B536077181E135757660C122B4065013F0F16214A2247495A552
        921585161200010403010002030100000000000000006001310271A1B1322080
        40A05190FFDA000C03010102110311000000FB0AF59F98000000000000000000
        000000000000000000000000000000000075D9FAB8FCBEC07677F8FB00000000
        000000000000000000000000000000000000000000003AECFD5C7E5F603B3BFC
        7D80000000000000000000000000000000000000000000000000001D767EAE3F
        2FB01D9DFE3EC000000000000000000000000000000000000000000000000000
        0EBB3F571F97D80ECEFF001F6000000000000000000000000000000000000000
        000000000000075D9FAB8FCBEC07677F8FB00000000000000000000000000000
        000000000000000000000003AECFD5C7E5F603B3BFC7D8000000000000000000
        0000000000000000000000000000000001D767EAE3F2FB01D9DFE3EC00000000
        00000000000000000000000000000000000000000000EBB3F571F97D80ECEFF1
        F6000000000000000000000000000000000000000000000000000075D9FAB8FC
        BEC07677F8FB0000000000000000000000000000000000000000000000000000
        3AECFD5C7E5F603B3BFC7D800000000000000000000000000000000000000000
        00000000001D767EAE3F2FB01D9DFE3EC0000000000000000000000000000000
        000000000000000000000EBB3F571F97D80ECEFF001F60000000000000000000
        00000000000000000000000000000000075D9FAB8FCBEC077CDE1FEE0056B8B5
        9C6B000022D40000000000000059B025C0B340A012596680008014800882A81C
        F9E8C801480E957D97C1F82EF903E87FF9E7E90002B8379C6B24022D0800E2A0
        00A002000AA2255000214042B9337535400002805894956585A359BCB8D80001
        D117BCFCBF5DFD1903E87FF9E7E90000B75E36F9E759245A1000335C5B850000
        00000000002428896DB973635B9A00012BC8C6B774240A485B20881699A001D1
        17BCFCBF5DFD1903E87FF9E7E9000019B78378C59AB90000066B86CBAA000000
        0000001001168172E6C6B535400012C110000004DE7A7918D950259D11FBBFCC
        F5DFD1903E87FF009E7E90000545278FD312E400000335C5B000000000000099
        5A014032A73635B9A00019B9DCD6A68500080069778D0523A22F79F97EBBFA32
        07D0FF00F3CFD2000504095E3F4C4B9000000CD70EA5B4000000000224975409
        2555002C7373D6A6A800039F3A5A1900042821A5B9A3A22F79F97EBBFA3207D0
        FF00F3CFD200282001357C7DF39720000019AE2D8000000001248BAA001332DA
        A005CB9B3ADE74000066E753433723534258204D4BE4E7AB17A22F79F97EBBFA
        3207D0FF00F3CFD20141000026AF8DBC2E4800000C5716A5B400000022497540
        000490B6802C7373D6A6A80010E696CD0001424034B65E88BDDFE5FAEFE8C81F
        43FF00CF3F48290000029136F1B585840000062B8F60000004492EA800000224
        97540172E6C6B7340000724D000022550217A27F71F9DEBBFA3207D0FF00F3CF
        D252000000056F3BC78FAE79AA800000C5716A5B400842C9175400000001332D
        AA02C73F3D59AA000012C4B4C5CD00D4D429D157B7F83D79F4640FA1EFE7BFA5
        600000000559ACEA78DBE52AA00000315C7B002E521A2800000000020280B973
        635B9A0000B3C9C749282001681D11FB9FCCF5DFD1903E82FC27D65F379F4E7C
        6900000003537C7D39F8FAC4AA100000C570EB2CDD154B2E5AA0000000000224
        97540B1CDCF5A9AA003373C99DF3E365400001D117BCFCBF5DFD1903E813C3FD
        229FD3E3DF9F968000000568B8D63C7E9CC02000018AC994AB29A00000000000
        009996D50B973E35A9A000CDCF2675CF8E8940000E88BDE7E5FAEFE8C81F409E
        1FE9029FD4E3DF9B9E900000002B78DE3C7D7350202E2C08D2E2B29351680000
        0000000002495542C7373D6A6A8337356272677CF8E810001D117BCFCBF5DFD1
        903E813C3FD200B1FD4E5DB9B96C00000059BA7174C706F902887159A548519B
        26C0000000000000001124BAA2E5CF8D6A6B373A9A19B91CB9DF363A20003A22
        F79F97EBBFA3207D02787FA40029FD4E1DF9B1A40000000D37C3BE7C3BE6004D
        4AE3B988B0456A8000084405D40014202824821692C72E75652669608BCB9D72
        677598BB97933BE88FDDFE5FAEBE8C81F409E1FE9000165FEA71EBCDCF600000
        02DD55E1DF3E1BCCB5512B16096042B1B000211C7ACF8FBE79BA2405812AA422
        824B51A922AC1C990160A2ACB2CA2AFF005787D1D14FB7FCFF005DFD1903E813
        C3FD2000058FEA71EFCDCF640000000AE2DE784A5258B9E133B9562112ACB740
        00386E7C4E98D482000025A00B1A44B2CCDB64E4CB5340002168597A3CF63F37
        AF7BC03E813C3FD200000B2FF578F6E5E7A00000015A9670EA71DCB592010C51
        2AC4CDB34000124E2B38772A580005B6282255405B4458E6CDAD24145A8E6C6B
        95B47451EE3F3BD77F4640FA08F0BF50A0012A89A97FA5CBB6A56400002AA962
        70EF1C7AC08B5218A5225019A500000190902E8A02665D5002249755172E7CEE
        A80489579F1BE4CEBA22F77F99EBAFA3207D0C780FD1012800691036BAC80002
        ADA94335A9E3EF963590520E331A85B0A94A0000249E3EF9C582DA9010B10580
        149951516F2628325A44CAEE5E8EBD97CDEBEEF00FA04F0FF480000001A8FEA7
        1EFCB8D20142ADA9249A9D06758E0DF3C6B20B003082D23358DCAA00038D9F13
        A73CDA00000B20968000153979D0285113A3DF63C3D7DDE01F425E0BEF160290
        8A833ABA9059BF2716C05BA5952422353A089358F1F78CEB20A09C1A8A0866DD
        2680001971EB3E2EF0A8551A90010D012904B51691CD9A8AA42C4E8E3D9FCDEB
        DEF00FA0DF07F658540500AA02053CACF4E5C52DA922000353A133BC78FBC66E
        4028200071D6351680001249269A50400000005925B570E79BD4B2883A2BF6DF
        0FAF3E8C81F40FE1BEA804102A0028406A5FEA70FA39705A900006A7412E66A7
        8FBE59B000000071D6360000892716A67524514428000008322B79BB96CA64BD
        1B7B3F97D7BDE01F431E03F42C45D848B5742412DB150B8AD46A02000001A9D0
        6779F1B5CA6B2002900038EB1A8B404492DB867C4EBCF16800000000002C8397
        16A8E8F3D8FCFEBEEF00FA04F0FF004810A0080A416A4294B2FF004F8F7E5C50
        00006A7404C6F1E3EF9CB0005200071D63608925D508C33E275C44CDA00D4822
        8025002C0D49C99D17A3CF63F37AFBBC03E84BC17DE22DB2466C2EA494922D32
        8B4CD8559AF3B9F4B900001A9D0019DE3C6DF296000A0800E3AE3D445D500004
        13341001540500008CEE6B9B1AE8B3DB7C3EBCFA201F435FCFFF0054000262B5
        2DDE732D89A854586A4A962140001A9D000B31BCF8FBE510000A400715674500
        0018673480A000080000A65A5E8DBD9FC9EBDEF00FA1EFE7BFA400000290042A
        C0000000000D4E800C74C78FBE510000A08071D629A0000CC9E274E5C7AA0000
        00000001D217ADE1EBFEF00FA1FF00E7BFA4000042C280000000000000D4D800
        71EF1E3EF9900186EA6990071D63600008CA787D39E340000000000379747FEB
        F87AFF00BC03E82BC2FD600E3B38F59B28291400000000000000B1CD9D846779
        C2008AA40A090634CD116D800433600010011400017A41F5DC3D7FDE01F409E1
        FE9000E2DE78F50021410440001A6C0000000B97366D94442AAC010A01104B33
        650B650204A40A00000025511D1FFB0E1EBEEF00FA04F0FF0048000E2DE7152C
        1490AB2CB080005B29400000068E5C2CA000000000A2652CB54000000000019B
        2C551D1E7B1F9FD7DDE01DF6F87FA40CD962AC1400492ACAA040014000000008
        216168000204B45012D8D00000000000085003A50F5BC3F03DE01DF6787FA442
        80000002522800000000000020AB000000021400351A0000000000428003A51F
        5BC3F03DE01DF6787FA400000000008500000000000101400000000405000000
        0000010255000E947D8FCFF81EF00EFB3C3FD440000000000214000000000101
        40000000001014000000000D4D66C200001D28FB1F9FF03DE01DFB788FAB8AE4
        000000000010588000000002D320A80000000160B352C4000002A89672E7496D
        9C3720000749BEBF8FE07BC03BF8F17F4000000000000138AE4B400000400D4D
        40500000000101412C45500019B8DCD7262AB2716F3A9A00003A49F5DC3F01DA
        01DFDF89FA400000000000010B24B4000062CE2D66CD80000000000000292C45
        580A42B3C99D58C59C7B965280001D257AEE1F80ED00FA0EFE7FFA0000000000
        000001116D8004B2CA0000000000000000024B6C0A42ACAD44B240000007467E
        E3E1F5EFD1903E807C37D7400000000000000085008500000000000000000000
        03971AB5C361028000000747DECBE5F5F778077E9E2FBD5000000000000000CD
        CEA544D44B54000000000000000003373A9752D814E3D42800000003A49F5DC3
        F01DA01DFA78BEF54000000000000003373AC8B2CAD0000000000000000000CD
        CEE5DE2DAD4BC1ACAD000000000E927D770FC0768077E9E2FBD5000000000000
        0044966A6866E753400000000000000000009C99BA978F59C5168000000001D2
        4FAEE1F80ED00EFD3C5F7AA00000000000004B11540110550000000000000000
        227366C33671EB3A9B88AB2800000003A49F5DC3F01DA01DFA78BEF540000000
        000004B986A680004B05940000000000000CDCD379BACDD1C7A98B4500CDCD96
        A8000000E927D770FC0768077E9E2FBD500000000000097296A80000222ACA00
        0000000001139212EA2D7156358B3740009725B28000007493EBB87E03B403BF
        4F17F450000000000012C4550000000337365AA0000000003373A979B1752E6B
        8ECCE90A000019B9A59A000007493EBB87E03B403BF3F17DB4D000000000012E
        52D50000000009730D4D00000000066E772F262CAE3D3371A9B00000011259A9
        A00003A49F5DC3F01DA01DFA78CEF12CB5400000001966AD500000000002584B
        340000000088525500000000002588AA001D24FAEE1F80ED00EFD3C5FD149725
        B28000000CDCEA6800000000000044966A6800000066E6CB540000000000004B
        226A6801D24FAEE1F80ED00EFD3C5F7AA337365AA00000CDCEA6800000000000
        0002588AA00004415400000000000001105503A49F5DC3F01DA01DFA78BEF540
        892CD4D0000CDCEA68000002148500000000960B28004B115400000000000000
        00CDCD96AF493EBB87E03B403BF4F17DAA800440B02696594000000445B96373
        60000000082CB28102550014100000000000000895AE927D770FC0768077F1E2
        7A94000096EA4CDB6400000000BC7B89AE4CE0A000000000B5209560012B16D5
        DE72000000000000001D237AFE5F80EF00EFE7C4F51680089756245D64000000
        0048B0D2140000002512CDCDC230A001065695014000000000009443A46F5FCB
        D7FDE01DFE78CEE0002259A32550000000010005000000011059A22800000000
        000000000001194D7489EB787AFF00B80EFF003C5F7AB100960D4D0CDC92CD00
        0000000000000000290055CDC8B28000000000000000004B1157A43F5DC7D7FD
        A01F405E27E84000000085000000000000000002C4A000428000000000000000
        00000E8FBD870F5F77807D06F84FB00850000002140000000000000042800000
        10A00000000000000042800E8D3DA7C9EBDEF00FA1FF00E79FA4255100000012
        8580005000001000128580000001285800000000000012A88007449EEFF3FD77
        F4640FA1FF00E79FA59B752000000002545D480294000004204A028020000002
        50B00000000000095600007449EEFF003FD77F4640FA11F05F6D0000002D6B3A
        D000C94F1F78E1D60000003CBE7D779D0ABC7738DE5007367540000073E37602
        02928005000A44AAA80A201D11FBAFCEF5DFD1903E82FC1FD2000000391BE694
        0011C1B9E0F5E566400001E4E3BF95CF60B9B386F344D652F335C928000039B1
        D3931400001A9D000005466CD0BD20000E88BDC7E67AEBE8C81F417E0FE90000
        00D5D73E77500030781DB966E22D9000072E7AF9BCFA2325AE1D7396149BCEB9
        66824B6D2141BCEB9F1B812A8010353A00005912CD017A40001D117B8FCCF5D7
        D1903E82FC1FD200000B6F919DD000965781D7971DE6066DD2200D4DF9FCBB12
        04E2D670C6A685396DB1532D724D6359C5BBCE6CBE4F3D802AEB3B0A080353A0
        0B2259A000BD20007445EE3F33D75F4640FA0BF07F480000AE7CF4D800097C3E
        98F1F7C40025A4B15BF3F8F6A133666E38D986A695CD2D02B79D645C0E39D3CB
        E7740035376501410353A09722CD000017A4007445EE3F33D75F4640FA0BF07F
        4800069CB9DF2CA0028E0D67C2E9C4800000F2F1F473F3B8B1666CE399A08725
        D72CC896EB3A96E6E2C439F1D3932006A6ACD000050D67A4B91668000002F480
        7445EE3F33D75F4640FA0BF07F48000DB5CF340008C69FCFEBC632000146FC9E
        7D3C9E7D32CE759B6713280356DBBE5CF306ACD6359A88DE77CF8A00B2EA6C00
        00504B5AB28000000BD201D117B8FCCF5D7D1903E82FC1FD20069737C89BA000
        23C4E99C6B2000044DCDF95CBA66C8CB6E39890055E4D6B368DE33C937C7732C
        1BCEBC9E7400353A5800001402353A000000017A41D117B8FCCF5D7D1903E82F
        C1FD202AE9CFCFA680001C1A440A000B26B3BDCD66E66B0309862CD09672DDCB
        A49A4E4C6A8055F239EEE68805580000A2A4015ACF4000000005E93A22F71F99
        EBAFA3207D05F83FA4361CD8DF24A0008F1B73C5E9C400010D6F3AF231D3926B
        3BC6A4CA70A0D44396EA6B4359CEB376A0179F1BDE2800000001480028A9353A
        00000001D11FBCFCBF5D7D1903E82FC2FD2C9B6F1BE7940004250002150D4D40
        71EF1A9331C57165CD0E595BD8D4CD9AE4C801CB9E9CBCE80000000148000015
        66ACD0000000E88FDE7E5FAEBE8C81F417E13E946B579F1D2A000653F9FDB397
        35A00D4D25A72E75E573DE6F3CEE8E398400AE46E6A8D49CB8A00DE75CFCF600
        0000005200000000D4E8000001D117BCFCBF5DFD1903E82FC27D34E7CF4D0000
        38EB3400011A9656A25CCB25B8989002B99ACDACA69CD8B402CBE473E9600000
        000520000000015AB3400000E88BDE7E5FAEFE8C81F415E13EAE7CEB91400078
        BBCF0EB200006A5AD7938D5678F7522678E66A85723535A164DE6EA5A8266F93
        9DEB3400000000000000000353A4B916680007445EF3F2FD77F4640FA0FF0007
        F66E6F49500195F1778200009565E4979A5E3D496DCE78E6401BB574B472626E
        58B0D272E3A72E280000008500000000000D4E825C8B34001D117BCFCBF5DFD1
        903E857C17DA228A838CE1DE41002C22D39737965E3D633AD6B39E2990259B6A
        DD2D1A9397140171BF233AB00000012AC0000000000000D4E92E459A007445EF
        3F2FD77F4640FA15F05F681161A4F0778C6F12D08115572D1E772E99D31A5931
        33962CD0572DD66E926A4E4CEA8026BC9E7B292C0000128580000000000001A9
        D0446A336A8E88BDE7E5FAEFE8C81F42BE0BED000E1AA94000C9A11C8B8B25CE
        A4E2B712085392EE5A3526F2D28097C8C74D64250B0000255800000000000000
        0D4E825C96CBD117BCFCBF5DFD1903E857C17DA00F1F53C4E9C336D0044B7532
        5F2F9F6E6CDCEB14B262D96865E4635A9445D5BBC5956017500084AD40105580
        000000000000001A9D009723A23F77F9BEBBFA3207D0AF82FB40E3B3C0EDC648
        2B711512C839F3D7CCE7BCEB1C7AD8006B33979DE7CD0235C99D000000003342
        C2AC00000000000000001A9D0012E7A23F77F9BEBBFA3207D0AF82FB40F0F79C
        DC80585082B5E673DE2E71BA001ACCDE2F938A00D4E96000000001C7AA393300
        0000000000000000353A0026B3D11FBAFCDF5DFD1903E857C17DA00032B402A0
        18B38F7400127261E4F3D500D4DD94000000094850B000000000000000000006
        A749724E88FDDFE77AEFE8C81F42BE0BED000CB5A4202E574CCB38B4968006B3
        3C9E5ADC006F79A00000004A4500942C0000000000000000005692D5E88BDE7E
        5FAEFE8C81DD4794FA0012DB20000CDB2C00003797266812B534000000008500
        00000000000000000000002CD750FEA3E3FC4F6807677F8FB000000000000000
        00000000000000000000000000000000000003AECFD5C7E5F603B3BFC7D80000
        000000000000000000000000000000000000000000000001D767EAE3F2FB01D9
        DFE3EC0000000000000000000000000000000000000000000000000000EBB3F5
        71F97D80ECEFF1F6000000000000000000000000000000000000000000000000
        000075D9FAB8FCBEC07677F8FB00000000000000000000000000000000000000
        000000000000003AECFD5C7E5F603FFFDA0008010200010500FE8FB7FE7FA56D
        FF009FE95B7FE7FA56DFF9FE95B7FE7FA56DFF009FE95B7FE7FA56DFF9FE95B7
        FE7FA56DFF009FE95B7FE7FA56DFF9FE95B7FE75EFB74EFB74EFB74EFB747EB7
        745EB770EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370E
        F370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370
        EF370EF370EF370EF370EF370EF370EF370EF370EF374EF374EF370EF370EF37
        0EF374EF370EF370EF370EF370EF370EF370EF370EF374EF374EF374EF374EF3
        74EF374EF374EF374EF374EF370EF370EF3747EB774EFB74EFB74EFB74EFB74E
        FB74EFB74EFB74F4B537B5C94F97041041041041041041041041041041041041
        0411CAB8924B892492E2492791E8FE8F297293F0D248DEAD0F911AC11A24410C
        B48208E2F47F479484C9E4A6353E0D8C5C2C8E4469041041041041040D09F07A
        3FA3CC5CA4FC32E06343E4492492CB8B8B892E2E2E1BE1F47F479B3CA4C6A79E
        DF32391041690416969690410411AFA3FA3CD4C5CA4FC2C09F0B43F0703D3D1F
        D1E727CB4CF3F091CF6CB892492492492492493D1FD1E6B5A2722E527E2DA1F1
        B45A5A8B516A2D45A8B4B4B4B4B4B4F49F4BC5A679F0B291F3A09E0688E4CF04
        924F07A4FA5CF6313917293E17E0609E0687C6C6CB8B8B8B8B8B8B8B8B8F49F4
        B5B0B074C7393E5267993C0BC03E28E2631A1723D1FD1E16A4AA98E5B114BE5A
        7C097876B8E0688E47A3FA3C75531E1208D234425E1589F29150D09F17A3FA3C
        6D49528E6A7C53A493A27E1DA275687C6D0D717A3FA3C974C731F4170CF05A5B
        C9F32D2D2DE6753A9D482D2082082D2D1523A0B0B0B074E9E8FE9725A92A51CB
        A8A593C324E924E93C74E905A884416905A411A41047022081F29A2AA4F47F47
        94D0E98E6262279108845C4AE34F49249249249278FF00F2F4688E438140E993
        D2FD2E5B454A398842E2B4B48208E37D05517171797179797979717171717990
        559717978EA2E2E2E2E2E2E2F1D4C92E83D27D2D6E2E2E2E2E2E2F2E2F436344
        2E627C525C49717170B932492C964F2635688E381A7A7A3FA3AC104104104105
        A432D2DE4C93A27C882D2D65A2E4C169616969696A2D2D2D2D20821102A48442
        2D2358208D2D47A5FA5CE6874F31313E3924927934D5CA927C07A5FA5AE43217
        9797B2F65ECBCBCBD8F705B837C73C5227C524925C88278FC855124925C5C892
        4924B8B8B8B8924B8B8B87521D45C5C5C5E5E7A5FA5AE33198CB0B0C6632C319
        8CC6633198C74C13CB4C5CB4C6A790CB89D649249249249249192344717A4FA5
        ADC5C4971717124925CB49D5A92A51CC9E627C95496961616169696969696969
        6969696969696169696969E97E96B0C820B59D7586433A9D74EA753AE902E9CB
        427CB4C6A78E927C135C1E97E96B0410410410411A4105A8820843A4AA9E5A27
        989F1B62A89E64924924E8F5F4BF4B5BCBCBCBCBCBCBCC86432190C85E643219
        0C83A87CC5CC4C7CA75171717171717171771C11A7A4FA5CC83AEB0493CF4C9E
        627CA82C2C2D2D2C2D2D2D2C2C2C2C2C2C2D63A0C6CF4BF4BF829297CC4CF3E3
        42F05E9BE9F1C104704104104104104104104104104104104104409F313E4489
        F80A8F4DF4F5B4B4B4B4B0C6633198CC6633198CC6633198CC6633198CC66331
        98CC6633198CC6622C2C2C4585A5A8B4B4B4B4B4820B4B482D2082C2C2C2C238
        A0820820820820820F4DF4F909F8A688E19E5492492492492492492492492492
        4924925C49E9BE9F253E19D649F02C8E74788F4BF4B9524924F0492492492492
        4924924924924924F0492492493C3249226410410410410410410410411A4104
        107A6FA7FCAA64924924924924924924924924924927A6FA7FD2BD2FD2FE82C5
        C8F4BF4B82D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2
        D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2
        DD2048B4B4B4B4B4B4B4F4DF4F5820820820820820820820820823973E3DEA90
        B91E9BE9EB0410410410410410410410410416905A5A5A5A5A5A5A5A27E39888
        122393E9BE9EB9D99D99D99D99D99D99D99D99D99D99D99D99D99D99D99D99D9
        9D99D99D99D99CCECCECCECCECCECCECCECCECCECCECCECCECCECCECCECCECCE
        CCECCECCECCECCECCECCECCECCECCECCECCECCECEE199D99D99D99D999999999
        99D99CCECCECCECCECCECCECCECCECCECF48E76B5C48C48C48C48C48C48C48C4
        8C48C48C48C48C48C48C48C48C48C48C48C48C48C48C46246246246231189189
        1891891891891891891891891891891891891891891891891891891891891891
        8918918918918918D18D188C4623123123123123123123123123123123D2AFFF
        002F12FC73D3C87D443E77A6FA7E25F8E63D3CB45CEF4DF4FF009791B244BC07
        A6FA7FCC40A9F03E9BE9FF0026864E902F05E9BE9FF27237AA5E0FD37D3FE45F
        0411E13D37D3FE458F48F0DE9BE9FF004AF4DF4FFA57A6FA7FD2BD37D3FE95E9
        BE9EB24924924924924E924924924924924924EB2492492492492492493A4924
        E92492493AC92492492492492492492492492493A7A6FA7ABE54F313F0689E19
        F0F27A6FA7AC1041041046B0410410410410410411A433AE9041041041041041
        0468C488208208D7A90F582082082082082082082082082047A6FA7C12492493
        AC6924924924924924924F0C924924924924924F0C9249249249249249249249
        2492492492492492493AFA6FA7FD2234F4DF4F592E2592C92492492592CB8925
        92C964B2592C964B2592C964B2592C964B2592C964B2592C924B8964B2E2E249
        2592C964B2592C964B2592C964B2592C964B2592C964B2592C964925C4B3D2FD
        3D6F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F
        2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F
        2F2F2F2F2F2F2F2F3D2FD2F0F041041041047147F0DE8FE978682592C964B259
        2C964BE38208FE0FD1FD2D6C2C4588B11622C4588B11622C43A4B4B4B4B4B482
        0A682C2C4588B11622C4588B51622A42A4820815258584104104104104103238
        238A492492395E93E973678994D3CAA993AAD6091F25BF00B95E93E9783484B9
        353D208D11248DEB04F137C73E13D27D2E5B7C53A534F25B2758D172A746FC67
        A4FA5E060A572AA7AA5A473193E33D27D2E4A637C6972AAAB58E4CE890F56F98
        84FC07A4FA5CF6CA57264AAAE17C084F856ADF8EF49F4B8EAE44099722E45C8B
        91722E44A2E43AB9AF482082A7E3FD27D2E37C8B4B4B4B4B4B4B4B0B4B74489E
        521BE16FC7FA4FA5C2941237C4D1493C725C3625C086B8A389BFE03D27D2E1AB
        C043D1B12D18B54C6B810DF0B7FC0FA4FA5AFF00E46F8D212E26488AB85F0CEB
        E5C2FF0082F47F475FFCF2131D42A8B8B99732E65C4924E887C88247C0C9FE0B
        D1FD1D50F8E9A47496969696969696168C4B8DF03E16C6FF0083F47F4756F917
        17979797979797978EA122796DF0D4FF0084F47F479291696161616161696160
        D11C688E07C2DFF0BE8FE8F25124924924A24B912362E05C723E06362FE13D1F
        D1E45A5A5A41041043208D121F22491F0C8FF86F47F478E95AB5AC7054C489E2
        6C7512C964B249249249FE1FD1FD1E24B9553E4B7C13CD823C7FA3FA5C499717
        1722F2E2F2E2E1D648B890DF8262F1FE8FE97804B8EA7C2F9D24F8FF0047F479
        E909F13637C0DFF1FE8FE8EBEDC7B71EDC7B71EDC7B71EDC7B71EDC7B71EDC7B
        71EDE7607607607607607603FF00E71ED87B61ED87B69ED87B61ED87B61ED87B
        61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B6
        1ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61
        ED87B61ED87B61ED67A7A6DDBFE95B7FE7FA56DFF9FE95B7FE7FA56DFF009FE9
        5B7FE75FFFDA0008010300010500FE8EFF00A5BFE96FFA5BFE96FF00A5BFE96F
        FA5BFE96FF00A5BFE96FFA5BFE96F8315262A4C5498A916D523DA4588B11622C
        4588B11622C4588B11622C4588B11622C4588B11622C4588B11622C4588B1162
        31D263A4C749622C463A4C7498E931D263A4C7498D18E931D263A4C7498E916D
        A1D1498E931D263A4B292CA4B2931A31A31231A15148B6A930D261A4C3498693
        0D261A4C3495A87C96B973E0249249249D249249279369690416969616160A81
        53C8DCFF005CAA972A3C4C6AB8E04F592492759249278B73FD7290D0F94DF865
        C33C8924B8B8B8B8B8B8B8B891313E066E7FAE527A55FC32E34882C2C2D2D2D2
        D2D2C2C2D12E1DCFF5CD6B97E5E03CF973C8B8B8B8B8B8B8B8B8B8B8B8B89D77
        3FD739AFE1972275964BD64920913169B9FEBC4B5E3279091696969696904169
        69691A6E7FAE7B43FE1971A65C5C5C5C5C5C5C5C5E5E5E5C57FEB9E864729A3C
        BC5CF26DE0B4B4B782BF3F014952FE1D71A122D20B4B4B4B4B4B4B4DCFF5ADEC
        BD94D53CD6B99E42F153C54E93C9DCFF005C2994D53CBA468A97F0EB8A44C5C8
        DCFF005C74D53CB9132A5CA9249F173C305452F91B9FEB8D329AA796969553C5
        02A48208F1AB87CC4CA5F1EE7FAE4D354F310D70C12497171772E49249249E39
        2513A49249717176B714D66445E5E2AB4DCFF5C94E0A6A9E5D23435A411A470C
        7259248DEB3A4F0C6BD783A9D4EA753A89E89EA994D46E7FAE5262AA44F98D11
        ABD6DD3A9D4EA75E36B49249249249278A5923D193CA4E0ABCF969C14B9E5F4D
        1A1F1CE92895C687496969696B2D2D20B4B4B4B482D2D2D2D2D2D2D2D2D2C2C2
        C2D2C152588B0AFCF5B596B2D65A5A5A5ACB596B1213E6B5C4F58208F113C0A0
        9249211D0915449B9FEB5B8B8B8B8B8B8B8B8B894362AB9703435C725C493CAB
        8B9925C5C5CCBCB8B8B8964925C5C5C3A8B8965C5C49248C551732AF3E726535
        7318D731AE3A972208249E4412470A1F9EB8CC66331988C6632C2C3198CB0547
        1413C2D1035C505A432394E923582D2D65A5A4696B2D65A5A5A5A5A5A582A0B0
        B19616161579EB7979797979797991990C86432B323320AA9E5BD2A5E1639D1C
        13A410415F9EB696B20B590410410411A41027052E79690D0D78382E2E2E2E2E
        24B8B8B8B8B8B8B8B8BCB892E2F2E2F2E2E2AF3D6F44A2E44A25128944A25128
        84743A1D0E84A131F2D8D783635E0A04F5ABCF952492492C924924B8A5F2DA1A
        1F836881E92493AC10411C51A410CABCF5C66231188C43DB3118CC4CC6633198
        CC658636631524732A435CCF2238E082082082082082393257E7CC83AE9E6412
        493CE68A973239324971717171717171717171717171717171795F9EB2492492
        493C33E16AA7C231AF04FCFC7C924924C9553C4D8B9B6F827E7ADC5C5C5C5ECC
        86466432190C86432190C86432190C86432190C86432190C86432190C8642F65
        E5C5E642F2F2F2F2F2F2F2F2F2492492E2E2E2E249E182082082082082347E7C
        86883A1D3450743A1D38D41D0E8743A1D0E8743A1D08279D041075D3A1041041
        0410410410410410411AC0FCF9304104104104169690410411A4104104104104
        11AC6B0410411AC1046AD13E096B579F2638A08FE0649F10FCFC027E15BFE15F
        9FF4AABCF56BC7C78F81AE455E7AB249249249249249249249249D27993A493C
        D9249279324899248DF21F9EB24924924924924924924924925CC86753A9D4EA
        753A9D4EA752D248F09027C7E62E0AB90FCF5B91722E45C8B91722E45C8B9172
        2E45C8B91722E45C8B912892492492492492746BC33427C2C5AC971E7C87E7AE
        0460460460460460460460460460460460460460460460460460460460460460
        3023023023023023018118118118118118118118118118118118118118118118
        1181181181181181181181181181180C08C08C28C28C28C28C28C28C08C08C08
        C08C08C08C08C08C08AD43D72332332332332332332332332332332332332332
        3323323323323323323323323323323323323329919919919919919919919919
        9199199199199199199199199199199199199199199199199199199199199199
        197B3233233233233233233233233233233233233232AF3D5786A49D18978AA7
        5F2F00FCF55E1A910DF8CA74F2D5F39F9EABC2B625AB7E2DA168DF807E7AAF08
        D8970C09F8A91B129D1A279AFCF55E0DB12E3689F09514E923E3F213E5BF3D57
        82912E4B44F826411A468DF1B427CA7E7AAF03225CCF213E7D3C1237CA813E4B
        F3D67C0A5CE689E75232757CB68F2E43F3E0F213E779780684F9AD888F01027C
        4FCF55A409F2FCFC1B47972DB12F06D09F0BF3D56B027E3E04F90D89785689E0
        7E7AAE068F2F1ED09F13625E2204F47E7C98208208E6F973BCF8978A6B47E7AB
        E4C13CD6BC0C0993C33E21F9F0C92493C324924924924924924E924E92492492
        49249249248B8249249D649D649249249249249249249249249D1F9EB05A5A5A
        5A5BAC105A5A5A5A5A5A5A5A5A5A5A5A4104105A5A5A5A5A5A5A5A5A5A5A3425
        ADA5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A35A3F3D
        6749249D2756C9249249249249249249249249249249249249246C4493A32492
        49249249249249249249249249249249249249247E7C10410410410410411A41
        0410410410410410410410410410411A41041041041041041041041041041041
        041041041041041041041579EB616161616161616161616161618CB0B0B0B0B0
        B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0C65858585858
        585858585858585858585858585858585858585855E7FD2ABFF5FD2ABFF5ADE5
        E5E5E5E5E5E5E5E5E2AC5512492497125558B70C8CC8CC8CC8CC8CC8CC82AD97
        17124923A8BCBC550AA249249249249E382082082D2D2D2D20B448B4B4B4B4B4
        B4B4AFFD7352E248A9F2A94411A3D234812E4A5E07CF93B9FEB98971B654C5C8
        A56924923AB8249244F824929249279B3CBDCFF5CB4B91555C13C2A92092746C
        AB544EAB59D12E14B96D91CBDCFF005E0AA7C49EA8A50DEAD97094F174121EAB
        892F0FB9FEB94971B63E4245348F491BE15AB625A31890970A5E2373FD7252E3
        63AB9105348F4918B817025A2D570A5CBE9CEDCFF5C84B90D161616161616169
        60A9D1BD27931A345A5A25E3F73FD71AE43A855171717171717A2E2E5A3245A5
        4F542D57125E3F73FD71A5C7510C86432190C86416B2D121B1F147040B852FE0
        373FD7125CDE9A4224824918C6F542D57125E1BCF97B9FEB852E36C91B2592C9
        64BD5A29431F1A42E425FC16E7FAE18E368820820820B448B74A9948C6F86390
        97F07B9FEB5812E375179797979797978AB2747AC8F5485AB42235484BF83DCF
        F5AA5C8748A82C4588B11622C4582A11031BD678172578E9E2DCFF005C3235AB
        65C5E8BD17A2F45E8B8B8B89E4342E4AF1F04F0EE7FAE4B20820820B4B482048
        9E0A9EB491ACF0A5A4F8F8D275DCFF005C87512492492497124EAF47ACF0B447
        02FE1674DCFF005C753244C65CCB9923649225A4EAC82048820820B48208208F
        E1609373FD71363D5245A5BC14D3C8812E05FC6366E7FAE268C6633196161698
        CC625C8425FC8A2BFF005CA9E6A5C297F1DB9FEB9EC4F8D702FE3634DCFF005A
        E432190C86532190C86432190CA2DC32190C864321905B86532994CA673399CC
        E673399CCE673399CCE673399CCE673399CCE673399CCE673399CCE673399CCE
        673399CCE673399CCE673399CCE67339DC15397FD29FF4B7FD2DFF004B7FD2DF
        07FFDA0008010100010500FE8FF7BFFD9FF4AFBDFF00ECFF00A57DEFFF0067FD
        2BEF7FFB3FE95F7BFF00D9FF004AFBDFFECFFA57DEFF00F67FD2BEF7FF00B3FE
        95F7BFFD9FF4AFBDFF00ECFF00A57DEFFF0067FD2BEF7FFB3FE95F7BFF00D9EB
        F1B7D947C6DF651F1B7D947C6DF651F1B7D9457F8DFECDA4F8E7ECD3E39FB34F
        8E7ECD3E39FB34F8E7ECD3E39FB347F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7
        ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3
        E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E38F
        B30F8E3ECC3E38FB30F8E7ECD3E39FB30F8E7ECC3E39FB30F8E3ECC3E38FB30F
        8E3ECC3E39FB305F8E7ECD3E38FB30F8E3ECC3E38FB30F8E3ECC3E38FB30F8E3
        ECC3E39FB30F8E7ECC3E39FB30F8E7ECC3E39FB30F8E7ECC3E39FB30F8E7ECC3
        E39FB30F8E3ECC3E38FB305F8E7ECB95F8DBEC96BE35FB28F8D7ECA3E35FB28F
        8D7ECA3E35FB28F8D7ECA3E35FB28FCA9E9B63D17E50E4D745BC2E785CC5ECBD
        97B2F65ECBD97B2F65ECBD97B2F65ECBD97B2F66466466466465ECC8CBD99199
        199197B1549AE3892CA8B2A2CA8C7598EA31D463A8C5518EA31D4534D74BE3FC
        BDFB6793D0AA8B5EBE5C55533E2D369D2D35C4BA14D772D3A1D0E87425128BA9
        2EA4BA93A3E2FCBDFB6795575556DDA53C9AA991F865E5AA6D35526B8E512892
        4924924924928A9D2D435AB3F2F7ED9E53523529D163E4D54CF83F3E426D14B4
        F8D229A2E31331331331188C46231188C4534BA787F2F7ED9E6352AAA5D2F935
        533E07CF949B42A935C49B4D6E52D64A4BE92FA4BE82FA0BE92FA0BE92FA4BE9
        2FA44D3D7F2F7ED9E6D54AA934E97C9AA99E7F9F31368A5A7C89D7A9D759248D
        28A9D2D35523F2F7ED9E7554AA93A5D2F935533E1609E14DA1549F229A29A963
        A4C7498E931D263A4C7498E91EDD22DBA116522A552CFCBDFB679F552AA5552E
        97C9AA99E54C733CB85369D2D3E3A6A74BCA6532994CA653375CA6532994CA7E
        5E73F9639E8AE955269A27935533E2D369AA935C88E08208E0FCBBFB5F54D3E6
        A2BA5549A3CB935533C294B87E15382969AE2A5C34A86ADA4B692DA48A48A48A
        4B692DA4B693F2F7ED9D7B9DD4775BC6CEF2DD5CCAE8B8F2E5554C9E47412509
        52CA5B9F03E5C09B4D549AE14515DAD43E4FE5EFDB3C34D4E97B3BCB757290D1
        5D12B955D32269A50D28A7C2791E7AA6D09A6B8A8AEDE4FE5EFDB3C54D4E97B3
        BD4EEAE5A65744E913C0DC2BD17A2F45D4A2B74B1BA5F868E04DA69A6B5F3D19
        4576F23F2F7ED9E3A6A74BD9DEA77572A34AE89E17D56363DB6DE392C70E9716
        D5E2D382969A3CF5F324A2B8E3FCBDFB67914D4E97B3BB4EED3CCAE89E26DD25
        553464AA2FA8C8C6E7C4CA2EA455A4D6E50D64A0C941976CCBB665DB33ED147A
        ADB4773B2773B0773B06DEF6DEE33F2F7ED9E4D353A1ECEF53BB4F29695D1AB5
        047489150A2DA0B682DA0B291D1C8AEF325664ACBEB664ACC9597D65F517545C
        C9649249D04A5B490E981C09C34E4EA753A9D49E14DA7B1BEB757E5EFDB3CAA6
        A7455B3BCB769E66E510252293AD23F31F9DBA753A92C97C7B9B7710D3B4B482
        0B4B4B4B78544B83A5AA20A5C133CA4DD2FF002DB757E56E5D353A2AD9DEA776
        9E574D2BA14B7C2DC2BCC85E64A46D37C75EDDC60ACC15982A305460A8C0CC0C
        EDD981980EDD1811811811DBA305260A4C140B66942D8DB676D41DBD076F41DB
        D076FB676FB66DECECB3B6D93B7D83F2F24BF2C6B8774C3BA60DE306E98374C1
        BA60DE306F18378A76B7E8AA875554F32AA1D3AF968D4AB19632C658CB18E869
        781F3E4D2ED134F83A1D094515DC433F2FFED9D726D9936CC9B665DB32ED9976
        CCBB665DB32ED99768CBB6535D15723C89D2082BA2DD7AEB5B69CB2E65D5173E
        4B98CB5A79EA33B33D667A8CD599B70CBB8CCBB866DC32D665ACCB5197707B95
        9937117EE32FDC16EEE216E56CBF70C95992B2FAC75564D5392B3F2D75FCABCE
        A2BAA8AB6B769DDA787A42FF00DB85A2BA6D7AC8D265B49FFE67FF0099141141
        5243E3AF6D569A74BE2964B2110B909B5A470F43F2CFED4D7B4DB3B4DB3B5DB3
        B5DB3B6DA3B5DA3B5DA3B4DB3B4DB3B5DB3B5DA6769B653B14D1579F07467FEB
        1FF9E0686A4AA974BD7CB4B6A2D65B511516B21F22BDB55AB2B459598EB31D66
        2ACC7598EB315662ACC3598AB315661DC316E18B70C3B862ACC358B6AB42D8AD
        98370EDEB3B7ACEDEB3B7ACFCB4ADFCABAAF5559DDD6777B877551DD5477759D
        DD677551DDD4776CEED9DDB3BB6776D1B5BB4EED3CB84D554BA5F2AAA793D3C0
        79694D4E9134F482083F2EFED7D716E18F711656595965659596565B516D45AC
        B6A21EB45555156D6F53BAB9486935552E97CAAA9E479956EDA6746746747708
        CE8EE11DC23B847708EE11DC23B846793399D99DA33B29F51552D7A9677151DC
        5477159F969CFE55D6EA055D25D4A1574B528913489E0EBAF98940B99524D34E
        97CAAA9E198D6BA154AAA5D0FC07989C3D7F2CFED4E28E44B45CC9A855548BEB
        29DDDCA6ADADDA7769E5D54AA934D3E5554EB3025C1550AA5552E96886C86432
        190C86432190C86432190C86410C52886D4547E59FDA9AF6DB676DB676D41DB6
        D8FD2D076B4A7DAD27688ED51DA1DA33B36768D9DA5476959DA567695947A7DD
        A2A4E572EAA5549A69F2AAA639BD0E8743A72BC8A6AB44E4FCB9FB5F93D69254
        1723FF0053CC9549722D65AC8E7D74A6351CBAA88E4BAE9A4CB4196832ED9976
        CCBB666DB336D99B6CCDB665DB32ED9976CCBB665DB32ED99B6CCB414FA8A293
        F2DB557E56D6110884422110884744743A32085E16BA1549A8E2F2E1AA9E4554
        AA9574BA1A71E07F2C7ED3E57FE7C4D7426B869498FA70D54C721D29AAE87435
        D79F41F963F69EBDC6E9DC6E9DC6E9DC6E956FFA84775BE775BE777BE777BE77
        7BE775BE777BE777BE777BE777BE777BE777BE775BE775BE775BE775BE775BE7
        75BE775BE775EA0EEB7CEEB7CEEB7CEEB7CEEB7C5EAF7D35EA775AEE374EE378
        AB7B76A32EE19770CBB885BDB864ACCBB865DC9CDB866DC335666AC75D664DC3
        25664DC325664ACC95992B1D75B44924B2597171717125CCB99732491368FCB1
        FB4F915D30743A1D0E8283A1D0E9C6A0E8743A1D0E8743A1D0E840AA869CAD60
        853C8843A4B510422D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D1D2A6C45A7E59F
        DA9C9AA9D20823482082086432190C8E626D09CAD6190C864321EB0C8643D234
        EBE05B128D7F2CFED4D6592C965CD92D12CB99D4EA753A92C96896CEA753A9D4
        EA753A9D4EA753A9D4EA753A9D4EA753A89B2E67526A26A26A26A26A26A258DB
        2EA91351351351D4BAA2592C964B2592C964B2592C964B2592C964B2592C964B
        259F957F68F0CCF2DAF09E425CBF2F15F957F687F07E5CFF003F11F957F686AE
        9AA9F01E5CF6E08E7F992B9D452AD69AE47E55FDA1AD54D2A8C68C68C68C68C6
        8C68C68C68C68C68C68C68C68C68C68C68C68B2931A31A31A31A31A31A31A31A
        31A31A31A2C42DB48B116231A31A31A31A31A31A31A31A31A31A31A31A2C4588
        C68C6918D18D18D18D18D18D18D18D18D18D32C462DBA13A12A6AA29B31A31A3
        1A31A31A31A31A3F2B74FCA3AE6DC336E19B70CDB866DC336E19B70CDB866DC3
        36E19B70CDB866DC336E19B70CDB866DC1EF6E33A9D4EA753A9D4EA753A9D48F
        0E9F1F994BB6ADC54C34B70AADA697C8FCAFFB4B5CBB665DB32ED9976CCBB665
        DB32ED9976CCBB665DB32ED9976CCBB665DB32ED9976CCBB665DB32D065A0CBB
        68CB4196832D065A0CB4196832D0575D152F0F3C54ABAA75529B6A8753A19279
        F23F2BFED2D7DB364F6CD93DB364F6CD93DB364F6CD93DB364F6CD93DB364F6C
        D93DB364F6CD93DB364F6CD93DB364F6CD93DB364F6CD93DB364F6CD93DB364F
        6CDA17FF0037659ED9B27B66C9ED9B27B66C9EDBB33ED9B27B66C9ED9B27B66C
        9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B6
        6C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B6ECA3DB364
        F6CD917FF3B651EDBB285FFCEDA4DFFF003B62A6FF00F9FB551ED9B27B66C9ED
        9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9F96E9547E56D7DC3D49EE1
        EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A
        83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0
        F70F507B87A93DC3D41EE1EA0F70F527B87A83DC3D41EE1EA0F70F507B87A83D
        C3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70
        F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D
        41EE1EA0F70F507B87A93BCDF477BBF0FD7FA94DFF00F47D437EE1EA4F70F507
        B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83F2CD4EBF
        CA9AAF2F0A84BA7418BC52126CA69BC854555D355D57FEB45553A9F33F2BFED2
        D57978544A85E6FC5A29BA6D8A632AA5BA4AA53E6FE57FDA5AAF2F0A96ADF8B5
        4BA8A3FF0054BFF52B74AAB9FF0095FF00696ABCBC225E3EB6E9537EDBAFFF00
        5F3D1AE77E57FDA5AAF2F05225E3188DBA555565735D54A75572B87CB99F95FF
        00696ABCBC5B5E0D8E84E9A55293A9535BA36E92AA9D4DBF05F95FF697855CCF
        2F0085D44E9DA6D50E86E855535BA572A793F95FF697F228A5C3AB6EAA9D714D
        1CDF2E47E57FDA5C1E5CEF33CBF804DAF029F17E57FDA5E07CFC27972DBF091C
        5F95FF00696ABCB99E7E1D3E437E2FF2BFED2D579707971F9F888FE03CB5FCAF
        FB4B586432190C86432189496B2D6410D90C86432190C86432190C86433C910C
        86432190C86432190C86432190432190C86410C86432190F586432190C864321
        90C86432190C86432190C86432196BD3F2BFED2D52850C86432190C87A742191
        D6190C86432190C86432190C8634E1AD2190C86432190C86432190C86432190C
        54B218D74B486432190C869690C86432190C86432190C86432190C86432190C8
        64321907E57FDA5C524EB56889249249249249249D6116AD6492492492492757
        E4C5AC93C16A21704924924924924924924924EB5797E58FDA7AC10410411A42
        3A1088208208208208208208442211088208208208208208204B582082082082
        082082082082082082082082082082083A1F963F69F0F53A9D74E9AB6893A9D4
        EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9223A9D7593A9
        D4EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753AEBD4FCB1FB4
        F5B692CA4B692DA4B292CA4B292CA4B292CA4B692CA4B692DA4B692DA4B692DA
        4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4
        B292CA4B692DA4B292CA4B292DA4B692DA4B692DA4B692DA4B692DA4B692DA4B
        692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692CA4B292CA4B693F2CFE
        D4D7B4DD3B4DD3B4DD3B5DD6FB4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD
        3B5DD3B5DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4D
        D3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD1FA5DD42F49BA769BA
        769BA769BA769BA769BA769BA769BA769BA3F4BBC8ED774ED374ED374ED374ED
        374ED374ED374ED374ED374ED374ED374ED374ED374ED374ED374ED374ED374E
        D374ED374ED374ED374ED775BED374ED374ED374ED374FCB69D3F95B87CF993E
        0DB12E6273E0FCF8BF2F7ED9E0F3E77978094F44B9D3E07CF8FF002F7ED9D73D
        4CCF519EA33D467A8CF519EA33D467A8CF519EA16E56D64ACC95992B32565D5A
        3256CDEF515D2FB9DF3B9DF3B9DF3B9DF3B9DF3B9DF3B9DF3B9DF3B9DF28AF76
        D75D62AEA9756E4D5BB5A59B74CDBA66DD16EEEB6AADC8BEB2FACBEB2FACBEB2
        FACBEB1555CA4D2E182190C8643208208219044904104104107E5EFDB3CDA299
        E3DDAD514A7C9D9DB244FA4B6E5524BA9C6B4531C9DBA5AF03E7C9FCBFFB6799
        4D373885C3554A8A6AA9D4DA4CEAB8F6B6EFA9B4855175A5D45255537A492505
        E8B8BA04E74944A2514529B9F01E7CAFCBFF00B6796BABA55AB86616EEE64AB5
        8684E7828A1D55529509B85FE92A995391EB4A92235EAC4A07D4B58E0A55CD28
        F01E7CBFCBFF00B67974530B8B7F72789A139D14B746DA49BA5910A545754127
        9E8BA94A54AD3FF610DCEAA9753A6954AE04A1786FCBFF00B6795453C4D49BBB
        962E4ECED5ABA1524C86371C34D31AA50529A553829F243706DD16AE05C89F01
        F97FF6CF268A65F16E56A8A5B753E263A5D251B499E74FF9122552A67829479E
        ABA8DC27D47D046DD13C2972FA73BF2FFED9E4252D285C5B946ED6F06E98374C
        1BA60DD306E98374C3B861DD28F4ED35FF00E638436989153B9EB4AB9FFE745D
        5F449B6DDC5C50AE7D2383CBC4FE5FFDB3C8A69B57167A13EE283B8A0EE283B8
        A0EE283B8A0EE2817A8A1B55A9FF00D1BA9968FCABAA47AA4D9D16886E44A16A
        94B4952BC77E5FFDB3C7453C7BFB9690753A9D4EA75204AA652AA54EC6DD83AA
        1A527FE6A7034E539D6951ADC52B868A6D5E0BCB9BF97FF6CF1514CF1CA4743A
        1D0E8742693A17286E1A6EDAAA70948941368DB91A913295AD4534CF0EDD3E1B
        CF97F97FF6CF0D2AE710B86AA9534D753AEAE1A1D25915BAA69DAA3236C5FF00
        B1E6FAC373C14D2AA7D56A93AB868A6E7FC0FE5EFDB3C094BA69B571574535AC
        1B660DB30ED9876CC3B661DB16CED42DBA1BC7B4C487353A85E75552F54A5AE8
        79BEA85D44A16B4AB9A50BF81FCBDFB6759828A61716EEF34F2EE19B70CDB866
        DC336E19B70CDB82DDA9A5BB5D250AA54D5569E656E13D521285A2702A44F5F3
        74D36AF15E5C8FCBDFB675A29970D09A7C355D6F6F59DBD676F59DBD676F59DB
        D676F58BD3D6CEDAB36B66C6DC24A74A9C2E0A547052B469325AD36E8B7F84FC
        BDFB6785A13D6BA96DD3DC1DC9DC9DC9DC9DC9DC23B893B946DEE641B84DF525
        24DCBD194A2754A5F06DD1E3E09E1FCBDFB6789A4C96B4DCBF72AC7598EB31EE
        18F70C7B8595A31D6CB2B29DAAAA74D34D29BBB4892A72DEB4A9138D111D5285
        AD14BA9F911CA8F0DE5C1F97BF6CF21EE514BCDB666DB336D99B6CCDB666DB32
        EDB79B6C5B9B6D95329F22A7C090946AAA84970436E9A552B553FC04CE9F97BF
        6CF1EF6E5886BAA724104C289724B3676ED553856A3C90A9A5914914908A36A9
        4ACA0B281D14229A292DA4B282DA4B691534AE2EABF81FCBDFB678B73716DD2D
        B6F5871E4253AECEDDC3690BABE1B8DBA38129E6DC8552D174F1BF97BF6CF157
        46ED7560DC305660DC16C6E2787725EC6E3305660ACA7D3D6EA4924DDCF86A36
        E9B9EBE6251CDA20ABC723F2F7ED9E4CB9820885AD5571212BDA492D2509473A
        110BC7FE5EFDB3C899128D5A925AD2A709A8E248A29B56B4AE637FC079EBF97B
        F6CEBF319F319F319F318FF3149F319F319F319F319F319F319F31437F9824F9
        80F980F980F980F980F980A7F312A5FCCC7CCC7CCC2FCCB07CCE7CCE7CCE7CCE
        7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE
        7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE
        7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CD07CCE7CD07E4AF5BEE5F91BFA57DE
        FF00F67FD2BEF7FF00B3FE95F7BFFD9FF4AFBDFF00ECFF00A57DEFFF0067AFFF
        DA0008010202063F0043B22D916C8B645B22D916C8B645B22D916C8B645B7C27
        84F09E13C2784924924924924924924924924924924924924924924924924924
        92492492492492492492493C2784F09E12492493C2784F09E13C278493C27855
        DFF8C8BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BA
        E1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE
        1B88BAE1B88BAE19175C322EB8645D70DC45D70C8BAE19175C322EB86E22EB86
        45D70C8BAE19175C322EB8645D70C8BAE19175C322EB8645D70C8BAE19175C32
        2EB8645D70DC45D70C8BAE19175C322EB8645D70C8BAE19175C322EB8645D70C
        8BAE19175C322EB8645D70C8BAE19175C322EB8645D70C8BAE19175C322EB864
        5D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45
        D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D
        70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DCF84924924924924924
        9249249249249EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB
        47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB4
        7AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47
        AD156FE3322D916C8B645B22DBE1FFDA0008010302063F00FD03A08208208208
        1D16E8B745BA2DD16E8B745BA2DD16E8B745BA2DD16E8B745BA2DD16E8B745BF
        D2C7FA58E8B7FF0073DFF627745BA2DD16E8B745BA2DD16E8B745BA2DD16E8B7
        45BA2DD16E8B745BA2DD16E8B745BA2DD16E8B7FCC8208208208208208208208
        208208208208208208208208208208208208208208208208FAF9FFDA00080101
        01063F00FC0FFCBBEA9DBFF77CE7E0BFE5DF54EDFF00BBE73F05FF002EFAA76F
        FDDF39F82FF977D53B7FEEF9CFC17FCBBEA9DBFF0077CE7E0BFE5DF54EDFFBBE
        73F05FF2EFAA76FF00DDF39F82FF00977D53B7FEEF9CFC17FCBBEA9DBFF77CE7
        E0BFE5DF54EDFF00BBE73F05FF002EFAA76FFDDF39F82FF977D53B7FEEF9CFC1
        7FCBBEA9DBFF0077CE607C9769ED7D2AF92ED3DAFA55F25DA7B5F4ABE4BB4F6B
        E957C9769ED7D2A8FF00F0D27FD476AE957C9B68ED5D2AF936D1DABA55F26DA3
        B574ABE4DB476AE957C9B68ED5D2AF936D1DABA5501DCDB476AE957C9B68ED5D
        2AF936D1DABA55F26DA3B574ABE4DB476AE957C9B68ED5D2AF936D1DABA55F26
        DA3B574ABE4DB476AE957C9B68ED5D2AF936D1DABA55F26DA3B574ABE4DB476A
        E957C9B68ED5D2AF936D1DABA55F26DA3B574ABE4DB476AE957C9B68ED5D2AF9
        36D1DABA55F26DA3B574ABE4DB476AE957C9B68ED7D2AF936D1DAFA55F26DA3B
        5F4ABE4DB476BE957C9B68ED7D2AF93ED1DABA55F27DA3B574ABE4DB476BE957
        C9B68ED7D2AF936D1DAFA55F26DA3B5F4ABE4CF37FB8ED5D2AF936D1DAFA55F2
        6DA3B5F4ABE4DB476BE957C9B68ED7D2AF936D1DAFA55F26DA3B574ABE4DB476
        BE957C9B68ED7D2AF936D1DAFA55F27DA3B574ABE4DB476AE957C9B68ED5D2AF
        936D1DABA55F26DA7B574ABE4DB4F6AE957C9F68ED5D2AF936D1DABA552F7347
        37FB8ED7D2A88EE593FEA7B5F4ABE4BB4F6BE957C9769ED7D2AF92ED3DAFA55F
        25DA7B5F4ABE4BB4F6BE957C9769ED7D2AF92ED3DAFA55EA4763ECD63FB7D9BB
        277F77C766ECFCDC49E2D8E6FBC39EB36446D124C009F13C2A22E9AB064A7064
        7DC64C993264C993264C993264C993264C9934A993264C99328D231122BA6857
        4A65755DE04DC09AB09AB09AB4CA462F2E23D50FB8BBEFC4B9EC57B6651174F0
        EEF09C3887DF31DC88511EF18881BC2BDD74E9D3A714A70AF0A55E14ABC29510
        6385EA87DC5DF7E25CF62E0E0B8460C5BFC654464C4C43EFB8851A779E69C288
        310707D50FB8BBEFC4B9EC57E5B902C8CB1067C5443EF3E0C444288F78C44844
        9314E1384E2B4E9D3A74E9EA57AA57A42E307D50FB8BBEFC4B9EC5709DD8382A
        07DD8A887DE3F962A2149EF18608994A6072417F9A74F527A93D49D39A13A74E
        9D444BBBEA87DC5DF7E25CF63A07DC542D7B88C5443E3F34C30A4A30A214463D
        9327DC88972833A88DCF543EE2EFBF12E7B11C3864169910E3F2CD8A8879F1B1
        3EE189817C19144622209CE1394E5394E53953A9D4E9A59C9299446E7AA1F717
        7DF8973DBC20694431134D8A887C5C4FB862FF003C188F785118711EF0AED6AE
        D6AED6AED6AED6AED6A4B3416577DF14D5A6AD3569AB5EA81CBFC8BBECFF00E4
        B9EDE390CC510642A071310F9313C031B2518311EF5263201E73930FD4FF00B8
        7BEBC4B9EC0931D9E6502B362621E7C18292CC00DEB11EF0A230E51113C5022C
        829930F6ABA15D0AE8574264C997AA1F7177DF8973D812103DCAF0A028192D87
        18DCE18A815251898879C6E694496120032A801C522E90A36ADC26E2AC91961B
        C65A70223DE14461E5138524A32E27D50FB8BBEFC4B9EC216818112C540C96C5
        E18D887DCCF9567C4443CE14C6D8108146C992704E5512624301BD3F2C08D214
        66C2CCA1C99C28C6319F11EA87DC5DF7E25CF618B564C0862B25A0E31B117B87
        765A7762A753EE09224CBEE46D59FD3684A649913C5FD464CDBDA33E07085113
        E0C9B9032D9C47AA1F7177DF8973D8816AC9811282B25B17ACE3621F26090866
        960A366102EBF49973A02D484480E5500231739936F8969DDFC9472EE66DDC9B
        902DC187EA87DC5DF7E25CF6245AB260431592D8BD671A4D912CE32E0C6640D9
        311389D3FE92C5432E697718289C53A7C738578529C6795478C21ED0AF0A42BE
        290AF8A55F14ABE15F15A85AB724C6557EA3A15EA8ABC682B8B62D7EA78110DC
        F543EE2EFBF12E7B142D5930227592D0BD671BC61EF1F9EE4B27B5466C884265
        122400840549EB57AB57AB4F5A925CC7111B260722BD50578ABC55E2AF157AB0
        AF1A55F34957CD253D69CD29CD2A7A7720A597D8A2E3D9B92290EEBA7C204181
        1282140C9CE07197D8BD50FB8BBEFC4B9EC58B564C08C8B25B17ACE3499A70A5
        888B45716D52A318E50818C416CDB8705B111B3219F3AC89D3A74E9D3A74F820
        CCB4414232AD3BB2628106044A17A9B68BDAFE43DF44FBFBCB9EC60B564C0851
        6B42F59C6F185AF6013220DE124306299326DC88F7E2222F6E384E138AD5EE15
        7856AF0AD5E57EA57AA0AF2BCAF2BCAF2BC6A4E6A4E6A4E5441268D09CD2A7A5
        4F4A634A63494C692A16ACCB34A55CACAD5D76B4AF53C0900FE45DF600FF00EC
        B9EC0D595AB2AE1A95CE0573815CE05AB2AE15AB35216ACD92086281B567896A
        718A2770C99A289174BFB7773706E413EE3A994CB2E61BCB36273288C3817E14
        CBD50FB8BBEFC4B9EC0BD6691A15EB348D0AF59A46857ECD2342BF6691A15FB3
        48D0AF8A46857C5216B05216B054AF887B57E9B42D7B311C2570A9043732E651
        0DBBF96E8814E53A74F89307CEA0408870629856AE84C1327142F82CDEC4F527
        15274FC09EA57B814B6B815EF7ABC55E2AF957CD2AF9A55F349578D255E34957
        8D255E34952DB3495EA61CBFC83BE7C4B9EC78B564C0851125A17ACE070284E8
        C0640B3B152339F6E040CEEB28DDFCD4AA50997F9AFF0035352A6A5441F76232
        10C542D4D361BA74E9F787A99F7077CF88F3D80F6A9F827B54FC139A7E09CD3F
        04E691A15E348D0AF1A4684E691A139A468578FF008F7292D1AB427348D085AB
        36AD023D943604B2059D3BCAA4F60C294485669B099315F04C684C98E233862A
        E9F72BA55D2AEABAAE702B9C0AEF026E04C9B81370261526AD3569AB4C01F6A6
        14A614A04112E7F827149D09C57A138AF42BC2B57856BD4D05C7F21EFA1FF92E
        7B02E598E68ABA15C14957056AE057456AE8A4AB82B5705255CACAB9595AB14A
        D58A55CAD444845EB266DCCE26513898162B80E049461C47BC62BF2C7CBB99A7
        0A49F07D4FFB87BEBC4B9EC0D59A0AB87DB0570D0AE1A15C341570D055D34157
        4D0AE9A131A15D3426DD16ACC84288908BD64CD8C81503EEC5923DF888D08836
        7815D2AE9A95D5755D5755D5755D5755D5755D576B576B5764C9157692AE884F
        2ABA295745255D0AE8A4AF534973FC87BE89FF00B973D81785215E1EF2149681
        192215E1484F595785255E09EB4C9D356A6DC65003DA5087BF1B03EE2A069C5C
        47BC6144FB86E40D2A07FCF78E7C8B3607A99F7077CF88F3D8F73494E69578D2
        A4B4692AF9A4A1685A324C4A8871786320540B8C5C47BC6044FB86040FB8A81F
        7109AADC64C993549AA4D526A93549AA4C993264C684D5263051164D098D057A
        99F7077CF88F3D80E69F82E552342BC6AD0AF1A94968D4A5B66196015F3405AC
        3405ACABE2AFFF00C3F157E3EC1F157EA5273926581525B10F6157856AF057C2
        16ACDBB31F7CAA579E18C95D40BE2E23DE3733E29B1F9A70A2258AF53BEE1EFA
        F12E7B159464C8A224381FE9E150C0931F90CCA070A5A7078C3DE3132986457B
        855EE157AA2AF5455EA8ABD5157AA2AF5455EA8ABD5157AA2AF5455EA8ABD515
        7AA2AF54548639A055E927102BD4E218FF0021EFA23FEE5CF603264C993264CB
        228C37088489B7AE433152E2E21A718881956505AD268EF1F52FEE0EF9F11E7B
        FA2C43E14AA419B0623DE311033ACA32EF02BD4BFB83BE7C479EC0BE6A57CD4A
        F9A95F35288E70C3248B58681A16B4D4B5A680B59C0B5A680B5A680B58680B58
        680B58680B5A680B5A680B58680B5A681A16B4D0342D69A0685AD340D0B5A681
        A16B8D0342D71A0685AE340D0B5A681A16B4D0342D69A0685AD340D0B5A681A1
        4BCE139A4D0A22D9A95F352BE6A51E3CAAF9A16B0D014B6CD4AF1A95F352BE6A
        D0AF157D5F578ABC5445AA60AF702BD5057B815FE057B815EE057F8140DA8839
        60BE014D40535015D142BB52715A715A715A715A6180C134BB9EA5FDC1DF3E23
        CF626207B77D669C288C18D18B65F14E5394E5394E5394E9D394E5394E5394E5
        394E5394E5403EE395EA5FDC1DF3E23CF62A207BB072E29B17C2A2378326DE30
        0FC181EA67DC1DF3E23CF60394E5395089AD39A4A729CD69CD2539A4A73494E6
        929CD25484FB22539A4A73494E6929CD2539A4A73494E6929CD2539A4A73494E
        6929CD2539A4A73494E6929CD2539A4A73494E6929CD2539A4A735A73494E692
        9CD2539A4A73494E6929CD2539A4A73494E7DB129CD2539A4A73494E6929CD29
        CA729CA729CA729CA729CA729CA729CA729CA729CA729CA729CAF523EBFDF1E2
        3CF61494E2E21D427DE912F8BCDBEBD48FAFF7C788F3DBCE5A77944BE373EF29
        29C3F523EBFDF1E23CF604A200FB28DE19B7844BEF08638DB364DA31E28B2265
        2D9364168E23D48FAFF7C788F3D806CF1CDB2658E44E5394E5394E5394E5394E
        5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394
        E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E7DC
        9D016BF5DA7CC171F9B240325AB2608D936F8E498C42729CA729CA729CA72BD4
        9193BFFBE3C479EC0BD57C15EABE0AF55F057AAF82BD57C15EABE0AF55F057AA
        F82BD57C15EABE0AF55F057AAF82BD57C15EABE0AF55F057AAF82BD57C140DA7
        9186320B3EF4FCB120E440D91FA4F2865408B50B4C415C4B262498DA2313EA57
        D7FBE7C479EC0D48A56A452B52295A914AD48A56A452B52295A914AD48A56A45
        2B52295A914AD48A56A452B52295A914AD48A56A452B53656A42D48A56A6CAD4
        D95A9B2B53656A6CAD4D95A9B2A1679B160BC41DEF9F0C5968BA80B008139518
        46C5B11E2A02C8694938AF52BEBFDF3E23CF606B2D55A16B2D55A16B2D55A16B
        2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B
        2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B
        2D55A16B2D55A15FB5568527396AAD0B596AAD0B596AAD0B596AAD0B596AAD0A
        1C7B55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB5568
        5ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB5568
        5ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB5568
        5ACB55685ACB55685ACB50CB2685ACB55685ACB55685036AD1E3491934231B76
        B336842D59E72D187B3428FF0076D08CB09342BF6801206D0B596AAD0B596AAD
        0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD
        0BD4DB025163F90F7D5904E6EF2E78603D9FFDBF15C9A172685C9A172685C9A1
        72685C9A172685C9A172685C9A172685C9A172685C9A172685C9A172685C9A17
        2685C9A147F4FB609ECD0B9342E4D09ECD1F15C9A172685C9A172685C9A17268
        5C9A172685C9A172685C9A172685C9A172685C9A172685C9A172685C9A172685
        C9A172685C9A172685C9A172685C9A172685C995A4F8A85BB7641C90F8A81366
        5BB6A1270A20F141F67C57244D20F8AE4D0B9342E4D0B9342E4D0B9342E4D0B9
        342E4D0B9342E4D0BD4CB65ED7F20EF9B46194F78F3C77D839660A45ECDF9002
        2720444605C2B11319CC26448110588566C9BD1E3289F6637D4AFAFF007CF88F
        3DBEC08B4C9F811DF9FA5F32E358278C24B40BE791445F0E32AFEDDA3026E913
        2209899F1DEA57D7FBE7C479EFEB1FA447D8AD59278969C13911B766D71BFF00
        5E751B25E592482FCF1FEA57D7FBE7C479EDFDF96FAB366CC8211F6A26D4A6C9
        90D0B8A2CF162F0C0FCF1BEA57D7FBE7C479EDEF26FF009584A46552002CE4CC
        8036636611080038A04C30B3633D4AFAFF007CF88F3DBDA4C5CB4EF3E358960E
        11B76844300AC9E2C0112819D0B529B2E0289C4442CF8AF52BEBFDF3E23CF6F5
        863728DE200F628131B53C194230B36A5198A36A3C6B4D640951044419B159D4
        B89F52BEBFDF3E23CF607E7BC3F3C7C42CF8F0724AB8D64C41962ACD88C4DE30
        FF0019F1D9B11EA57D7FBE7C479EC00B28C7426CBBC73A81C7C86148DE1F961F
        A95F5FEF9F11E7B0A459F179BFAA4B83EA57D7FBE7C479EC3CFF00D03F2FE81F
        9E07A95F5FEF9F11E7B139BFA367DF9EA57D7FBE7C479EC01229D4EA753A9D49
        46E3264EB329D4EA753A9D4EA753A9D4EA7C09D4EA753A9D4EA753A9D4EA74CB
        F353A9D4E9A54CA753A9D4FBB3A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9
        D4E9B73D49FAFF007CF88F3D82E9D3A74E9D64F6A7F7C24518C7D8A51009D3A7
        4E9D3A74E9D3A7463BAE9D3A74E9D3A74E9D3A74E9D343DA9A3EC2A01674E9D3
        A7453EE3A74E9D3A74E9D3A74E9D3A74E9D3A74E9D44C9ED5EA57D7FBE7C479E
        C264C9936E0932AE04646907B13264C993264C993264C9B75B7193264C993264
        C993264C8C8994A37193264DBAC9B7593264C993264C993264C993264C993212
        457A95F7077CF88F3D8A852B2A6E14DFD7732F52FEE0EF9F11E7B0993265C384
        C993264C993264C993264C993264C993264C993264DBAC9B77F24C993264C993
        264C993264C993264C993264C993264CBF352265EA5FDC1DF3E23CF603264C99
        3264C993264DB8C993264C993264C993264C993264C993264C993264C993264C
        993264C993264C993264C993264C993264C993264C993264C9932F52FEE0EF9F
        11E7B026A54D4A9A952421398A9A95352A6A54D4A9A95352A6A54D4A9BD91534
        72454D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A5
        4D4A9A95352A6A54D198454B0A54D4A9A95352A6A54D4A9A95352A6A530232C5
        4D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A54D4A
        9A95352A6A54D4A92109CC54D4A9A95352A6A57A9B64BD9FE43DF40FBBBCB9EC
        2CD8C817DE79E618C928526F3FCF0BD50FB8BBEFC4B9EC1CD8ECD977848B2ACF
        39DFF9B2E1FAA1F7177DF8973D819BDD2E2B4C1024C233489F813F027E04FC0A
        4B5EE91486A0B8B66D40B93250B59559D0B59559D0B59559D0B59559D0B59559
        D0B59559D0B59559D0B59559D0A4B64FBACE85FAED46D3969332BD5043F5C685
        188C83FC414232FB95FA82BD5057AA0AF4A732BFEF82BD52BD52BD52BD52BD52
        BD52BD5290C72040131339DE39B11EA87DC5DF7E25CF63A25B0E4BE58FF8994B
        29329267C48B644BC9078533CA11B508C240142D07C88931244408224CF294FB
        B12F89897C9BC73627D50FB8BBEFC4B9EC6C29524984496E146D196356652A95
        B2E1C4DD0F09CE45087B00950B328394A811ED2A23F5648CCA2536EC48902629
        8A651DC74E9D44B0619D3EF0CD9315EA87DC5DF7E25CF6320A184F084E57FA45
        D1F9E048D93078B4E619D7143597421213292AD03C9962B3B44A8061819A7500
        D3EE90A01664CB2414260E5406FBF543EE2EFBF12E7B1919CE19B0185E861443
        AC877042532421957FA8DF8284200480850238D6728500200B99D407BF0009CA
        03766DC86E800C62A14EF0E0C67AA1F7177DF8973D8B89F761C05E2D986559E7
        C4F1EDCF25913A301FAB215C60D3ACC5C059CB60E7321C095D403E044DE356F0
        97DD8DF543EE2EFBF12E7B159861C4CA580CE89B4E5F10232878665C72C20409
        A2A13D998A249CC0297DA724513919470227DD811994548A40A2D95718B4C378
        7B31DEA87DC5DF7E25CF62A187187E96128902BB58576B0AED615DAC2BB58574
        5215D1484CEC22142D8005A9220C501C960A22D7B02043990852ACD930333AFD
        3BB184AB32804C997FA44CB363E18FF543EE2EFBF12E7B139CB9C3225C910245
        CAA172A85CAA172A85CAA172A853D0A001A159803688C8254D18CE8D978314E8
        162A01B2E0410130DD0A18100A01863736F2F543EE2EFBF12E7B1119CB61F12C
        DE37889826C39013056E485A9BD881E517CDED46072A82B2A1397510F9167C9B
        BC270225F07FD45CEF3CD971BEA87DC5DF7E25CF61C4B09F2E1BD2AF702BDC0A
        F702BDC0AF702BC2A57B8165E042C83002599120CA18A7847DCA44E892E5673B
        990E5502EA27DD8119B078C5E6FE83EA87DC5DF7E25CF61429425801844960B8
        D6A8C8371AA4D526A935488B424B53C2A42C9110FED0ADE41201EF405B120941
        CA14210166580A944EE44991669B02244814B28CB888961FD0BD50FB8BBEFC4B
        9EC186550A4E18E333C2298D2531A4A63494C69298D2531A4A89B318C8012540
        D9842510251FD0EE25752084180FF0EA561221B900C1F024F794042033EE4436
        4522860001A7391406F981C4FAA1F7177DF8973D819B2A8CE70F8B61C5E2AFD4
        AF1A95E352BC6A578D4AF1A95E352E2DAB7C522506447F5F1ED1900004E871CF
        1AD3C7F2500FBB00FC1819CA8527022C540C8774012C54279CFF0043F543EE2E
        FBF12E7B038C42886C8A4C13C572CAF034ABC2B57856AF0AD5E15ABC2B57856A
        22D0AD5E15AE35A2090D059F7419E618312FC18113B92A816CBB91378EFD9164
        C2F543EE2EFBF12E7B0A2242A0643BA6D1F70CEAE1A55CAD5CAD5CAD5CAD5CAD
        5DFF00895C30F6AB869448B3002494CEA2819B70C583295E6C0896189E338174
        6FFF00CD4B83EA87DC5DF7E25CF61CAA05B2EE4788602402069574D6AE9A0E95
        74D074ABA683A55D341D2AE9F7C5478861EC2AEDAAF4A8104672182003090291
        84FBB09860669D4BBB050C0CC2F1500A224389CF9167CBBEBD50FB8BBEFC4B9E
        C4DF1908C8AF857C2BE15F0AF857C289B608982BE1002D024B01B901BBC5133E
        0003D880CB812E040280A7025A77FC8BF2DCF543EE2EFBF12E7B11C5B378CF90
        6E443E04AA27DC3778D6AF160660B3E032FF0035FE6A0044A96CCA55DA95C575
        44D90322BA15D0AE857429043D985946FF00C9B9EA87DC5DF7E25CF61C4CA587
        B51265267DD90473ACF914A20A27DDBBC7224174652A25470A5A571AD0979230
        3364C6C92FB164390EFED0BD50FB8BBEFC4B9EC38F1601808891356135615DAC
        23256137BA210FD3ED64D584D585FAA41398CA800C0420B365C2072A89BB6702
        0A18DE159346FF00F543EE2EFBF12E7B1500C1CA787B13A94C7DB8107C3007BC
        A80DE1F96E326DFB22C8BD50FB8BBEFC4B9EC4C034E54376054B28CBB99F0C00
        224ACA673811A3199E61839F7F7AA1F7177DF8973D81E5CDB3A85E5CDB3A85E5
        CDB3A85E5CDB3A85E5DF6FFCDF50BCB9B6750BCB9B6750BCB9B6750BCB9B6750
        BCB9B6750BCB9B6750A4FE3B0193FDDF52BCBBB5F52BCBDB5F52BCBBB5F52BCB
        BB5F52BCBBB5F52BCBBB5F52BCBBB5F52A3FFE72266FF9CEA1796F6CEA1796F6
        CEA1796F6CEA1796E4FF00ACEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA17
        96F6CEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA179
        6F6CEA1796E5CBFEF3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A
        85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A8
        5E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85
        E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E
        5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5
        ADB3A85FCFFBC7FB5FD9FF007FDF7DEBDB7FB3C6E3713FBBDBF9DE738B1808C2
        2F0FC17FCBBEA9DBFF0077CE7E0BFE5DF54EDFFBBE73F05FF2EFAA76FF00DDF3
        9F82FF00977D53B7FEEF9CFC17FCBBEA9DBFF77CE607FFD9}
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 173.858380000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 3.779530000000000000
          Width = 230.551330000000000000
          Height = 154.960730000000000000
          Frame.Typ = []
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000032000
            000160080600000043B71D2D0000001974455874536F6674776172650041646F
            626520496D616765526561647971C9653C0000032269545874584D4C3A636F6D
            2E61646F62652E786D7000000000003C3F787061636B657420626567696E3D22
            EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B6339
            64223F3E203C783A786D706D65746120786D6C6E733A783D2261646F62653A6E
            733A6D6574612F2220783A786D70746B3D2241646F626520584D5020436F7265
            20352E332D633031312036362E3134353636312C20323031322F30322F30362D
            31343A35363A32372020202020202020223E203C7264663A52444620786D6C6E
            733A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F3032
            2F32322D7264662D73796E7461782D6E7323223E203C7264663A446573637269
            7074696F6E207264663A61626F75743D222220786D6C6E733A786D703D226874
            74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C6E
            733A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F786170
            2F312E302F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E73
            2E61646F62652E636F6D2F7861702F312E302F73547970652F5265736F757263
            65526566232220786D703A43726561746F72546F6F6C3D2241646F6265205068
            6F746F73686F7020435336202857696E646F7773292220786D704D4D3A496E73
            74616E636549443D22786D702E6969643A373845424139464332453933313145
            38384135324243373835443934393734362220786D704D4D3A446F63756D656E
            7449443D22786D702E6469643A37384542413946443245393331314538384135
            32424337383544393439373436223E203C786D704D4D3A446572697665644672
            6F6D2073745265663A696E7374616E636549443D22786D702E6969643A373845
            4241394641324539333131453838413532424337383544393439373436222073
            745265663A646F63756D656E7449443D22786D702E6469643A37384542413946
            42324539333131453838413532424337383544393439373436222F3E203C2F72
            64663A4465736372697074696F6E3E203C2F7264663A5244463E203C2F783A78
            6D706D6574613E203C3F787061636B657420656E643D2272223F3E3B6DFC8B00
            00B8544944415478DAEC9D059C1C55F2C76BD693DD64E34E0CB760871C76B8DF
            FF700F040B1E0E8760C1DD3D5890C3E170087010DCDD354182C565372B23FFFA
            F5EBF1999D9E99EE7EDDD3F5CDA7B263DD53FDA6E5FDFABDAA0AC562310A4D7C
            810421B8C494C5525F8AA5BC97F99AC7088588A251A2258B958F789E8B6884A8
            A191A85B0FF558100441288E681F5ABEF663FAB0E7C1C6E9B6835F8A854A5B55
            A8D072A1225FB7F01DB12ED69173B5395E4CDFDE8C0F84AA32DEA966AB4A79A1
            2EE3F3F0A83EE5859A1CEB4BFD8EAA8CEFAFE27FA1C4637C36FDFDEA94EFAE4E
            733BC4CF1397F550E6E76349BFCD0F84521B3394FA5EEEB688253E1FCAF15B63
            3B6289C7A15CEB0AA5AC3394EF3B941FA150113B4BDA76A43CAECAB58EAAACF5
            E5F23556957C9CB5DE2423F98DB5F9EF8E6C1B87448008820810411004C10222
            404480646C67BEB6100142ABB2ADCEB621DB3AE6E33837880011041120822008
            821544808800C9D8CE7C6D114001B21A3F86E8D88A6D15B635323EF805DBB5FC
            9DB7F3DF4E112082200244100441B0820810112019DB99AF2D02204046B2ADCF
            AFB119A31CABA57896BAD093FC991B59A43CABB62B6436B1081021F088001104
            41102C2002440448C676E66B8B0A14207D78814DF953EBF2E32DD956A4F41F2F
            157432EE60BB91EDC3E428890810414841048820088260011120224032B6335F
            5B54800069E21731956A6B32463A8C518EEED43573D930C5EA46DEEA1F53FD10
            012208598800110441102C2002440448C676E66B0B9F0A9015D83660DB9C6D13
            B6C1648DE96C37B34DE615CD33B73ACD0F11208290850810411004C102224044
            80646C67BEB6F08900E10E01FD9D54E03884C77A541C9F1302CBAB4277F2DFF6
            E4EF200244102C200244100441B0800810112019DB99AF2D3C2C4096E6FFFF41
            C9A955C3A878DE62BB8AD7F5A0DA84F4DFC8DCEA343F44800842162240044110
            040B8800110192B19DF9DAC263020481E35BB0EDC0B6165B2D95C654B6ABF90B
            9F35BFD8DC0411208250022240044110040B8800110192B19DF9DA42B300E945
            6A9403D9AAB6651B4DE5F1107FCB4DFCF725F30B29EDAF081041280511208220
            08820544808800C9D8CE7C6DA141808C60DB94543CC7366CBDA97CFE43986A45
            F47EDA778B0011043B1001220882205840048808908CEDCCD7162E0990954889
            8E7F9A7FEBA87CC26CB7F2F6DEC07F3FCBB97D224004C10E4480088220081610
            01220224633BF3B5858302640D52D3AB7634FFDA053A06B7B2A8B982FF7E9B3D
            AD4B048820D88C0810411004C10222404480646C67BEB6B059808CE1FFB72725
            3AD621FBB98DBFE432FEFB75FEB81211208260332240044110040B8800110192
            B19DF9DAC20601B22AFF07C1F17F6C7F23DB31BE7F8A213C42F445DC7F112082
            E01A2240044110040B8800110192B19DF9DAA24401B20ADBCE6CDB914A9DEB04
            E800DCCE7E5DC55FFC65E6688B081041700D1120822008820544808800C9D8CE
            7C6D518400593EA4463930C5CACE988E4C3AD96E65BB86EDEB34E12102441074
            200244100441B0800810112019DB99AF2D0A0890A12C40203AFE45AA5647AE15
            DAC964FE8ACBD88DEF321A814480088236448008822008161001220224633BF3
            B5450E01D29D54BADC5D49D5EAE849CEF300DB65ECCBFBD9B126224004413322
            40044110040B8800110192B19DF9DA2245806CC10F7721253CFA913B3CC1763E
            DBBB495F44800882C710012208826DACC83694D4D51AB6806D3ADB5FBA1D136C
            40048808908CEDCCD31663B8D30FD1B107DBF2E41E8FB15DC1BEBC96EAAE0810
            41F02422400441B08D66B66E6CC3D856601BC536908D0F3EE3CAFC15DB376CEF
            B1FDAADB59A14844808800C9D8CE941787900A2687E8D884DCE525B68B59683C
            9FF437F9A6081041F02422400441709426B60D48DD09DD886D2552A2642EDBEF
            6C8FB27DCEF626DB12DDCE0A5D2002440448C676928AE7D897547C472F72179C
            372E6487EEC5937C81EF224004C19388001104C17520449076131970D64C79FD
            53B667D8DE677B8D64EA96B71001220244F9B532A9988EBDC8DD295671BE65BB
            9C8CEC56C90D10012208BE42048820085A4160EA16A43A33FF97F1DE076C5349
            4DD99AC6365FB7B3814604489005089CDB9DD471BA83C59FC06E66B15DC0ED72
            2DA98282691B200244107C85081041103C037A68DB909ACE81691D0D29EFB592
            12216FB03DC5F619A59FB904A71101124401B206BFB00FA9D88E61D65BDF56C2
            6C57B328B8803075332B0645048820F810112082207812F4CCB62575D71505CB
            BA67BCFF35DB8BA4C408A66BB5EA76B8E21101121401C217CAAA1DF9D17EA446
            2799A8F586B795AA5BF8BF4BD8A9EF13A240048820540222400441F03CC8B0B3
            13A95191F572BC8F54BFB8983F4E2A234E9B6E872B121120952E40C6F07F6349
            8D762C65BDA51DE1496E9F49BC5D1FC69D140122081585081041107C05326AA1
            83B4275BFF1CEFC7C508B26B4DD5ED6C452102A4120508DE4040F93EFCEA3FAD
            B7AEDDC4E29BCA8223741E6FCF7FD3A782890011840A4304882008BE04293F21
            420E62FB5B9ECF205BCE23A67DA0DB61DF2302A49204C8D23135C56A2C37CC28
            EBADEA18B87180188F5BC9140C224004A1A21101220882EF41E0FA61A46245F2
            318DED3F6C0FB22DD4EDB02F110152090204311D10EDBBF3EBB92A0ABA0D02CC
            2FE40EFBF9B15855BBF257048820040011208220540CA82902218279EC0D793E
            830288F7B1DDC3F6B66E877D850810BF0A909EFC18A38507B2AD6BBD059D2211
            7C723B196975E90774D863B1785B890011840020024410848A6334DB116CE3D9
            7A74F1B95708533E881E60EBD4EDB4E71101E23701B21CFF378ED454ABA1D65B
            CE71FEC7AE9ECEFEBD1D6F1B11208210384480088250B12093CF216C47B1F5EE
            E273DF931222B8233B4BB7D39E4504885F04C8C66C07F36B7B65AF54078914BE
            DFB19DCFED7267DAB43011208210444480088250F10C623B8EED48CAAE2792CA
            3C522204B507BED1EDB4E71001E2650182DEED9EFC3E46FD36B1DE4AAE801A3D
            E7B25D4EC64863358900110122041E1120822004068C889C4E6A6A5657E08477
            1BDB756C9FE876DA338800F1A200E94B2AA8FC60B665ADB78E6BDCC77EF23117
            FA31E9BB08101120822002441084E0B12ADBC964D43E280802D62F23A33E41C0
            1101E22501B21219D30BABC6914A49ED355EAB32C47EE8D5ECF8141120224004
            4104882008C10573E5CF61FB8785CF2246E442B61F753BAD0D11205E1020D867
            9160610FEB2DE12A7FB14D62BBB18AE2FE8B0011012208598800110421F0604A
            D6696CC30B7CAE8D547CC8256CBFEA76DA754480E81420A8520EE1B18DF51670
            9D2B797B2FE0369A4DA42688890051CF44800842162240044110183E41D019A4
            A666156211DB356C97B22DD0EDB86B8800715B80A0C78A9A3687B3AD677DCB5D
            E755B613D8DE4B9D26260224B9AC081041C84204882008420AEB108AA3116D6E
            E1B3334989963B743BED0A2240DC1220B5A40A6A62C46305EB5BEC3A18053C99
            42D5F7265F1201627A90B6AC081041C84204882008420ED001C408479385CFBE
            452ACDE8B3BA9D761411204E0B906652FB1D6CA4F52DD5024600CF248C0086AA
            535E1601627A90B6AC081041C84204882008421E90B617F11E7B5AFCFC3D6C13
            D97ED1EDB8238800714A80603F63D1518574BA038B69470DBCC87622FBFA7172
            3B4480A46EBFE941DAB2224004210B112082200805D89FD468487F0B9F5D486A
            0AD7C5BA9DB61D1120760B901144B547911AF1B032D2A6933F785B9031EE46B5
            4D2922400448DAF69B1EA42D2B024410B210012208826001DC994661C25D2D7E
            1ED3B28E657B47B7E3B62102C42E01B232DB045275681A4B693F9799CC3DE653
            88EAE7A9A72240D2FE8A001184521001220882500407B25DCBD6DDE2E73157FE
            24B676DD8E978D08907205080A6042941E505AABB90EC4F3E984695769F12A22
            40D2FE8A0011845210012208825024CB11EE0A5B2B6008BE61FB37DB73BA1D2F
            0B1120A50A108C78204DEDB8D25ACB75A2BC01A7B2FF972445820890E4431120
            82600322400441104A0499AF4E2FE2F3180D419D9136DD8E978408906205080B
            8FAAE3488D9AA1014B6B2C57A97A8490482144DF2A81200224F53B92FE910810
            41280F112082200865F07F6CB7B3F5B5F8F91FD80E669BA6DBF1A21101625580
            AC1052235E87505A4FDDD3A0A6CD2944B5F724374D0448E67724FD2311208250
            1E2240044110CA046954A7B06D56C432E75371A327FA11015248808C22A3134F
            48A75B4DFEE17AB6D342A8E961D440241120224004C1694480088220D8C4E56C
            C715F1F9D7498D867CA3DB714B8800C92740962135E281DFB29EFCC34704C114
            AA7A3EB9352240940B224004C1614480088220D80852ABDE4DD6BBCA8807196F
            2EE36D4480640A104CBB434CCFF1E49FA9567150D3E32CB519F14E331001A25C
            1001928FA5C97A0AC0256CDC3BD3321C8826C7396ABEF9BCC45355D9F833E0CF
            15022440BA3529011209EBF6DA2D0690F7ABEAEAE05BAA8494A882975983EDBF
            6C238A58E626B62328FD6CEC2D4480C4B7174503914EF718B21EFBE315FE4746
            5AE8D087C9ED14012202C41ADDD86691F5E235F8055199558700C177E2423F9B
            F4888FF877CE31FDD025C25A48FD069944CDB6C1FB7F92FA5D7F31FD9D69BEE6
            3001112078AF8A7FFEC65EBC1754076514E461B65D743BE14120CAFED2ED8450
            F1F4637B808A8B0BF9806D5FB6AF753B9F131120F5BCBD986A7524A9B81F3F81
            7EC624B6CBB2364E04088900B1C68A6C5FEA7642701C0893196CBFB2BDC7F615
            1BEE58FC64EFD7044480007C0E22A4A997FA1BF3434AC4B2C03EB3826E273C06
            C43D04482014A8E009EEA0E2EA3FA0A3B83FDB23BA1DCF22D80204D3E4505072
            E9D2B6582B53D98EE2DFEAFB9C1B2702844480580377341FD6ED84A08556B6EF
            D85E667B930D81630BCA5B658004088886896AF824DAA38F12205EDDAEF2E10D
            A4DFD9EA743BE2315E62DB5CB71342E0C05CFB49452E939CA3EF158229407660
            3B936DEDD21B4E1B73491540BCC3D8FE7C19BC44809008106B9CC6769E6E2704
            4F80D81A8891A7D91E659B57FC2A022640003EDFAD91A8A1A992A7626DC8F69A
            6E273CC8B56C13743B2104126448BAA5C86570B3716FB64EDDCE1B044B806CCE
            2F22A5EE16E5369B269E203555ECD7C4F68B00495F460448D1DCC9B69F6E2704
            CF81919027D9EE622B62A70EA0000108446FECC9E7D326352A5279A000D664DD
            4E7890C34905FB0A820E50B410378B8A8947FC9C6D27B6EF8B58C61982214056
            2535F2E4D7F8B945A482E3EFC8DC4E112019CB8800299A77D8D6D1ED84E06910
            C8883B6D53A860B69F800A104CBFC2671B7B13D5D456E248C815A4B2B408E96C
            C2F68A6E278440B33EDB736C3D8A5806A3DDE810BFA4D5F3CA1620C81A8894BA
            C716F72D9EE2415253AE7EC9B59D2240329611015214F8F5FF60EBA5DB11C117
            FCC0760DDBCD9457880454800023289D3FDFC422A4AAA6D282D21174B8956E27
            3C0686BA06934AF020083A5999ED45B641452E87E0F4BBB4795D9902A48154A7
            1DA306FD1C68353740728D53439953FC4480A4BC2E02A45C3034F8A96E2704DF
            81A17BC40DDD99FD56800508C0C847358B8F9E7DCDA6A81811F233F92F4DA4D3
            A0DAB4640513BC02AA67438414532B04E02EFD255A3CAE3C0182A2919348FD16
            7EE531B6A3D86666358D089094D74580948B64C012CA611ADBE96C6F245F0AB8
            00011021F5DD89BAF754EBF0BF08419A4814DBF35B655EA7C1DC7BBFCEEB162A
            1364AB7B9D547AFD62B892ED38D7BDAD1C01B229FF7F06DBA60EB79893A0B618
            84C7DD799B460448CAEB2240CA0519192ED4ED84E07B50880877D1A222404C20
            421ABAB1F5AC0401B22DDB33BA9DF02038774ED4ED842064C0271D23ADFACA45
            2E772FA93BF8EEE17F0182918E73D9F674A5BD9C03096726705BCCE8B2694480
            A4BC2E02A45C2403966017988E329E0FB7574580982033168A14623424E2EBCC
            58B8337AB96E273C083A6BF7EA76421072808074A4CD5EADC8E530856B6B326E
            26B9807F054813A9E072DC806870A5AD9C01B19CC773D35F9FAB2D4480F84E80
            3C4F3EE25DF267311CC1BBE0847C619AC008AA003196E7BFDD7BA9CC58FE1D09
            B98DED40DD4E789035D83ED6ED8420E4A1995486B662450896417ADF858E7BE8
            4F018294E4A89F566CAC8DD798C67628DBB7F9B2798900F19B0039752AF984EE
            A4024BFBEA7644A8381E611BCBB6C478165401023015AB8ACF143DFB25D7ED3F
            DE625B4FB7131E0375721094BF48B72382D005B8BE7F44C5279040AD10141F5D
            E0A877FE1220EBF07760DAE5668EB6893BA81B852622404480B8CD18B64F743B
            21542C5F90BA8BF663A00508C0FAEA1A54A142FF65C6C27CF21F496E5464F236
            DBDF753B21081618492A26647091CB7DC5B601DB3CC73CF3870019462AEBE3FE
            8EB5837BA0A6D791DC56EFA4BE2802A45204C829CF914FD8991D7F44B7134245
            836257DBF359E04DF534A002046024A4AE9BCA8C65C4C87874FBB35993D4454B
            4807B5132AA143220483D16C9F919AF9500CDF912A74E84CAD1BEF0B10D4F240
            907931451EBD4A22D399D5828A2240448038C5A96C17E876420804C8A2F45CA0
            050840207A63335143133FEED4BDA556D98B24D03A1769531804C107FC8D54DC
            67B127352418C1742CFB45887705C8766CE7B3AD6EFB36BB0FA6DA8F27554C56
            6DB208101201A217DCC11BABDB0921306CCF876232956B1005483C3B18A662D5
            36A85111EF83BB7FA7EB76C283ECC0F6B46E2704A148D0B12E65BFFD926D23B6
            B9B67A13ED4D54F3032D68DE936A622A25936601825819088F4AE91BA1A60746
            71D2A6D18900511FAA4001F22CF904CC615E57B71342A0601162D69308A40031
            B71BD6D4CC17DE3A2542ECFE0E7B41B1BD9D743BE14150E8ED6BDD4E780F4FEF
            CB82E200B6DB4B580E717D6B91D209F610ED4F7BD73F4E77F798448BF9B48B5B
            321A05C889A48A0956C2742BBE8019D3AD6EC9B9C922404804883E7080FDC0D6
            5FB72342E0D892906B3EA8020460FDD5D5AA4608F06A5B283E655B55B7131EE3
            27520264896E473C47D6855CF028E8689F53C272C888F70F367BE6904687D103
            3D0EA7DD1B5EA13911D5D5D220403625554C774D5BB6493FAF934A9BFE5DDEA6
            1001422240F481BCE092BF5ED001A6F9FE8DCF0C9FE9762427389821085A1739
            27400044484D8D0A4A8F7FA7F7184AEA22D64DB7231EE325B6CD753BE14D42CE
            1D3382DD945ADF671ADBA6B678101D4AB7369D4407757B9AE69933525D1420C8
            0A763155CE742B702E6FE799853E2402447DA8F204C8C9CF900FD89954AD0641
            D001B263E10EF21FE4B57E374E1611D6486DADCE77A4227CC56DE8CEDDFB46F5
            D87B60CEF7ABBA9DF020D7B11DADDB892C627DD86A757BA12E9E5573F84198D2
            3A15821779835496AB6241FF61D7B2BF5D9F00398C54AC479FB2B7C11B4C673B
            88ED652BB3204580A80F8900D103824ACFD5ED8410683E24CC27F6A200E95842
            D4D9E6CE74128C7C3434AA3A21DE0B4A3F9CED06DD4E7810745E6ED6ED84823B
            F9B11E6C3D69A5DA7768F9AAF9B438A6AFD3DF40115A106AA0573B59BB8620E2
            314B4D448887692215605E6CA1427023DB11657DBBFB020471AF48475B49357C
            90500881E6F353B6B3EBA61001422240F4711FDB9EBA9D1002CFDD7CE6DB4FB7
            1369E06401F10111E29600A1285137EE44D6D69B22C4335358AE653B4AB7131E
            04D34FA6E976C298861FEDCFBB4B94A6349D45631B5E5473E8358AFAF8F5F3EC
            D6036952EB697CEDFC554488F7C1946CDC102AE547C2CDCCF34BFE66F70448A3
            3935E9241BDACB2B603AF304CABC19220224C002E4245F0890F748E5041704DD
            1CCE87E84DBA9D5098278EB6163525CAADB9EC4665F490CA8C859395772AA5BF
            C0B6856E273C462BDB726C33F5B9808B28EF9F11D496EBA0E77B8DA52D1BBEA0
            367E69494C6F571F9E35F0AEDCC04E9CDD628A90EA5FF85516F52242BCCC1E6C
            F797B8EC3E546AAD207704C83F498D7A2C6D535B7901C4F0EECF978D4FB31BA2
            F0C22240D4872A5080783E353CE63C2203562FDD8E0882C90A7C987EA3DB09E3
            408F8689DA5BD599D5CD8108888EAA6A33289DBC10948EABC6F76CC3753BE231
            305D6565BD2EF0BE1119C9BFD03BF4618F33698DDA5F8DCE1BF6182F8C9DA11F
            D9C88E74E3C3E9BC96FDE88CD6B378DF6611121211E2719009EAF81297DD98ED
            B5E216E13D363A92AE6B9C4847767FC4090182696597B3EDE64C73690323D313
            D446E76A88C22B1001A23E547902E4C4A7C8E3ACCD0EBFABDB094148E16B3E53
            ACA8DB09E32414EE20EA68CD3801BA04A65F55F3C9BAB147B25E883E70B7F07B
            9D0E7894C7D976D4F6EDB8D68447D34AF52FD017BD2618CF6745D465D70BE223
            4EBA08D99745C8D93212E20F5E2125268A05F3EC56629B617D912A2371C2034D
            C71A69786D16208790CA70D5DBE9067311D4F640A0F983C98DCED51085572402
            447D480488FBE06EC08365AF4510ECE552D23D3F1707727BBBCA82A52B9528D2
            F3D677636B508FF5814ADF4FEA74C0A3207947C13497F68360F3EEBC6F0EA7BF
            373C436FF63AD6787516B239EB6E913CA03FD9644EC74A8E84484C88C7C10C09
            DC7828A5E3FE2DDB2A64B54648AC27F71767D0DC9E7B1AD3F6DACC5E70990204
            37B290A56E33575BCD795E2695327946FA46E76A88C22B1301A23E2402C47DC6
            B1DDA1DB0941C8268660C84FCB5E4D29E02046DC47FB127DE243B5811AF9A8E7
            CE665DBD4E117232DB451A1BC2ABEC4D2A89878BB0F88822C56E1D5DDDE3229A
            D0FDBFC6AB5E161F715245C8392DFBD359ADACDDAA66AA0C592242BC0A3AEFFF
            2B7159CC41DFC1D22763CDDC5F9C6EA7004171C58984646C95C525A4CEC73936
            DAE26B991F110142152A403C7FD3109D8A93CB5E8B20D80FC4C76A5ABED91020
            9D6A04447721B5F8D42B64C6425C889EA074DCA418A7B7213CC95AA43206B904
            E6C9F7E33FDDE8BEE62369CFC6D7A9837BF50B62DE171F7152A7639DD3328E45
            08F713AB7F25356B474488474166AB89252F1B8B9E5EF053481F5DFD3BFDD9BC
            2B35F3FED15ABA005987ED2AAAACD4BA602EDB217C397A34EF274480988800F1
            8B008183D6EE500882FBA0F684FB59B1BC2440805185BD4A15294C64C672D5AF
            B749E5CC17922C601B466A2EB6C39899AEA283F86F3B3DD47C32EDDAFD2D5A10
            561D7A0FECA1456F0DEE727737A6638DA5335A27494C4816DA134F64B8137B93
            4AEFD4A32EC535F9DFC68E3C8255F40FB4B0F78E461775496902E442B6537437
            9503A000ECBE6CBF7479391201622202C42F0204F33497D5ED8420E401733306
            B0B5B8FAAD46FCC71277D3EF16C2C88CC56799861E6E67C662D543BFB1F5D4DD
            041E03E9CBD771E7AB549ADD7E756FD057BD0EA37E7C5D9D1F312AC6F84E7CA4
            6C516224E4FC967DE87423301D232122428C738ED70A91C66243F93F64CCAC2F
            61690480E711066125AC439DF46AF381B451DD37342F6590D7A200D992D46C8E
            3575379303A4B59D08101120A60769CBE61620273C411E864F28F43305FE6C2F
            789CABD9FEEDDAB71917FFB077463F528108A9AD23AAEBE66666AC35C8D56946
            BE610ADB018E7E4308F9741BB88F368206D4BF463FF5196FC44FCC35FBA61EDB
            3B8B263526E4FCD67DE9F49649664C4840A76385CCD4DF88F5F2DA8F6B9C6A62
            A8F1714F114BA13ECE783E8F3E937B855195423AB490DEEDB507ADDDF02BCD09
            AB77E3BF7E0101821E2BA687959A2ED8CBE0A6DB38B687535F14012202C4F420
            6D593F0A907282CB04C14D86B0FDEECA3719A31F6DEA0EA4D704083044488312
            22EE0810045AFF47F7667B106469BBD4B9D547D4BCF868334D6ABA8ACE68BAC7
            B80EF921D8BCC8AD4C8A9096B1743AA6630535301DC733CE3B5E3CF7C43B51B1
            183AC4BB5858E201DE8623D9E6E4D850B52E8C7CD47C496FF79848EBD6FD4C73
            22D9BF781702044551AF275508B4D2400D15DCDCF821F30D112022404C0FD296
            F5A30041F19AAB753B210816B899ED30C7BF0527874898A8A3CD7B1D8054D041
            69E8C617EF7A37A66A9CC7769AEE4DF620FF6273E804CF2A23DA9BAD175DD73C
            918EECF9B4F133CFA930F1112767B1C22006A687DBC97B431F59F4E29E1C7E9C
            C63CEF23EDEEB17CFEBCDE3887669D474DF1115E9AB6EAF6304D6D3ECD783A3B
            92E82EA67F3ABB39EA4865823A4677433804D2061F9DEF4D112022404C0FD296
            CD2D408E7F9CBC4BE8065241BE82E075302B1855B8673AFE4D9D6DE614080F77
            048CA0F490AA1182B8106747421E61DB59F7267B101467FCD1F6B58610903BC0
            B89ADFDC7C2E8D6F7A8E1671E7AC33E683AE69194084743703D393232101A813
            82E317B166FE101F26B15DB897FA70C66BF8EF433E2F1DC8DBF149427CA49D47
            51BFA689FF2C43DB74FF0F3DDB7CAAF1EAEC686EF161AC35BD49501411FD9695
            75B7800360F2D9C16C7776F521112022404C0FD296F5A10029B9CAA920E8A0CB
            3B43E58303973B021D1DBAB7D31A31F34E6243776783D243A16FA832A7399403
            82F29722258C6D84FB20E1917C8DFE8CA6F7D99F46D6102D8CA89E895FBAA6E5
            902A422E6ADD9B4E6D3997AFB7BFF0C65768603AC447B8538DBA7A71DA5557C4
            624807BB53CA2BD7B2FF13D436A4888FC43685550AE950842EEA3E994EEA7EB7
            F156A12985299DDA4A2E19F025DB1E6C9F17FAA008101120A60769CBE61620C7
            3D461E05C73C2EA2FD753B220816412F048913E63AB276230014B79A3D187C9E
            0FC48354F3A15CD7E09400410632E447ADD3BDA91EE379B6ADED5B1DBADE7C61
            EE1CCD2DFD21CDED37967AF3CF3A2F9C98B012188CE9586CDDAAE322E41CDEC7
            31F05981232138663B96A8C0736324D327BF343A6EB150333F9A4F4A84EFCEE7
            CC479282235380604746FD9A5A7ABAE7A1B45DF70FA99D7FE88516EAD7709320
            F52F52B18FD1BDD90E713FA9AAE64BAC7C5804880810D383B465FD26405660FB
            4AB713825024484778B1636B87F8F01B8608A95595D2ED17219BB0BDAC7B133D
            888DA3710836EF6E049BFFBDE135FA6FAF9368205F3767452A33DEC3628B2462
            422E68DD974E6B39BBB202D38D4C7B7CDCB62F8ABFA0DBA3D288C536E1DF631E
            6F4FC694AB54011251353E421D34B5E781B455C367340F71F6214BBF24AA999F
            A37B331DE478EE345F51CC0222404480981EA42DEB37018239DD8FE87642108A
            643ADB68DBD78A8336DCA1A642847CD8C189A7E7ADAD571D1BFB184F2A018090
            CE116C3796BF1A049BF7E4FDAE3F9DDD7C219DD97C9FF152A565BA2A85541172
            61CB589A88C0F4AABFF8F844A7DDA71DF6380901821A963E1EE38A991DB854F1
            911020E6585694C547DDFBF46AE379B451FD97C9FA355D6FF24AA4463D36D2BD
            890EC13B32EDC736B5D8412F112022404C0FD296F59B0099482A7FB620F88D6D
            D99EB3758DB8904280F8B93300DF310A12AA352BA5DB02B2E44DD0BD651E04B1
            73AF95B50623D8BC1FF7C6EAE9A25E57D1C93DEFA725115501DAAF7BA0DD1831
            2130EE475CDABA2F9DD48ACCC72CB4AB50BECAC7C76AC50B10DEB6D84063B38E
            EEF6005DD2745576FD9AFC9B8CF3CD55FE6D9482BCC1B627DBAF46138A00319F
            8B00C9FA412A5880A098D03EBA9D10841278842F70BBDAB6361CB09D9D66A7DD
            C7D7BCF8F42BC483D897190B758236D3BD691E03C3648845FAABE43584787FEB
            1C4E5433833EEFBB1FAD5CD7462D51253EAA4B5E6965823E6BB7901A0DF93ADC
            44672F399EEE6FDF97DB70B11A1131F0D3711B531DAA4833FFE02DEA7915EF0F
            A105E4BBE965390548D4AC6CDE4EF7369F457B35BE421D7CC42CC88CF7C8FEC9
            50EB6932DBF6BA37CB41B2A66E8A00110192DD5E760990633D3BCBE913AADCA0
            2EA1B2C150C5405201906582A3962F98E1B0EE6DB287787A5E8890F2C1950269
            6687E9DE2C8FF105DB2AA52D8AEE345F143B46F16FF43DFDD27F171A56C73B72
            A7392D45F7967994F818416FB35F704FDB9634BE7D3F5AD2B9161FC273CD6959
            5E936E662727DA47FD4D74EBAA0DC13132F40135762E3284D5BB91BEBC4F202C
            B33DFFAA62E6D4A65C54B37831328565B681C33582D204085297730732329A7A
            D7BF46DFF63E94FAB13B0B22CA8B029DD7BDD8AE61EBE7ACC35AC174D65B325F
            1401220224BBBD2A5B80F42295D9A649B723825022394FE6C5831CFC1530FA91
            0A3A05557CE2ADA92D774DE811213D6485348C6DFC974AAA8B826929E8A0F5A6
            C1F51FD0EB7D26D068161FB3C212EF6115746421AD9BAAD50CA633961C4D172C
            19CBAFF450E97AB54D67327FC118FF8DF5357D6837460136AC799BD0E9DAA9E6
            7F34A67A3ACD89D652B7D012DAB4E6336AE08FD5B2FDC0FBC0EB1DEB5253A825
            E7DA9BF834F544DBDFE985F00A342CB428F13AFA1C58FEB98ED588C27D8DEF4B
            03C90D8C4E58CA6868F57C23209C62A91DBC30E591095D931020501983091DC8
            89CD37D0994D77507DE694AB4CD48B48787625DB211A7E34B740B6D1DD494DBD
            CA4204880890ECF6AA6C01B21EDB5BBA9D10843278916DCBF25661A6DD8D7692
            EFA63E14C210217CA2AF2D2B1E0453219ED2BD291EE44252317445608A8FCEA5
            E8E8E6EBE99A3E9325D8BC0CD06DC0C8013AB9AF772C4BFF6C9D44F3C363F8AA
            DB624E65725284E078AA531DF8586F3614039DADDE0A2DA6BD6A5E63FF6A69FB
            9AA9B45CF50C161D330DD194E9520B6F4434A6BAFD4DFC5E4DA153502C5B2218
            6322FCDFFBAC27FE8C2ECBC246099878B7ECA1B6EDE9A7C8006EAB36AAE6CE16
            BA6377B7AFADEA71A48EB644B01DF0D2540C552C72AA901536DEF18B9A232C99
            3E45D567C243F95CF307DDCDFBF6BE4DCF5BDBB743B421FF7F1B55768DA19748
            8DEEE49DAE2902440448767BD925408EC92816EA0DC6F206DDA5DB094128035C
            29310D6B4E698BE3C48379D81DE645B4C204487C136BB90B5055536A3CC8896C
            97E8DE0C0FB237DB7DD63F8E42737DB99336848EED7D395DD1EB56EA88AA1A08
            5E9B34E437B057F7310FDD3BDBB7A4712D67285160C486D8796301E708EEA047
            7BF0FAFBF06A67191DF26DAADFA6D5AB7FA7CD6A1EA3C1A1DF09A58A56C9E875
            2F8AAA4292717F4B25EF042C7EB1571559D65CDF76A2F278236F4D8BB1084650
            1E6BDB85BE8F0CA59EA1252C56627455FB9AD4161E610A3A38CE82AB73A8F925
            312546AAF9BD08CE2D3DB9DFF839CDEC77200DE1BEE5FCB0A5E984414882731D
            3742C154DD2240448064B757650B904AAE282A04072451B8B7B44571B4465401
            B0FC97F60A20A6A662952642709362ACEE2DF0206BB17D68E99346B03977DCAA
            E7D06DCDD7D0814D2F523BF7CE1689F8B00D1CC1184140A0FA1F7C488F6BBD82
            A6B66FCBFBFC626E7FDC9F285584C454E71AD398624DBC9A3F59687C401B557F
            C1A2E31D5AABFA231AC4ABAE35C3C8E2CC75A41E687E8AA9990AD7104793B323
            696A0BFC9DC38DFA076F13A688D587205858A42CD993373344FDAA3AE9E58E65
            E9B1F6B58CC28227373E4A1735DF69ACE6AF68A27B998F51A4A6CE6EEE6E2BB9
            CE6184F4E5167E1B11202240B2DBABB205C833A452990AF6328BD41DF93F49DD
            7E03D82D06B1F5661BACDBC10AE33F6CFB96BCB4213EE273C62B558090DAC6DA
            920A99BFCBB6B66EEF3D068E6FD4A159D8F5C7CCFDAA6304B7FD5FF465FFED68
            C56E448B3B708F5CC487DDC43B4C7DCCFEC89D4BB6A7714B4EE4637C209F8131
            05DFCA6888316468068D57AB15554FA7A36A5EA135F8EFCA55CFD0BA354B12F1
            E461B6B698FA3D758E9F162340AC002DD5644E6F8B5262AC38B59F4631167ABF
            468C896846D14C0C47CF8B16DCAF317288DA1E3D343697D3E0DA8F788F57E36D
            550811202240B2DBCB3601F2107990EFD896D1ED4405804EC82B6C4FF3CF8D60
            DDCF287F662604DBADC6BBDF8AFC7707B6ADD9BAE9DE009F03C187D48D45A6B0
            0AA96957B1D419D5152E4070D2AB2EAADB8B4415DFB3F5D5EDBDC740ECDCFA5D
            7F0417B51A15145CF7357DDE773CADCCD7D5D961111E4E8396C75DFBEE6C33F9
            F03EA4F5527AB66333D5D108C5676B86523E6DCE97326222F871683EAD5CFD19
            1D58FB3F5ABEEA571A53FD162D656A1132A7CD7592B7CE16760B90E48A73BF8C
            B3264645E217AFD6983A0177E1067A95A82774A8AE367209641B407AF8998957
            4480980F4580E81120133C274046B07D4D2A9988501A68BF3BF8B7C63CF05FD4
            4B56CF2289437B343FC4F416CC11954E5EE9FC9DD489BF386299E929BDD4A570
            82541192316724379866F4BE6EAF3DC8DDA42A18E7C1ECD4768CA03D7ADE4DF7
            F7BDD278757644C4875BA48D8630AF772E4F1BB59CC3BDE435F8473047431070
            6D14CA5B683C1F5EFD251D5EFB1A6D5D339505C8EF54679E0E3A6266B03879F7
            0CE1B6002992D5494DE55CD5ADF6D004B6F140CACC7B2C02C47C280244930079
            903CC6166C2FE876C2A7FCC1762EFFB437134E34F90EB62E89653E1CC00F2E23
            996B5F2A0894BEACA825A266E7BBA4DFCFE7182204777D0B0A10646E2931BEA6
            A24129EE4B73BF1556C5E53A87D37EBD26D39DFDAE3606DAE6149E9A2238407C
            7CA367951212A7B74EA04BDB8E2463DFAFFE9176AF7E8F76AF9D4ACB577D454B
            57CF376248C0C268D143AA5AF1B000398AD4C8470566F848E374CA17502F02C4
            7C28024404880227856B753BE143D0193B866D766247B14780C41F1CC476ABEE
            8DF4218FB1ED64F9D308C48E0763075180189B1ACA7182CD02A9664FD1EDAA07
            416AE267B25F461D8401DCAEAD4696AB637B3E6648BCB9223EB40331D1CFBC2E
            3FDEBE26FD12194CBBD43D4D83E387404C250540525A3FF6943D28407A928AF5
            D84B477BB80866E3ED41AA2E506E4480980F45808800514CA6CA2EFAE304B86D
            7643F2A92302046C466A74CA8FD7415D600ADCD2940CFAEF1A11208AAA8253B1
            20ECFEA5DB4D8F81E9152BB17D9BFE72D4141F617A63E07EB47ED3EFD4DAA1A6
            EE488D0F6F801F0EBF452F1CE688E3605BECF1A95556F19800D998ED4EB6919A
            9AC32D7E2075E3EBB32E3F2502C47C2802448F0039FA01F218089ADE58B7133E
            0137CF76E21F34A3189B6302049D6304A83FA97BC37D06E6197F62E993A9A968
            832C404055DE7BF338957DCEB6A26E173DC60C5245D34CB16BEE4BE161DC620B
            E9ED81E368DDEE7FD05CF3DD00EE51DE27462596C4F12E1E122041A91B84E282
            08369F57F0932240CC8722404480A84C4CB87B3744B7233EE11F84747AF97614
            670408FE3F95ED02DD1BEF2330D47F7FC14F65F63C822E404055CEC136A48B9E
            4EC9AB81A078916DCBE4D3284B9191B44EE3547AA4EF5934AC86686E24B07B92
            3F100152C48A2D7F1229E631B36257DD6DE102A8DC7EB0E54F8B00311F8A0011
            0142B40A151A3214E2E064FA88F1C80D01927D557C8FED6FBA1BC1272008FDC4
            2E3F91ABD72102C4DCEC2C1102E13D4DB76B1EE41A527160640C8E768EA2318D
            2FD32783261AED2869767D80089022566CE9531B91CA003552773BB8C06954EC
            8D411120E643112022408876A4AE02A6843893D8CE4E3C7352801857C39C57C4
            35D93ED0DD103EE179527555F213CB31DB5B0448CAA6A76DFF116CD7EB76CB83
            2076EE56D58B6D32FE7C3764075A86AF99B3C212EFE10B448014B1E2829F388E
            ED72DDDBEF0208214271C1478B5E520488F95004882601527866888B9C49A91D
            6B21171F91EAFCA763FCA8C99D2FF54F8E275D104B7E1EB528625D8641221664
            07DD0DE20330AD7065CA973D3316FF4F044897244F8848B870B86E773CC826A4
            62E88CD18F1BFA9F4887F77A8566758AF8F00D22408A5871DE7750436C0AA90C
            50950E52EF23F3DD87252D2D02C47C2802448F0039CA530204CE04E1A4510ECB
            5356961B4AD991528448A902043B4A84FF462285AE1E6BB3BDABBB417C4007A9
            E0E09F72BF9D22FA521101924E725F44ACC3E6BADDF1184BC8986612FB8BC2FD
            F81AFA132D1E7A9051111A752364EFF10922408A5871CE57714DBA87D4F9B6D2
            7987D4AC913F4A5E830810F3A108104D02E43EF21050F16BE876C2C32090EED0
            2E3F819D27BE73963C0202F151B0105CFCF31FF37FABE96E181F80B9C8AF77FD
            11112016F99D6D906E273CC6578414BC31BE78C61AE97F83F6A3CDBAFF4573C3
            B2E7F80A112045AC38EB15045FDF48C118F07B986D1F5237B74A470488F95004
            48D005083255A06642A36E473C0AE6790EA382773B62EA6008F13938942A22AC
            9C45780F89718F251AB6F8798393D92ED2DD383E607F52C1905D609B00C1B184
            C31D09577BB13553F6F42F9CF970F19A43FE2937D046AACEC57BBA1DF1208FF0
            C1BB2B52EE6ED8F812BD36E42C5AD069FCB0B862A2F05A44B7831960FF439A50
            3F15F5761E112045AC38EDD9CD6CE3756FAB4B5C492ABEA57C4480980F4580E8
            1120477A4680AC436A4851C8CDEDA4AA9117065730D450A8C6CE9D677A4F26D8
            8130EA1129BA3FB002A9BBAF42D74CA2CCF8A64267CBDC274B9C014792AA8131
            8254CAEAA5488D080C34DF87E0C0E18E1FB389AD3B6567120899EF2F24FF0810
            082674A6E5264536E7F2017F2645FAD2E47E93E890E657E359AF50F119D35ABD
            2640B07F3E448546748386089022566CFC3F92ED5EB6BFEBDE4E973896ED2ADB
            D62602C47C2802449300B9973CC201A43AD9426ED6A26202CD7015ABAE21AAE1
            1D3C9A23C0391563E7E1CF7474AAE542E673EBA0EAEA68DD0DE471B205645707
            78F2E9B2A40A7322F607F39B11CCDE5FF7C6089E632F8AD5DC4FD48D3E1CBC03
            ADC1D7C9794A72E0E6C00ABA9DCB0346DF209C6514C4247FD241FFE2A000D986
            94F8E8AD7B1B5D003789907ADFDE2CA12240CC872240822E40902ECF9E61C5CA
            0355B4572F7E318C84D47455515AED38513EB78553C547D1DC42C5143F0A26CF
            B26D977816CA7B26C634BB0DD8B660DB90BCDB7914BCC51A146BF898AA5AE9E3
            81FBD06A752C40A2C6F4BB99A446C0BCCABA24892C1254DAE8077048809CC176
            8EEE6D73893F09D92643F4BEED6B1601623E140112740122295DF373029594CF
            DC3C4C6BEA5445E968C6D5CD101F6CE1B672C407404AD41B743792C741276BDD
            C4B3F4B6C6542A54B0DE9954913D2F771805EFB18077A841141ED4B64B8FA7E9
            E10197C5473FFC30ADF524B64B753BE1052A517C009B0508CE8D77933A570601
            CC7A40A6AB5F1C99242B02C47C280224E802E447B651BA9DF020D80347B2FD5C
            FA2A426A3A56750E1112E9542320E55D25D0797E5E7743799C9F48A58654594B
            92EDBD1EDB0BA4623504A11494B80D0FA1F51A5FA2B7069D43F323C689631CBF
            7E876EE70AF018DB4EBA9DF00222400A8204140F929A861A04704DFD17A9E41B
            CE44E98900311F8A00D123408EB8873C0002697FA1B45F543079957FB07F94B5
            06880EEC54F5F5C9E79896D5B1841F17ACF56185E194B7C6856082606FC473FC
            651C8455895D7D53B697743B27F81A1619A10351FFE3B4DE93E9BC3E0FC505C8
            25FCDE89BA9D2B00E24070FE2F2F9D68052002A44B7661FB0F257B8095CE1452
            71B1494480247DCAB3AC08101120A5B035DB73BA9DF028254EBFCA20668A90DA
            3A951DABB39328DC61D7D50147ECAF6C03F43695A74110E1326CD38D67C91308
            5EFB9A12672241289A93F8A47F29457AD06B43F6A40DBB2FA6792AACFB09B67F
            EA76CE0248B2F09A6E277452A9E203D87089399BED4CDDDBE122486B7F6AD6AB
            2240923EE559560488DF04C8E19E1020C7B05FF6A596AB2C1084FC8D2D6B8A45
            9341E9F6898F381FB0ADA9A17DFCC4AA6C9F1B8F922710A4CE451631492D2B94
            CA76AC6F9FA5F0607A68D051B46BCFAF695EA7F1FA0C52F1455EE774B6F3753B
            A1131120394141C1FB498D7E0485A3D8AECFF98E0890A44F799615012202A414
            825444A818BE24DBE7BBC6D4D19BB2C3D90446B0B676A95DFC0A72D5BF6D3C0A
            250E449CED90A94852EB0AA5328AA23D6750ED74FA75F0041AC027FAC531635A
            1346259DE8B6D80DCE1DDBEA7642272240B2C08D3754FB0E4ABC0780D07A34EF
            BB2240923EE559560488EF04C8DDE40130FCBEA16E273C08B2C39CA4DB098BE0
            6211A43B55A580589E578D4738C84389A31E1DC521BA9D137C09F69D51141918
            5EA5DB5BF4D99033E219B0B6629BAADB398B2C203512D8AEDB111D54B2F80025
            0890ED498D7C042531C762525325A775F9291120499FF22C2B02C46F02E430ED
            02A4867DFA83FFF6D5ED8807C15D41BFC4C66047DA57B7131E07E9141F371EA5
            1FDC1F5149755E04C1C894B33545FAD3F8E607E9E6FEB7D38288117034815FBF
            5AB7734510D83810112069A01658F9318FFEE137525924BF2CF8491120499FF2
            2C2B02440448B16088F573DD4E789025A4A6E5B4E876C42288E13946B7131E27
            5D80248F4FA4515D5BB773822FB98EED680A0FA027871C4E3BF4F8311EFF7123
            DB61BA9D2B82896C17EA7642072240124C663B44B7BF2EF20529F1F1BBA54F8B
            0049FA9467591120BE1320779166306DE761DD4E7810D486D84AB71345700DA1
            232474050A6D3E6D3C4AC680808FD956D3ED9CE04B0EA350F466EA184E370F3C
            9DC6F77983E6A984B67E9BD68AE962DBE876C26D2A5D7C000B0204D913FFCBB6
            BE6E5F5DE465B6FF2335FDCA1A2240923EE559560488089062398DED3CDD4E78
            10B4CB05BA9D280211208519CBA6B23E180761E20085D8DC42B773822FD980A2
            8D6F52F55CFA7AE8C1B41C5F3BE7478DEC41B8ABDA4FB77345803810C441B5EA
            76C44D4480D0DF4815A31CAADB4F1779806DCFA297120192F429CFB222404480
            140B82CDF6D0ED8407F1DB9C681120853994D43483CC33EA236C3BEB764EF01D
            E8AC8FA6709F3F8774FB947E596A22B546883AD5B4D6CFC8992E8B9324933404
            8020880FD04587747736744082525C10DC4AA54E33130192F429CFB22240FC26
            400EBD93B4129200DC1C6058763015333CAB1F1120853998ED36E351FA0808E2
            42FE4FB77382EF80C81843915E7C5DFC86160D3BD1B89CB5C50C31FB886EE74A
            20507120011720A750807E6B938BCDED2E0D1120499FF22C2B0244044831F461
            FB8982936ECF2AD3D836D5ED44915CC9F66FDD4E781C1120829D60DEFCCED439
            98CE1D70059DDEEF599ADF695C9C5145D94FD337E3203E6A07DD4EB845800508
            46010ED2ED97CB9C40E566F7120192F429CFB222407C2740A6904636607B5DA7
            031E059DF9E3743B5124184A1FABDB098F83629BB7188FD20508E640FF4BB773
            82EF388F287A06758CA64B079D4327F4FB1FCDED30F6AA7BF9BDBD743B570248
            C73E8AAD4DB7234E1314F10152FA313D499DEBFC7673AD5C0E609B52F65A4480
            247DCAB3AC08101120C5B03FD97160561EBB91FF3283E16EEC8EBA9DF03807B2
            DD613C12012294CFEE146B7808511F6F0FDB8FD66D88C68B10FA39AB1A6E4ABD
            A9DB09A709A0005991ED2942CC52B0E8B2BA796A37366A5A5E4480247DCAB3AC
            08101120C5804ADF27E874C083608F5B8EED7BDD8E140977846857DD4E789C8C
            42848903141DAEBFEB764EF01D6B52B4C747543B93162F75B4710D688B19055D
            7F2475B7D98F9CC876996E279C2448E203F0A90EE9E4717DF0EB3E590AEDA4D2
            4A4FCBF56698AD77888C74759DE66B46B737D4F50A3B63E97DBD90F95A984AD4
            272240CC872240F40890F1534823CF90AAF62D24F9816D79B6886E478A44B299
            1506711E4F1A8FD20B114A2206A158FE625B96A24D0BA96616FD36EC70EAC3D7
            B296A82164FD3C8280E079B991513960FAD1EDBA9D7019A494DE9C4FF11FE47A
            1362A13F77C6FE8A12EDD57239CDA2EE14E59EE9EA55336997BAE72912C3C53F
            D9C18C722715978A4DEB5E37444B478A808578E91DEFDF66C29F6B8D25BAB8C6
            DFF698AA709CE82E8B00311F8A00D12440EE204DA0E5BF225C4485545460A9FF
            78916D73DD4E789C9D484DB7CA1C01914AE842B1BC4528DC161E4247F5B99DAE
            1D703FCD0B1B17E6FDF875AD9945CAE417B6A529796358F02F67B14DD2ED84CB
            CC245540F8CB5C1D71ECD403AA8C1B05D4B4E83E5623EBF36560AEF96E3E2581
            D7F8C8AEF99C5664F9B020A563F75BAC071D54F3016D56FB292D8825AF290BA2
            3D69C3DA69B466CD4C5A64F6D6213E86F2AAAA53BF021F8FAABB9DC6B7AB5154
            5A9C225C44808800C96E2FFF0B10CC05FD86D428A490E46CF2E7495BA6111566
            7B52A37E99024446408462B99D2F150751C7289A38E00A3A7FC013344705A063
            FAD2F1BA9D2B131C0B9FE87642280B8C7A1CA0DB0997C1EC858D481501CDEA34
            C7473E5AB84FD9B4F001EEF5F36E5E85D992D5D6D61EEBC9569DD1A966F5106B
            60AB4B7F3DC61DE5AA9F79D5B392BD6E5E7EA79AF758AC7C45F3A3D5EC4F2DD5
            863AE95F757751337774D5E848888655C5A8375C42DF378738C014C2795D4C23
            14012202C4F4206DD9DC02E4106DA3A3B84B3055D7977B965028394DC76E9C9D
            7CFC36DBBA4E7E4105B03EA93BD7E614ACC419E857B641BA9D137CC571BC035D
            49E10174F9804BE8B83ED3686ED878BD12A6B51ECE76936E2784926824358ABF
            A56E475C06D3AD10F3313BFE426AFF2D213E8C910F161FE135F9CC8F304F8BE2
            A368204CBAF1DFBA94D722FC5A93F97ABC63CB9FABFE85125124B1461A59F31D
            ED5BF3112D8AD5D042FE3957A89E4EDBD73D4A6DB1EED44EDDA957E8375AA926
            CF0CF1905AF5DC58F2CE7224F3FD5CCB14400488FA900810FB40CD882B757DB9
            47C1B18A00F41F753B5224D8A3BE655B46B7231E2799E1272940F0DF6F240244
            288EED28DAED59AA6AA5EF963A9046F335737EB462A6B5620AD938DD4E084583
            590D4FB0ADACDB11977983D4F4E3F6D417E37DB3B8F858CC7DFD1E101F9135B8
            8F86C112A7C44791600425DE590CB1B7D14635DA121729A136FE33CFECBDD719
            53C6C6D6BDC3EF866871AC9EFA845A698FBAA7A8813F372FD69B9665F1B2524D
            1B45E301F319FDD885DC0E35FC1A625D3A89BA1E31C968CB84CB8937323E97B5
            60C6722240D29709B000096231A242E096C80AE4BF00F47AD3F761BA1DF138AB
            B07D613C4A9E40508C733A052B438C501EE8D3ACC802E47B08906F871F48CB70
            BF605E8446F2EBDF91FFA7B57E4D2A6DABE01FD623253EFAEB76C4655E2035B5
            363B66C9ECD7613A534BC48CF988AC59DCB42BED981DE098794A096164853BE8
            D13E29DBC9AFB108313E1BEBCE9BF613ED5CF335FD1CEB412B56FD49BBD6BFC0
            62A48A16C49A69ADDA376995DAB9B408234121F3326886B8B4993988F114C1F3
            514A76794580A80F8900B18F57D836D6F5E51EC5AF95809B49DDC5EFAEDB118F
            83E05A35BA953CB8972225DEEA4A5BA510406610461B3B074576E9FD383D3CF8
            665A1031EE2862DACBF3BA9DB38951E6760ADEE79FA4926B5495BB229F816DDE
            29D71BE836D6F129BE07B7C89B9DCBD306AD9388C26B707F13F79AFC223E8A21
            FED347940889F654C224D11AA4A67ED5FC401B54FF426F447BD3EEFC78A7BAD7
            68360B937E55F369AB7A35231F4BF54313C52F912941F28B6219B5524480A46D
            8B0F05C86DA4812652015B03747CB987398754E610BF3194ED27AACC33AB5D2C
            263545ED4FE359F20482E90A9F91A599B08260808C735B52C7083AA4DF1D3479
            F03D34BBC338ED1FC3AF5FA5DB399BD89BED3EDD4E080519CF76B36E27348042
            C1BBE57A035D4674617BD610DDDDB625EDB7F8463EBBF3E9BF6A26253AB78124
            6AC498A81814488A1A33809ECF5C554BF829066F55F4FBE9F5D3A86FD5429AC7
            42669BFA976974CD97D4CEEF0D47EC891967921A243FDF1429591D10112029AF
            7B51801CAC4580A0D3F5B98E2FF63421DA9D54C12667702E067D55B64F1D5B7B
            65801122C4F7B418CFAA1227900DD95ED3ED9CE02BAEE093C5F1D439904EEA3F
            992E1EF018CD5513402A695AEBD5A4E20405EF12C434BB0082EBB05C6F24C407
            9FDEA7B46F4507B45EC787EA6CB68514BC0122ABA0D5AA55EC49E2A51E2AE317
            DAAC9A2F9D552DC6E726D4BF61FC5DAAFA2FDABE612AB5F2E7EA434B6895BA9F
            13AB821831677565A510160192B18C7E01722B69001DED07747CB187C19E3686
            FC29CC3095EE15DD4E781C8C728C493C4B9E40307DE109DDCE09BEE2608AD51A
            778EDE5B6A3FFA5B37A2B92A6AEC555269402B81F7D8D6D1ED8490971B48652B
            0B1A37B21D91EB0D63DA155B0FEE53DED1B6251D68888F396CA84B987772403F
            4AC99C256412532985E3ED17ED65A61C6EE597E6AA7894501B6D57F705ED54FF
            B6318D6B78EDFCE4E8484805FF87E331252240D29709A80009EA9D93AE406563
            C40374E876A404762135242DE407A31CC998A7E409645FB6BB753B27F80A1619
            55AF53A407BD327C57DAB8BB214030AF01D3202B2508B8C3DC9685BA1D11D240
            EFE17E52371183C664B64373BD912A3EA6B46D4607B4DE60648B2A30F2F138A9
            A9B9FBE8DE307F110F8C875080ACE0468FF4519DF59A9F68B7DAAFE8FB686FDA
            01A2A4DB0B34A6F60BA3F822AA10B49B4BB41BB3414480E81720076911203881
            EDA1E38B3D0CEA68F8B5901F86A36FD4ED84C7798AD4688779672671701ECB4F
            AED0ED9CE01B700D1DC6E26336D5FF4A33861D47436A0859659035EA4BDDCED9
            0C6A45BDA0DB092101623751A36A13DD8E68E05AB609B9DE489F76B58539ED0A
            231F8BA80BF13189D48D5814DC9422B4B61053F12551338530A670552FA0656A
            7EA043BBBD450736DE4CB521D5576E4452AFA8AACBD216ABE3D7D410B2089060
            08908FD956D3F1C51E26EFDD151F7006A9007A213F38D00E311E8542A9C7F2A5
            6C27E8764EF00D10192B53C730DAADEFA3F4E0D0C9F4578711CEB92B39193FA6
            0774D0E4BCE20D50A708C90F8256E303E4DD0F13E283FB91B7B76D490725623E
            BA141F67B39D693E563714641A9603C4CC94C110247C86AC4506B208AD58B588
            F66F7897366D789FD6A97BCFF8998C9A25A4AAD4B7C77AF2E30E1120EE08905B
            9CF8E5BBA237DBEF94FC2505831032D85CE3DCFA1DAD821ED4F9C0C590BC8825
            8B1082296CFBEB764EF00D1019BB23007D5CDF87E88E4177C52BA057E2B4D6E4
            A8A1A01324CF788954B6C3A0711ADB05B9DE48171F5BA5888F2EA75D9DCF3631
            E3B59D49558F179CC40872378543A407F7FDE7D3F0BAEFE9861EF7D298BA4F68
            4E7480F1B78A7FCF708468A1214452726B89004979E85F01B22EA9E946423A28
            66F48C6E274A04F11FBBE876C2E360F4430D3786CCE83805EE2A6EAEDB39C137
            4CE213FCD91469A4E7871F4E5B36CD8D0B904A9CD68A94D5888BEB2C774542C9
            A0C0E0B36CBD743BA2812EC5473CE6438D7C5C6F457C1C4B4606BB2C2E613B59
            F7C6068BF8E808EE8787CD80F6065A9D05C9DE0D1FD0C18D7751EFBAC5C627C3
            C654AD46BE6C87598EF430AFDC2240D2FE962E40263BFA33E7E000366DD50F3D
            4CB2489DFF788724634D21B6237521CF3C7920EB5910A73508A5B1179FB9EFA7
            8EFEF4DF1147D08E3D7F8FA7E0FD882A732E39B6E913DD4E0414DC147B948259
            2415D38ACFCBF546BAF8D8C2141F05B35D6186C00D79DE9BC6B6A9EE0D0E26F8
            356BCC4AEF112548A20D44F55FD3910D1FD1660D9FD246F56F51FFEA3F133A60
            61A417458D3D4004881F0588CC79CF06158A70A7CFD179520E5165FA3F48B723
            1E27D9914A9E3C10D4892AE803753B27F8865529DAED7304577E3AFC485AA59E
            685E849A498D1654E2B4D683D9B414AB0A3841CE6C88188D49B9DE484FB5BB05
            1DD8721D5F010B069C77253E00864D700D68D3BDE10288AAB81163CA5698CFAA
            DFD12AA125B45AED9F747AF37DB442DD27463F3A1CADA6D6685F962D35199D75
            1120A60769CBE6162007BA2E4030AF777BB7BFD4E320D3CB56BA9D2811CC0B46
            7457904BBC16623EDBF2A4522DA79E3C5660FB82A44295600DDC621D4C9D0397
            6CD96B2A3D3FFC7A9AD3619CCF2B795A6B327983E01641AD6E0E269112205964
            C77C5C634EBBC2549DBCA7F0BDD9FE63E17B9101B3528F611F8302223D54ED91
            683D51CD5C5AA3FE073AA5692A6DD9ED35EA5DF35BA2EAE1C2F020EAA47A9614
            5143688463B5D4BF66BA2122E686974DBCAE1001620A10D7CF33E8AC8E74FB4B
            3DCEF56C47E976A24436607B5DB7131E072203D5E2D50857F2E48161F797743B
            27F8061C671B51B83F0D68FC887E1B790E2D8A18F7EB304AE07A309F4B2063E2
            1ABA9D0810A7529EB887006029E0FCD6B6ADE990966BB99F35ABD0C8473199E9
            90CA3EA8A2CF27445551C4482FFEDDF9C45B33932674FB88BA57B5D3DFEAA7D3
            2E3DEE37FAD7EDE1DE140ED55063DD2CFA68F1C6F4DA92317468F343D44E8DBC
            8678A75C04880E0182747333A88B89920105F9C5AFD5ED448920F0F57EDD4E78
            9CA96CDB188FD203D091FD6A8A6EE704DF80D8B98328DC97260DBC99CEEAFF3C
            CD0B1B9DA38BA872835891A67414A9CC8982B39CCB76BA6E273401E17551AE37
            52A75D19E2A3F55A2B01E73B527199ADFC9C863F60608FA856B122D126353252
            B598FEDEFD63DAA9E1733AACE703D4A3E60FBA6DC14174F02CFE496B7FA1D8F0
            5D68616CB40810CD0204D38CA6BAF9853E615BB6E7743B512241BE636695EBD8
            8E361EA50B10A4E53D43B773826F38912F0F976104E4C91147D00E3DFF8807A0
            A338DC0EBA9D7310A4E27D4AB713150E0AC91EA6DB094D7439F281C0AA26EE3C
            DDDABE158B0FA4DA2D38F2F10F5281E5C580442EEBE96E08A1144C9110EE6B88
            92E1DD3FA44155EDF4EEE2758D4C5B3B353F438F0E3C8905C8522240B204C801
            AE0A1074C21CAC75E15BFC9C016B0A491D8B42246BBCA41721ACC4D4A98273A8
            1B15E17E74CF52A7D23EBDBE8D0B904A9FD63A89F2CCCB176C019D80F1BA9DD0
            040A029E9BEB8DC4C807779C6E6FDF920E3202CE0B1619DC88ED652A7E9607E2
            BB86930A48177C4B942882C287D5469D110AF7A1ED1BDFA2A7061D2F0224B700
            B9C9CD5F075F26C38CE9606A014E3C61DD8E9488A4E02D4808D3AFD4C85FEA41
            1DA277F9FFB5757B27F8865114EE39831A7EA43F479C664C0959120DC4B4568C
            F0FC9F6E272A9407D976D3ED84260A573837463E30ED2A1E70DEA5F8403AF5F7
            D8BA95E8CF3AE6F242A5600890374580784480BCC6B6A19B5FE803A6917F7380
            7727D5F9E9AFDB110F0361B922A974BBA90204A953BF23693BC11A33D896A570
            EF30357C47EDA34F3782233A638198D6FA2BA951E20EDD8E5418A8F1B1936E27
            345138E09C3B4CB7B46D43E397407CFC5528DB15B21CBEC1D6B70C9FF661BB57
            77C30836220224B1AC6E01D2C0F63349872B131558EA4F562395A546C8CF0C52
            9DA7A8F12C79504BDB09C58018B16DA9B33F1D31E03EBA7ED0C3343F6CEC5441
            99D62A0509ED03D7E2C7C9BFA9DFCB05091B2EE9EA037D12231FD799E2A3CB91
            0FD4C042A6C33E65FA85D198B374378E6023224012CBE61620E36E74EBA71843
            7201C945C193A1872926CD6050511D47100AA50A902017FA128AE76AB67F53C7
            10BA7BC4C9B46FDFAF684EBB713A0FCAB4D6716C77EA76A2024058C334527527
            8248DE6C5700DDBDBEDC517AB66345DAAEE5193EC07E2F94ED0A0584914A7D19
            1B7CC3F520A8D3E12A1311208965750B100CF53EEAD697F90874E21FD1ED4489
            04396DA3552E649B683C4A172093C8FB77BBBE64FB80ED33B61FD866A7BCD79B
            D4C517371670F1DD982A3B0E413728C6772BB50FA6AB97BA8026F47F87E6AA09
            494199D69ACC2427940A123AA1B3BCBE6E4734711E15C83A58C7A7E726FEBBDC
            E2C9F45D980FAB2A4CDAE8B24EEC5B645FF62ADCA05D5D77230936220224B1AC
            6E01828EEAB965AFA5F240912DBF4EC5C130BE048776CD5E14AF939276408770
            B76B17DDCEE500B7FBFE63DA9B386F145C427D02B51AB633B77703DD1B51816C
            4491C6D7A9760EFD30EADF34A28E6841C4B89BFD13A9292095CE9B24FB5539F4
            637B86829BF4A260B1DFF8E8C7631D2BD14E2D8F723FEA17A2C2A73FC4F1D931
            FA0170836759B6F99ADB4AB00B11208965750B1049399A0D3A7BE8B8CDD5ED48
            09A0F383BBE2C3743BE2715662FBCA78947E4063746145DDCE657029DB656C7F
            254E36210B4BC5B29E6C4F2ABDA56447B38716421C51A4C79F54FF3BCD5BFA44
            AA0F1919B030FA849B17567E25BF8336184A2A5DA9501C034909B8D1BA1DD1C4
            956CC715FA1086871AF9485AB9E526FA32BC3E1F55BF5181D10FF03CDB9636FA
            8A63FA335D0D25D88C0890C4B27904C80D6EFD141F910C2F66F229A960646788
            15BE795D06ABF38EF491935F5001FC414AA0458C67C993C60852755F0A5EDD5C
            E21552D35B522E7C6509903893C8FBD3CCFC0044C61A1469A6AA6EDFD0DC5167
            1B5345588060BEF883BA9D73114C1D7A4BB7133E630829F13142B7239AB88AED
            D8421F4286907E7C367EA46375DAB5E55E3E33CF240BA31FE03EB63D6DF41737
            6F9ED1D15082038800492C9B5B80EC7FBD1B3F03325FE16E790F37BECC47600A
            D38EBA9D289183D96ED1ED84C749A95F9016FF81BA20CFEA76CEE422F6EBD4EC
            976D112010C1D8FEFF9277C4961F418CD8AED43194CE197A159D31F8659ADB6E
            BC7E04A9A925410177B1AFD4ED848F80F8789DD4287B10C134D27DAD7C10C3F9
            DDF95CB72A463F3A59E756A13C97A581451C7F47D8E8F3916CAEDD15161C4604
            4862599D02041937DE74E38B7CC6B56C13743B5122B7927FD307BB05021ECF53
            0FD30408460526E9768E54F6A4C914CA75A1B54D80E0FF7FB0BDC856A37B837D
            CA244225F0B62174EEF0ABE8F441D3E2026477B607743BE72277B3EDA7DB099F
            806957101F76C527F80D1C1796462650A86900F7031F6D1F43BBB4DCC7FD274C
            BDB23C7BE07C8A2719B1878BD94E71B3A104071101925856A70019C776871B5F
            E4334E60BB5CB7132582E93AABE876C2E3A454404F3B613CC1F64FCDBE61E4ED
            71E59BE30204606AC1539AB7D9AF60AAD5C31020672D750D4D1AFC525C8004AD
            96CCE76CABEA76C20760C6016EF805557C1435B300A31F98D2B87CCB2D3423BC
            0E9FF33073D6725895DDC9755088701FB71A4A701811208965750A1074B20B06
            8105104C4F7952B71325800BDB77BA9DF038ADA4EE422E369E254F1838FA90DB
            5167F07E7AC55D77040890B4CDA5A132E5650B10F49DA6939A6A130430557F30
            194912843C043DE01CF16C9B58FDB091F98ACF71EF4588D659FCBE59F3235CCC
            F7213DF6641BFD7F996D3317DA49700311208965730B90FDAE73E3674050D5B6
            6E7C91CFC01DCC4F753B510298BA73936E273C0EF2ED6F6E3C32EA7F244E18B8
            83ABF3373F9EED8AB4579C1220B99320A062F04A1AB7DF6FA0B38DCE644B0E01
            025E60DB42B7932EB235A9CC434236C81206F1315CB7239AC094334CF78C5A5D
            0067E55EFCDFD1AD13E8BAF643CDE0F3A2388CCDCE54A2C88EB86A31DB207818
            112089657509905A5269489776FA8B7CC622B6E548654AF21B9252B930E7503C
            0354FA81AC53BCDDCECE64C7ED54E58A0F2F438018CFA379A651C7362175974F
            B0C69BBCFFA8FA178600B9365380A0D06590E68C9FC676816E273C084654D101
            0F6AB62BDCD4418D938E6216EAC1E7B7B97C9E1AB4E8393E3535F3F96E51B1DF
            8BBA47F716BB5017E086C30A6CF39C6C2CC12544802496D5254046B27D4B4A88
            084920CA1043E1B73B1D98F68128BDBEBA1DF1385B91BA3B9D29406E633B5083
            3FD8DF728C3C84EC152018F588450A2DF136DBBA1ADAC08F20D9C321C6A3B800
            19F272AA00B1BB03E47554463021154C4B83F808EAB42B8C1A204573513562E2
            8507EFEF589BF66AB99DCF837F52099763BB63DB30FF6B795269DA05BF230224
            B1AC2E01828ED854A7BFC4874C63DB54B71325B009C91DEC42A0681AAA539BF1
            1F6907F2F7A467341077D5BEC9FD963945CCF033967C2DE54F97C4E21F8C2AF1
            5138810C629F1ED7D0067EE418B66B8C47B905086E6204A9701962CF96D3ED84
            8718406ADA55506718CC22152355F4DCA98690BA9BD673F15DB424BC9A997AB7
            E86CE14E9CCB502FED1307DA4A701B11208965730B90B1D73AFD13A008D01565
            AFA5F2B09CA3DC63484281C220E669FBC4B3E40883AEE07DD4F9B8A8CB4F1871
            2A38199622404CE1120D9BCB175C085F84AB7D7F0D6DE137B6A378CD18162067
            B200393B5D8060E7425B0ED0EDA84B6007C334A35F743BE20110708EC28C41AD
            F3319F6D2D2A61B4205E78F09EF675696CEBDD7C14CD28D50727040862BAFE67
            F33A051D8800492CAB4B80E89A72E2753077DBCEFCE16EF1130537C8D12AA82A
            AE8616D30F62BB33A658E133F6618CA54FA605CB5B1420580657F348BB850FA7
            21E785C240D12DCB36C378060132FCBA4C01021094BDA56E675D6407B6A7753B
            A199A0079C637479432A71A4A01BA9AE5FBFC577D1A2E8AA7CEA42E84551E7AF
            384E08104CABBCDFE6750A3A1001925856970079956D23A7BFC487F8B1E2E97A
            A4EEB8095D8329226AA423FD204671ACDD5DF6E56F6C1F58FB684C9DD8AA52EA
            0576754D36C4072F13E954B11FA1A22EE0A86DF1A0CB6DE13790AE3919549C5F
            8048207AB0C0C8C77B6C4BE9764423286EFC76290BC6473FEE6E5F9FF643EC47
            35EEA995243E8013020499B56EB6799D820E44802496CD2340AE71B2F971A301
            43E512B09C8D2A2EE62F64FA556170476EF5C4B3E4890249187E2577A7CA9456
            D40A02C4F03B56F8BA1C2E497C004C47434C4AD193AE03044636B64E3CCB2F40
            3095F36EDDCEBA08CE9BBBE97642130DA46E02AD5EEE8A7C4C59236088FD68E7
            53D6088C7E4456E13310C2483C25407033E1629BD729E840044862D93C02E46A
            279B7F4552192A846C5023E225DD4E1401F61A04FA0DD6ED88C7C19DD9D3D4C3
            B4FA1F48A5FABACBBEE04E690945DBD8EFEA9AC4C3ECB7436A263E463EA2D152
            C40740C3203B5E508367AD7025A50AFEFC022468E75908D715743BA101DCD09B
            C6B68E6E4734925E44B548E299AF5EEC5C8AB65CCC1AA6AAEC2CF84E0890F349
            0AB65606224012CBEA102032CD22371805C61D2CFBB3D714CE40542ADBF2BEF3
            8C734D523120BDECBBEA6188520E5A5C54DC8CF949EFBC96424D5D0E01629EAC
            2261B648A9E243118B052D76A13842A1F1FCFF2D89E7F905084EEDE8490525A8
            1F799E31823643B7232E82910FDCC0584BB7231A99C056F69CF13E7CB41CD5FA
            6FBABEFD203E727E2B77754E08104C4B39C6E6750A3A3004C85B2240F20A907D
            1D152028C436C9C92FF029289684BB967ECAF5FD18DBBF743BE1716690BAA3AF
            92C9A79F243E22F7A64DB4921AFD585CF21A30AD0AA320C648484A662C9C103B
            CB1AF9480501F987B8D4267E04B173C951B3B800193A2D538080E72875BA56E5
            832C7341BA2182D4E79BE876422367B29D5BCE0A8CD10F3E657DC2F275F5456F
            F2F90B07517B39AB044E0810BF66C814328100697A9B9E1A7C1C2D8C0E170192
            2540F6B9CAC9E6D71174EB0730E9145308E6EA76C422A8B22B692F0B8374D3C7
            1B8FD2324A19BFF5575AFC2819339D6E6D2DA59D78203E62B6880FE0F6A8909F
            40CF6808A59E23BA162048B37CB26EA75DE40CB6F3743BE1128877D84EB7131A
            C15DD27FDBB1228C7E1CD072224D31463F70FFAFEC1034BB0B1182296C07D8BC
            4E4107224012CBEA102008C8B59602345820960299925A753B6291B349DD8112
            BA0659C2DE311E8542A99D748881CB5CF201A95B9139A9ECB90589E0F2DA0675
            EE0977A8A95721DBE2C6A546507E3E675B35ED952543E98AD117D3B183DFA3D9
            6D595DA7B16C77E976DA458212881E74F161CB68403CF3D5277CFA5A7DE15B7C
            0E5B42368C7E803DC8FE94B932025229B000D98E05C8D3438E1701E2B2006966
            FB93ADDEA92FF031281C060152FA14994CF0A386F9EC5A8D5FD996BBD3717464
            6FF22308A85E3EF12CED8034D245AEEB921FE884EE6FDBDA20428C5810DE9ECE
            76BB463EE21C4536CCE9AE50B23BD81D7D699BBE2FD133A3EEA096083F4D8FF7
            C2F4BE8F743BED220844C73456E7A2DEF43385EC3C96FDC754B66DEC5A591FEE
            EB1DB4E878BABDED60BE4E4E279BAE9348997BA3CDDB0D41B397CDEB14742002
            24B1ACDB02647DB6379C5AB9CFC108083AAB2DB6ACCDA8C7C03D92F676D559AC
            AD51D364EC39C18E63BB435743F9084C0739C37864C49E27DA7E34DB0F2EFA81
            8E6849C5B93480A0524783D07CCC39A462E89274F6A6359ADFA3B7465F47E198
            4A259A023224A16E483FDD8EBB0446FA701367BA6E471C02C9070ED6ED8446DE
            2735A21C297745F1CC579FF21EB3DA42C47E60E241875D7EE237BAA5ECB5A473
            1FDBDE36AF53D041B8370B907759809CC40264A808906C0172A5534D8F2AC7B7
            39B5729FB388D4DDBB9965AFC9101F2C363ACC132A769EFA3AF53866CBCD41DC
            695C4E4F33F98A94E28369278713D92E71C90708FE0D753744111CC176BD6E27
            3CCA9EA462E892B40DA1F3475E491387BE4573DA72DE5E7891547AEFA0B02DA9
            E0FB4A23E8B15133D8D6609B6FD70A31FA316ED10974A711FBF13D253A7EE573
            2AD95F14530448A5200224B1ACDB020473DECB0C84AD58B057AD42E5E6EE4F15
            1FA93B0B76208C82183B40592204C3DFCFEA6E2C1F80C260EB279EA59F1C9092
            776D97FCC8EEB47A1B74B2CED7ED844741FCC7E769AF84BB13D5CDA3DF573899
            FAF2756B51346B198C264DD0EDB88B20E8DE2D71EF16932873E42B58A06ED19A
            64C7CD394A8E7E7CD4C92B35463F30E9C0B6D10F8091EFD36C6E031120950204
            480F0890934580E414207B3B2640D071B56DFE6605F20FB6574B5EDA28061731
            B31251BA00C1F42B4CC5AA8E4FC52A998FD956D3DD503EE0603EAE5246FB12BF
            C5B2A46243DC601EA9D4BB9DBA1BA308E426456E90F96A29CA4C52D1D19FF61D
            F818DD3DF2615A80322CD9F7168256111D35A6F6D0ED848D043D2903A6D5A1C8
            A2ADB14CC87C3576F18974CF92717C4DC4E8478D9DAB470CDB5136B78308904A
            41044862D93C02C491F31DBE0139EE463AB1F20AA18C8AAEE6C8073212C53315
            6582FDB6A64605A59736156B27B6477537920FE04E6228597323FDB770B30ECE
            4D6C87EB6E8C2281683B50B7131E24F754BACE661AD1E333FA72B92B8DE3BB2D
            FBB0C69DE30F743BEF22B841B2866E276C0241C72557F8AE1050C7E6793B57D8
            874FC75F44885699FF2A9F9B3BCCDA1FB682DFCCEE8071112095820890C4B26E
            0A9091A4026F6DCBD7598160EAC9E9452F851F2F125519AFBA8A313784497C2A
            5649E0F71BADBB917CC03DA452A02AD20EDA1062429671C90F4C017B4B776314
            C9136CFFD4ED840741D2876C61D6D19BD6EFF326BDBAF4646A8B6605A183EEA4
            8EDB41BA37C025904B7514A96C8B7E06C7C013BA9DD00CCEA1F7D8B9420CA70C
            E0CBDFCD2D9BD3618BAE36335FD9DE257162A68708904A212E40868A00715380
            6C452A859E909FE7281ADBB6A825F0236346550473582D66B8C2CE54859DBCA8
            5190A3F8BB243DAA35D26B7F244115EBD2A7D81507AEAC7E148B68B775743BE1
            4190B820BB6E4C7B7FDA67E0E374CFA8BC53B040D02A66973795553F384FBC42
            36E74EF719B6C7F2E0D0E8CD2DFA173F183CFF41BE6E0EE116B62DA63D152752
            AC8B00A9141202E41411203905C89E973BD1ECC7B0395AE1B002C03CEFE16435
            156F557CDA5524FFB4AB9CC49400B15E3CAE17A93A250DBA1BC8077CC8B656E2
            59755A1B4F21F772F8A30AF6A9BA1BA348505F06D5E197D6ED8807C99DDD29C2
            87644D2BFDBCD20934980FE985B9C3BB7047E958DD1BE022B8D65CA3DB891259
            8954BC439D6E4734827E82EDFB2BCEC4BDF818D971C1447ABC755F3E6E90CCD1
            D6D88FF8D76094DBEE9B3F22402A858EDEB46DF3BBF4CCB0534580B828406E65
            3BC889155718FFC7F6A4E54F23E643459C17F115A6583146412C2D87C0CE2054
            18B683716C771A8FAA42A9A21045385189BCBB4B7EFC9DD49D383F3194ED6BB6
            26DD8E788CFCF52D3AFAD0FA7DDEA05797BE25DF142C80D8325BA7B2781CD460
            18AFDB8912C0CD27D4EBE9A5DB118D3CC4B6BB132BEECD9D9D9F2244A3E63DCB
            97C05AB3F687ED834CBD490990BE36AF570A11560A224012CBBA29405E67DBC0
            89155718E9F1033909A94C56D132EA31C5F783C2226447B6FFEA6E149F807491
            2349CD43E7B64D3B212018FC0697FC40F1B911BA1BA304C6907F0A26BA096238
            5023283B9B59470F966BD369EE0A1750373E8C5B738F80042D10DD6FB56F404F
            52231F7E9C366917E8236CE4C48A8DD4BB7CA99BDCBA311DBAF00AEEE3FD4E65
            A6A3CFC70AA45265DB5654C4C442BF40F0052C40B66E7E8F9E1301924F80644F
            352E13DCD144AEBB8176AFB802414142A4DB5C90F713D8FFCA111F2094F2C0F8
            F143B93E838BE24F14EC3B72C580E253C9FCEFE902049D8BD55DF26332DBA1BA
            1BA30490F1A6128BC895CB0BA462E8B2E96C24EAF607FDB9E2246AE6DDAD25B7
            00A92755C82D2881E898D83F84E23702BC0F7A1C6F52B0639F20B291BD6C91DD
            2BC6E5B297D99FAA9EFB1FA2C8483E37CF2287F2E16C4C2A7EC76E30AA3ECE09
            8705971101925836B700D9C376012277368BA3EB6C58E58A0F90B61F54519E51
            90A055512E870837213A3D7FA9A769EDB92E1F8C6E4E87C2A8D5E3BA1BA40420
            9A6ED2ED8407C93F27DE1020BFD3AC15CFA61EF90508085A203AAE399FE976C2
            2248CEB255D96BF12F0B49FD5E3F39B1729C8931FD6AC2C283E8DAD6C3B97FF7
            0B39988C735752D3C8EC06B57CF673CA69C14520407A41804C1401E2920071EA
            A0AC54DAD80650AEBB41283468C7C87128C793941D95B998ED24DD0DE12350BF
            E2E0C4B3F40315F377DD2A8E867D0742689EEE062901D9E77283D8B9DB73BE13
            3605C84AE7141220412BF088CE9A1F0A30DE4532B5666DB6F79D5A794F3E2E16
            F071D16FF6537CEDE4E3A50A03648E0910A70A47625EFC094E392DB8880890C4
            B26E099049A40AB009D679807FF63DD35E895730775E801C426A1A8F601DD4F6
            F821F12C79A0420C2026C3EE39C1F9F81FDB16BA1BA344DC146A7E02B1736FE6
            7CC7BA00410D91DB746F888B5C4ADE17B348337BA26E273483E2B68F39B5721C
            0EFD6A886E5ABC391D3EFF22A29ADF9CDE1E8C561EE3C07AD3A7F70AFE0502A4
            B708902E04C8A5763739463F76B57BA50120BD10933B0204770EEFD4BDE13E03
            D39D76540F4399A31FB870B8990EF74CB673753748892078787DDD4E788CC5A4
            C46DEEC27AD605C8DFD8DED3BD312EF21479BBA0A55377CAFDC4716C573AF905
            4D7C2A5EC4D7CB7E73EFE2636504F7831C1F184606CB1D1C582F463F1CC90E24
            B88C2140DE1701E2A200713300B7D2588FF74055D42EAE3C9C1320A8513145F7
            06FB10E4EEFF2AF12C7990D6F113A45BE9E3A22F88D97949778394006ACC2051
            C550DD8E788C4FD956CBFBAE750182F4CFB8FDDBAC7B835C6206A98AE85E44A6
            2413A1A8ED0427BF203EFA71E4FCF174C3A2C3896A7F24176A3B3AD5D7C1F4DE
            208D60562E1D7D58807C200224AF00D9DDD602A4C8BC82BCD892DBBF34100782
            22646F382C4026920A7E178A2365F483D24F02215753EF024C6E1E65FEF51B28
            3E88F384E33D049FD1755D84840039B7900001A80EEE489A530F82B324EA6AFC
            AADB910CD0FE7EAED26E074FB0FDCBC92F8867BE42BA96FAD953883A4770BFCE
            F1D3A253354000CE014117AD9541476FDA8605C8B34B8900714380A020DA9B65
            AF453880778329C6237B05482F7E72333954FC2900648C7EA49D0490D565B88B
            BE389647DF0510B7F2826E273C48D753EA52054875410182BBCE47E9DE2017D9
            8EED59DD4EA480A974C8CCD5A0DB118DA0460646F4A2E5AEA8107DF87898B470
            673A7BE1294435AE84E161E4E32387D6BD29DB34A73740700111208965F30890
            8BED6C6E0968B60F04E99ECC02E4E7B2D7A47EEF716CE790AA3B22140F822777
            520F4399270054ADBDD7657FF2A76BF53E47B25DA7DB090FB21BDBC379DF2D4E
            80209BD6ADBA37C84590F5CB2B7116B82B8ECE77506AB1E402714C28A8E97820
            461F3E15BFDED193369AFD34F77D1693AA7AEE58E6AB38BB5057C76AE9A0C7B9
            2ADB174E6F80E002224012CBE61620BBD92A409CCA0A11545A484DEB99C2F665
            09CBA32819E6201F4DA84F21944E88962335E44E490192189EC2846397E7A087
            1C1EA677A472701C04A3FEDBC92FF029B85BFC69DE771302E43C2B02642D7230
            DDA90741EAE283743B41EA2A8D04006BE9764423D833D72417EA8175B20DAC25
            3A75DE5E74D1825389EABE2117C40740ED2E271280A0A026849B2375520497E9
            E8C302E44311202E09105436DEDACE150A09505C0C530C3E26254666E6F91C86
            FE5726F53B6C693E17CA23BDEE477AD57364417952834FAB907FEF926134C9D1
            79E13E640EA9297CAD793F519C00C1D41FDC85EEA97BC35C02C93BD6D3ED04A9
            38B1FFD3ED84661C4DB71BC7083CE7E3603AAB90D173EEE5E3A32FF7E76C2FAE
            9E0F8C78EFE5C07A91C8040264815B1B22380804489F8F4480B82040D092DFB2
            8DB66B85425E7096C5890A774BD0C9C0B97820A9E0FF11646464126C22CC3698
            6DB6F12CF3A00C853EE4FFD770D927FCF623D93A74374E09A001313D6525DD8E
            780CC4CE6DD0E5278A1320E015B68D756F984B60AA0FA697B668F401D30A8FD4
            DD109A716D2A1CFA33BD6A8876987D323DBD781FBEEAE1BE5C8D5BDB89D14527
            46B9306A2459442B0511208965F308908BEC6A6A747C67D8B53241F00867F2A1
            620EB5C7320F7CCCD97F50834F48BDBBB9EE8629917EA452C4D6EA76C463DCC2
            36BECB4FC405C8CAE75B152041EB10E346C0C79ABE1BB51B6CCF69EF336E643B
            C28D2F42B70CB11FF3F818E8FBC743FC42139F9B17BBB59D48B58ED8CC4607D6
            FD22A9990B4225D0C902A4EFC7F4ECF0536961649808100705C836E4AD2C2482
            502E7F90AA5591ECEAA51F941A623F0CAE26FFC6502016E96DDD4E788F107ECF
            ABBBFC48F102246815D1F7647B40C3F7EECCF688EE8DD7CCF3E4F2F46B64BE3A
            7ADE4174DDA2FDB91FF767F92BB4CE866CAF39B4EEBBD8F67773630407110192
            5836B700D9F542BB9A5AEE0009950602F8CD8E4528537CE8CB32A46A8EDCE4D8
            FA1D8D3FA77DD9EE76F41BFC09EAFF3CD7E5272040BA43805C605580042D10FD
            6CB6492E7F67D0AACEE70253AF91B9C99529A1383DF5E5FDFF7DFEB6B5FF7899
            FB3B8BF89CD8462E96154251C5ABCB5E4B6E30DA7EA65B1B22388C0890C4B24E
            0B1074C6BC90854410EC20BDCE46FA018F2798463450936FA8A3F13F5D0D5326
            E7B19DA6DB098F81AB0CA6B0FED2E5A78A1720DD4825ABE8AD7B035D02370B76
            75F1FB101B865A1F4E14A3F30B101D487AF2BD9B5F8AD18FDDE7FC9B1E5AB427
            51ED743E821CAFFB910AA64B1E5CF65A72835206414A9F5DD984FBD2D6FD3EA6
            E7961201E2B40041876D83B2D72208DE60795277F628C7E8C7296CB61D384582
            6E272A89CFD0D7346581D4C16E7612FD008447E12296C50B1010A44074888131
            2E7D17A29D3F70F1FBBC0A62D15E72EBCB90116400B7FC67EDDCF07F3CAF6A7E
            84DADDDE66048A3BF4BB87B62229D25A398800492CEBA40041CA47DC69EB63C7
            CA044133480D774AE259FA8188BBC9880DD195698CBF3B34841C9D28E5E81C2C
            74125771F20B7C0862E7B62BF8A98400B9B0180182A97A87EADE409758482AED
            F82C17BEEB29B6ED756FB0669C9D0A9A836E21750766F55917D3F76DEB70FF0D
            A76257EA7EC4C1A8F76F0E7D29360D53D94AA9F9257891703F1120E6B3DC0264
            970BEC68661C349F96BD1641D00FAE68C3D822C6B350D6E8C714D21B2458385D
            AB776926D5BE0DBA1DF118485B7A7CC14F9526409095E87ADD1BE82208107EC3
            E1EFC0FCFF09BA375433D7BADD0646DD8F1AA29797D4D366BFBF4454031D1071
            7BBB51E3E57187D68DF4EA10D0ADE5AE48F00891FE2240CC674E0A105465D691
            7D4410EC267D083CFD20C4B0BBE3D57D0B700FDB58CD3E940A0AC5BDA5DB090F
            82D8B9DB0B7E2A2E4056B9A8180112B436C7DC7C27337FE1AEFF0DBA37523353
            4965BD74158C7EA0FFB2EC9F97D1CCF655B99F334FC7B69FCF36D1A1757BA598
            A66017224012CBE61120E7DBD1CC93787567D9B12241D0C87D6C7B279E651D80
            46FAD87535FB883B067E0DE28670BA4BB7131E647DB222124A1320BDD87EA2E0
            5444BF8CED4487D6BD29B918EFE051907A1C95BA5D2D826A64BEAA219ABC705D
            3A74D6F544B5AEC6BCA7F22AA52627B197F4EB8FE07F4480249675528060F463
            773B5624089A984F2A107851E295F4837C2FB67B753B496A4ACD8DBA9D289173
            D8CED0ED84C740042DB22915BE9D5B9A000198B6F777DD1BEA124FB0FDCB81F5
            8E2415BFD4A47B0335825CB7AB512239877B740FA96E4DFD9F7CEA6B5F8EFB6D
            7F918B6977E340C4A3E08853534875A491169C44044862D9DC0264675B04C817
            6C2BD9B12241D004E6F63E997886833079FCE08283D88566DD4E323BB13DA6DB
            891241D5F8DD743BE13130A56F754B9F2C5D800429101D01BC8849B4DE3A8541
            3A63C4382EA37BE33453B8568D03C4633F6E59B80E8D9F753551ED0C5DDBEF74
            B1659C1B1FD6B571820344068800319F39254090F90A19B024B054F02B77B28D
            4B3E0D65DE5C7332EF7BB1608EF03BBA9D2811B951910D44D91E963E19EECE5D
            E13F69D6181620DC216BB11E7F7B18F977D4AC5830A28434D5336D5C27621EB6
            D2BD619A41A1E1CBDDFE5274BF9AAA5497A6EEB71B883AF9A7AD9A4D1A463F00
            52869E52F65AF283D12549E65329A0A32D0224B1AC530204F3215F2D772582A0
            09CC8F1F99F64AFA8187F9F94E67D5290614ACFB59B7132580F49568EB7ADD8E
            780CEBD32E4A1720885B7A5BF786BA086235A6D9B4AE2BD9FEAD7B83343385ED
            005D5FDE87F7F5A3668FA5EBE71F4254FB0B7A487A1C0919755FD67468ED5055
            4B919AE62654022240D296CD2340CE2BB79991C1452A770A7E25FDAE53D6816D
            CC775E56B793268853194AFE4CD388D4C1AFEB76C283589F7651BA0041ED9AE9
            E48D29846E60579C14463D6FD1BD319A798F6D1D1D5F6C049E73FFEC930EA2D5
            7F7D8AFB359DAAF0A09ED10F88031C434E955C47C1D04D746C98E01055224052
            97754A806058F6B8725722081AC09DCDAB934F330EB890E782A6BF219581C6D1
            4A810E21372A7212426AE7CF2C7DB4740102308AB7BEEEAD75896BD88E29731D
            5E1BF9D4C102B61548C5BF69A14F2DD1FE7F1D4277CDDFCF8CFD70B5E8602A18
            012A9C2ABB745CAFAB22384C5595089094659D1220084ADBBADC950882CB3C44
            5999DBD20E3854EBB6D631740F4CA3F16B36A34B49CD2317922095CF28B23AA2
            D5D944D4630675AC76959103B5BDB830EB2005A25BAB2C9F9FFE6C5FB1F5D5BD
            219AC1D4BD77757C717CF4E333DED1C7FC86BA7FACB6434B74B6053220EEE5E0
            FA9DAE5F23B88D0890B465730B909DCE2DA789D17A48C83DB2EC1F4B10DC039D
            8B55F84048E9C2650DEB239BCE8ABA1DCDE069B61D743B512272A3221B4C49B3
            5E5320C6A7DB481DFD77E57369C77EF3696E7195180E619BAC7B835D02D32671
            E7BED491C28F494DCD0C3210ABDAF6174380D4121DF0D7C13465FEFEBA473F10
            B786B8BB010E7E0732E1E92E722BD8890890B4659D1020484BF83539372F5210
            EC6621A94C4CC92C39D9079A57A715FE876D5FDD4E94400DA91B1523743BE231
            70C7D37A76B528F7C842117A6D9589B46133D1DCCEA2BE2B4815D1C36CC348D5
            6C2896BBC99FC7989D60B4EC705D5F6EA4DDE55DFDE1452BD06EBF5FC7BD8BD9
            BCDF17B7B3DB8CD3E97711808E5A40FFDFDE79C04952556BFCEB307966C36C02
            96B04BCE2B200A489228E9A1A8CFF4CC98132A264082607C8011544C98151451
            411114098AFA90282C2CBBCB66D89C6676F24CBFF3D5ADEAE9EEE999E95055B7
            AAFBFC7FBF3BD3A1BAEAD6AD5BF7DEAFEE3DE70CD93C49C54738884FA6340E48
            CE6F83102041DF988AE237C74BBA3FEF93FC1B8D4FE943F7755F22D74B7A9FED
            4C54C0BE30B34ED61E614694021BA449186A019A3761C5A19FC7DC26605B79C3
            151AA0AF40FD18A27366A95CA70774B1FA79DB19B78CD5659E1C6E4D9156A281
            63AF955F03FA0F04D27C5664B5E960BB1BA420637F7386CD13547C4605482802
            E4C392AEF5E172294A18D090F0C6BC4FF26F32C6B459ECFE8F225F92F409DB99
            A880B324DD663B1311840F70FE54F2D6EC8CBA77C1670FBC1E17EDF1303697BF
            249EF163AC7834B200979C95E3F480713E4ABF16B5C90698D9E18DB632C0D678
            7A1AF8F4A63371D5C68F8812790E96BC5EE542EF57F302DCFF95728A97DA3E49
            C5475480942A403E534D317309C1DB7CB85C8A12346CE0F3D5F65897BB7F45B4
            5D21F209ED176D67A2022E9654B5B78B1A836B4A68A7F06CC9BF70BD60AD5BF0
            254C2DDF0B16A9A7F6BA1CB14ED7D67CF0D0623BD396B166744E38D49A9634FF
            1B96FF50EAFB0C20BD099605C8B1289C31F71F8ADFBB6C9EA4E2231C60AB0029
            5180BCBC2A01F200E2EB9547A91FBE02CED6E5DD4F633AB5A0A3DCFA41794B76
            A2C32F31C6E358DD439B98FD6096BC97066D40A4DEDE79F027716A27CA354227
            5CBEF70DDB271E12BF93746E89DB3E09F3E4BF9E2977C6C8773CC3F3CB379E83
            2B36BDD7D87ED8F6389E70DADB20DDE3F22E6690D6AD764F54F10D15205E0EF2
            7E3B8E00B9A2D262EE90B414C665A1A24495EF48557FA7F32A7B3F8C111FAF44
            A9C1E0ECF2061877907183811E0FB19D898851BEAB58C7087D04F71E7C318E9F
            5E91003901FE45088F3A8C99B37F09DBD11DF7AB6C67D632141EEFB099019A33
            CD4E032BA44ECF5BFE5BA9E7F249B20B96673F383AA4F7AB5D023C0663CD1C6B
            F324159FA1F72B1520810B10BA8D7BC4A74BA62841E0C6FAF06E96629B240E82
            717F18074F6E6F96F423DB9928137A77E132A366DB198918574BFA5859BF708D
            D0572FF802E634423AB4B28FC987460C2AD76AFBE443A01FA6EE6D99601B353A
            071E92F442DB996894B6B95D062867AFFD206EDF76B67CB0DAB89DB6CBA992EE
            0CF8185F90F429DB27AAF8880A102F0779BF2D2E40CEAD58807049C52F7DBA64
            8AE23737495D7F8D7939AE0069930FB9FC222EEE6169CCFD07DB99281335EE2D
            CE58870893229D51CF4EF8C2FEDFC427E63F5A89113A7958D261B64F3E24E87A
            F85FE37CA78E11806E180F75CFDBCCC49054EBD94DC0CD5BF7C67FAFF9BE89F9
            91B0BCF4CA10864BE65324FDC5F6892A3EA202C4CB41DE6FFD162034E8BDC4A7
            4BA6287EF24D49EF1DB3E46AAC00A19BCE97D8CE6C1954E25AD4367CBAF739DB
            998820AC770F94F58BA166A0713B9E5EF059ECDB026CA92C6AC077504EEC9178
            33DE8CE17C18B7D04DB63368999325DD6D3B134D6EBBBCDBEACF634BEF21409A
            CEB8AC7BBE6A952C308E4C7B80C7E0ECDC6E9276D83E59C52F122A40CA132097
            555AD25C33FF4A9FAE9AA2F805DD427FD4DCBC399FF23ECE172471348C7E29E2
            B7865FD7D88F858BDB3908DE54D6AF32526F07A7E23B075D8BF3775981CD7D15
            1D9B06B5717464500914BE17177CC6A098B40FD9D376E62CF37149FF6B3B1383
            D22ECF11317DD5BA53F1E9B557881A615CE348840B7A23825FEE7ABBA4B36D9F
            A8E223091520610810EE81EBE6D5B0548912174ABAC6BC740548C67332942B48
            12D7813324F1236ED3F56C7296C33CE55346F98FA443CBFE155BF0C176DC78F0
            D578F3CE6B2A152061B8158D0ABF91745EC167B7A274EF58B5CA2D88C0C3430E
            ADA6278DB14EEBCA2FC98BFD653C569E260F90FB60669C8324AE5E0D95A22454
            8098375E0EF27E5B5C80FC5745F16F66C30C2CEADD6FBA120D86A552BF1EB4FB
            C8C2DA9EEBE1342B40A8B82FB79DE10A99684D7B14E1FAF245B63311417E2EE9
            F565FF2A93962A9DC6AD075F8573677563737F45C79E22894B4BEAC129009759
            E5BAD7A5CFF94FDBCE9465E8B992DEC12A5BC0E72329698FA7CAF8EB45AB2EC4
            83DBCF029A9646C1F09CEC2F7DC553211CE700494FDB3E59C52F5480B86FBC1C
            E4FDD64F01524F4FD19468B34AD2ABA552E70FCC33EE9FEC4DE40810DA2C5D59
            DEEE23C5DE300388B84043EBEFDBCE4404E120B8B2C08CBDB370F541D7E1A3BB
            2FACD4089D30D8DC91B60B210458420C32C8B5F6AF433C5D58FB0DC587F58702
            4ECC0FD1D30B45441FB49CCF8D46A489EE41046C3F0867D13F12F0312A9B0555
            A24B420588FBC6CB41DE6FFD14208CABF06D1F2F9DA254029723BD56D2C6FCBB
            CDF5A0927703252F923F9FB59DE12AE18CC262DB992883EB25BDC7762622086D
            627E5DF6AF4668BE90C01F0FF9345E3663A49238201E8CFBF076DB851012D360
            DC0FAFB29D9108F02618CF4ED66990A6B943062447ACFA141EDE712C90A677E8
            48880F46FB7C4ED2CC808F439173A1ED93557C84037715200843807C4DD2077C
            BC748A522EF9FED3BD1B2193E3BE71F406A2216A654F9CA345DC04C842986506
            4A3EB49D7BA2A25FF6CEC635075C8F8FCCAF6A06E44392BE62BB1042826BEC4F
            82DA2B7E0B117918E0B9DDBD63FB4C9CB152F45003C54724DCEE12067BFD4908
            C76150D0FB6C9FACE2232A405CCA1220152D89BD43D2E93E5E3A452995D55275
            F9F4B620409463715EF09153D12F87B1FBA805E22440F68E515EC38456B60C90
            3758D1AF7B67E1CB075D8F0BF678AA1A01720C4C0466A53E7850D28B6C6782D0
            2A6FA68CB9BAE545C7B2AFCB5DB08B8CC1B8422E12B31F248C38398CAE4E2F6C
            E5871255A289B3FC4A0588FBC6CB41DE6FFD12205C07B04CD2AEFE5E41459994
            1FC299B64E6CCCFFD8131E633A31C60379B7ED4CFBC85E3051C5E3C0DB247DCF
            76262208E3B854EE5DA77726AE3DF89BF8F01E4F5723403A6106416DB60B4309
            1CBA7CDE0F96830D7A700C32AD0178EBF3FF831B37BC19685E1615C3737234CA
            8DCD5319DF80AE20A92D5480E46C578E0039A76C01C2A8D1CBFDBD7A8A3221EC
            3C3F2675F7A7E66D61808FC2CF9CBB9A06A7718BF3311947C03CA18B03F56467
            500EB49DAB5C14F7CCC2B5875C5FAD0021FF86A94F4A6D739AA4BB6C6782384B
            AF1A813F774DC1A92B6E02D2EBA4D9AE6C2230206897755ED57B99944464AE89
            E2132A4072B60B56809C0913404751C2806BD5E93E73CB98C8E6B4F728FC0C98
            05E3E7FE58DB190F801325DD6B3B1325B20466C646C987DE75BE5CF1AFFD1320
            14F3E5BB0256E2C4E7255D643B1384C3A81669A25B65BC75F88A4FE2916E699E
            1BF85C29324BAFE82D6D7508C779CE3D965233245480542E402E29B7B4E9B9C1
            7A0455A5E6B95BAA282BE73FB29F4C38F1E1BCE0143A239CD76AE0BB3360ECAF
            FC838D41C6770350BA977C2CA432891BB49DBBB3E25FFB27403E2CE95ADB85A1
            04C63D925E6A3B131E8EDBDD26E0B3EB4EC425CF5D0C3471157764C407F31256
            70DAAF4BFAA0EDB3557C24A102244C0142BFFE6FF5F9122A8AC73F257D4ED2EF
            C774508E9D7906F93742F6553DB8867EB3A41FF9B32BD768DF99454AC2672F34
            FA90A2382352D85CC25AF99356FF04083D43FDC57681288140ABEEF992B6D9CE
            0871C4878CB3BAA4F64F597A3D303453C65D5B112101429B28CE4C3485702C3E
            24FBA7ED1356FC22A10284542C40CE2E5B80F089F4513E5F4545A1F1DF35523F
            6F19FDA8F0062862EF9170EE60BA983CDFF609840007F6D7F8B22716E1D09049
            0D8DD20EA6FC9C09F92BCC7231251F3EF6DDB3AA3DF4CC1401F22D3F04C81C98
            A0966A885E7B9C88082DD564608D0E19DABF6AC5DBF0EBCDE7018D1CEB47467C
            902B2455148FA04CE815705FDB27ABF84842058843E502E4E2728A9B4F08D64B
            9AE2FF9554EA14DA13898048DCE6BCCBABF3DE9BC2817176A3174ABA51D241B6
            4F2224683B507D845E3630C383467C38EF13468414F1645C0174314B0F4B699B
            051551FE20E9ACAAF6C0199043ABF682E51186CB51255CE872FC33B633E1C116
            66B628905F6DDB1DAF5E719DB40A1B5DC3F3C808901698D98F69211CEB7218B1
            A3D40A2A40CCFF9004C802498F06701995FA628DA49B609613B9F52991F7CF21
            77B9D55861C2A9BBCB91BD83EB825B25BDA2AA3DF0E61F1901060773CAD42D67
            8A90EA550867A2BE63BBA0224AF5D18FFD1520BCFFDE68BB5014DFB85BD2C9B6
            33E1C15664BAB4CE83F2A279F1374CCC8F349F5F26ABDDB59F7C12C6583F0CE2
            E4465D9994840A909005C86B24FD22802BA9D43EFD9238CB718BFB7F7BFED705
            42239329FEB9F3C436C1815C640C2C43849EA5F6A9F8D78EB670C547F6038F8C
            6938530DA84E8024B8F4E378DB051551E896F8FB55EDC15F014263D8AFDA2E14
            C51768F7C1E57D5B6D672497CE46E08A7527E1F2B51798A5579948890FAEE858
            27696A08C7E2B2D4936C9FB0E2272A40AA17206795E5A5EF72D44E54692578F8
            B8EB4F30C6AE7748C55B37FEA6932CB732B5F932D477FD63E13000E87365FFD2
            9BD8181CC0B8CB1F28FAD2D22026D3A85084D0F075E9F807A87B683BF7AFAAF6
            401B1047803CE38700E1D3F23FDB2E14C5174E90749FED4C78784BAF1EE9010E
            5F72B38CB37648BBD26F3B5B857C0AC6E14918BC0EFAF0B68648400508421720
            2105EA5162CA72494FC274841C68D1B07C34D254A29271A9F31B0614A4F038D0
            F6094600DE7FBF29EB175EB10F0F9B34D17548BA0D041BCFF235C895304BE394
            B1C850CC710FBDB9BABDCCC435877C131F99EF8B00990973CFAA217ABC6130AF
            AB6C672217C6FC484BEA5C7629BA771C0A346C40C49E4B744A7E68AB1646DDE7
            8337DEFB918ABAA85441420548DEFFCA05C8A7CA29750E2E751058DFF4C1CC6C
            AC857127CA780FCFC078F8A051EBF8C3D6F205C83130B36EA7DA3EE908C1D80D
            1F2DFB5743223C4A51146C484632C62B56B6912B49897063DAF6EC64BB80220A
            EF8DEA238F3B02E45B7E0910C2FBF750BB45A3540167974FB19D895C68F331A7
            05F8EEFA03F18E155F019A2369F6C065BCD53BF4280DBA24FFB8ED13567CC4E9
            1B558084294066C378B709C357769CA028FB314C4D8AD402D72A612DE1A8958F
            AE7ADCFFF42BBF11CE139D4477F97B2C5980EC07333DFE66DB85104128F6F62B
            7D730A8A2163785ECA13C86C43C2F820A972AE1967667E6DBB70220C0364BEB6
            EABDF82F407E20E92D564B46A914DAD1D1EE6393ED8C78F0D9C5CC06E9200681
            9D965C2F3D48A7F48C344F89D4EC075D50AF82F1101C0674BDBBD8F6492B3EA2
            0224FF7F0802E45849F7077335634DE4A6BFC3A1820E65F2C1EC9192DE03E399
            47DDB88E0F9F58FFA7A42D6974CE6557A55EAF64C176B953CD13F390A4C36D17
            4C84F1C73DAAFF02E40218F7CE4AFC385DD29DB633914B8334131D32AC3F73D9
            F9F8E3E65701CD4BA40D8A9AA3C24498DEDFEE90E6F30CDB67ACF88C0A90FCFF
            150B90334B1620EA5EB338AF97F4F3683DE009832A04C8F801EFD4C6A834BE0E
            E3C168629C72CE98C792A5922C765D2715202F47B97629F5878CC67C9821EA99
            816B0EBD011FD95304488F2FF9D288E8F184AE63CB32E00C9A21696666B7003F
            DD380FFFB3EC3AA069A5ED2C15637F494F85783C2E1F56470FB5842734548084
            2A40E8AE71F2414FFDC1D8288F3BAFEA4A84542840268EB6CD0EF5B3B6CF2C06
            70E8C96504132F83E3EC07A95A80B8248AAE30E43286556E7E94F1391866B966
            75F82F406888FE3C74C6314EFC03C63E2E3238E2A311583B00ECBCF87A6973A6
            485BC2156291EB14B98AE3D8908E55E672592516A800F153807CB2D462BF0B11
            33768B00B487E01ADCAEEC2715797A8A23659EE7E4B31FE41C49BFB37D6631E1
            0A1803FD2264F2CBD92F01523C28E47761E25B28E343B7C98CDF52BD64F05F80
            10752E121FB8F08E7DCE5ADB19C9A551DA847691B02F5B763EFEB4E55CA06945
            D4627E9070FB9744E29DD05523B5870A90D0050843242F92342FA86B1A538A3F
            89AA0B11528900C94C264068ACF774F93BAF4B3810990FE3E271944CF6CF28BE
            091092C8BD3A5C47FD23DB051103F8D4D59FE08C5901B2D84F01F213496FB053
            344A99F8B394CF47BCA557376DDA0DAF59FC2DA07995B41123B6B3550C7A6D9C
            1BD2B1E86E9B1E01D5F56EAD90F0FA3E1520610B103EBD5B041D1816C2C1D758
            4F4D2A40C661D28130852EBD85EC6EFBEC62C21D92F20D1C8B093CBF0588F9C7
            C067F7D82E8098C0A7A0EFF4654FC108904F48FA829DA251CAC0BF7AE4136C5A
            3AD36EF8A0672E93FA795014637E904B61668DC3E2F2908FA7048D0A90FCB2C8
            FD1FB0003953D2ED415DD71843DFDEFF5BF49B9A17218108106E729BFC3DCBF6
            D9C5888F49BA7AC2B2F55F801C0713E1BEC5F6C9C704DACE7DDD973D7902642F
            5F05080D6523E54D491943E4EC09D8AA344B73D0D62015E8D9F3F1E72D324C68
            5A13C5A557BB49BBB50CD9D15EE03010FC0C1837C94AADA00224BF2C72FF572C
            405EF689528A9E839C2F05755D630C07CA7F18F7DB54E41A621F29438064CA0A
            A94DB7C6D5BB2BAD2F5E2E85FCDB71BFF55780E8B2ABF2F1CF134E3002840E04
            68A752CB0D56DCA18D4E98DE9B2685ADCA8C26E0C71BF7C29B965E23E2E37969
            1E866D67AB1814D76106B3FDAA0CB22EB07DD28A9F2454805814203F94F4A6A0
            2E6D4CE12257DA2C2C9D70AB9A1521E50890B2D6037349D11FCAF981E2F0DF92
            6E2EFA8D3F02842D2567FB3E6CFB4463C6004C3BB1C297BD8900B9FAD0EFE0A3
            FE0A10424F7E87845E3A4A29BC4FD2F5B633918B233ED2C0C62160D653DF9281
            563B908E5CC041C2E09F3F0FF178FD70665C9CC0BD4A2D902736F8810A90B005
            088DAD8F0AE8F2C6154EE9D2A7F8C0A45BD6A40829B1A3F1625194CE2C49CB25
            B5DA3EC3187225CC5AE77CAA172027C304ABD3016AF92C81B1A1F387E0040807
            69D5476A57FCE6F792FECB762672616BD222CD446BA3340C4BDF81BB379D6E66
            3FA2273EDA24AD913435C4637E05FA90A6B6500192778CD1FC211401C29B974F
            F9670477856309DD129F36F96619B74246AE71AE9252054845DE50FE8E88F9B9
            8F11FF9244C3AE7BB29F542E4018999E4B095E6FFBA4620C67F3FCB3691201F2
            B505DFC407F65CE6B700A13DDB17C32D1A6512E849691E72DDBC4784CE06E05B
            1B16E03DAB3E65663E12347B885C1F77238A3989090E7ABCA2972D9DFDA82554
            80E41D63347FF041809CFEF1C98A7F81FCE6D120AF6F4C29EF4947CD899012CE
            A5FCD90F0F46F92D39408D5294BB25FD00F4943592D958F2AF9209DA039C0E23
            3A4EB77D12350007F5FED5E59E4E5C71D08F71E93E4F604B6F85775771F830E5
            4FA1978E32118C52FF57DB99C8C571B9DB0C3C2A92E8B0853789F8D82E63A81D
            88A0F9900DC70A3AFB516B78E24205086C09100E447E1AE0258E2BEF90F4DD92
            B7E6603C9DAA21119298F83BCE7C8C54EC0B9E012FEFB27D863502A3A5F30102
            674656C22C6FE393BA3E494D6E9A07E3FA98B34E874297BFF9C95B606CE8FC61
            600AF699F504161EF10BF4499332E05FB805C62CA09D4A63D805A414E55A491F
            B59D895C58D5A6A7CC8AE2C4D39748CB72A0D4163EDB885C9F2612C9597AD519
            E2313905C47B6893ED93577C4405C898638CE60FA10890CF49FA54809738AED0
            15E9DF4ADE9A028405EF8990F23C434590493A9DE1AABCA17050CC45C5D36D9F
            A5A254096DE7FEE5DBDE7A67E0DA177C1B1FDEF359BF976091C76004A86297FF
            2062D781E2A34506106D32B4BF60C94BF1D5E73F08B4AEF2750ACE3712091B81
            35E9B9F132DBA7AEF88C0A9031C718CD1FFC10201F9BEC12DC22E915015EE238
            C2AE7FBEA4F565FD2A2B42D2B6F3EF031308109E67E5B31F1EBF84F1ECA42871
            856B537695B4D5B73DF64FC551731FC43F16DC8A2ED1F883FE0E007F26E975A1
            96905208AF28BDA62DB19D110FB6E46D32786811F1F1E9C547E2AA67DF0D740E
            4A1740874F919BFD609FF1CB908F491B1D2E5DEDB57DF28A4FE40EB05580E41D
            634CF9384552A900396D5201F284A48302BACC71E549490757F44B0ECE532933
            1312EB5990093A9E617659559F9B2EFD53E20E67145EE0EB1EFB3AF1D1FD7F85
            ABF7FB37B6F4F9FE005AE33DD9E7FD92AEB39D098F5CF171C5D22371F9D3EF90
            375BA4FF1201D2DA217D59DA9DED8E425F96A007453ACCE908F9C0FE051A55A2
            810A90480810DED00C50550B8FECFDE457925E5DF9CF33A672C65A848C234032
            C3EEEC47D54FC6D889D09B4893ED3355940AA16B5B7F3D88F54DC73BF7B90DDF
            3EE0016C1D28CFC15909D0E9C01DE1158F52C01F259D693B131E6CC55B65D0D0
            2AE2E332111F9F5924E2A379B3F45DBDA6E235B71901C2076A4E7B6FBB2F4BFC
            05C6703F4C56C97177B77CE28ADFA800094B805C38D165A09DC37D015EE6B872
            85A4CB2BFF79C6B4D56CBC632B428A080C9EC6F0909F07F9B5A4F36C9FA9A254
            C8C5303674FE3120BABC73097A5EF4236780D8EF9F113AD90366E98F3E700A1F
            2EE3D905C66984751C9B0F69E2DB5AB9ECEA45B8EA198A8F8DD2670D7084E26E
            350C6754D131CD58A65767F7572D1749FAAC85E33246CBEF6D9EB8E22739C2C2
            79AB02A4F018A3F943E002E43D885804D688C0805DD5AD33F5EC411A1A626A94
            5EA472B203E20C887FEB82CF91F43BDB67AA2815F22A1811ED1F7D9DF8D481BF
            C4E7F67BD46F37BC8437EE429800AB4AB83056CC1F6C6782640DCE5B283E5E8C
            AB16BD5D3EE0CC4781CD8737F8483598C1566383791F7E57F66249FFB45054F7
            4B3ADEC27195A048A8000957809C3AA1A7BFAFC2AC6F54F25920E9F1AAF6E089
            0E5E8B86387ABE2CAC9C722E838340C237F141F824964B0067D93E5B45A9000E
            E417F9BAC7817660EA6A741FF55DE756EBF3770684A8F387F0F916CCC33EEB64
            6D3E3CF1F134C5C726698973673E5CBCB69E0F9E92D254B7BBA617E13E4CE341
            798FED6CA1B80E94F49485E32A41A10224520284817C4E0DEE6AC7926D301E2F
            FA7DD99B3713D2D414B3599082CA48F141DB0FFFE39C7C41D2276C9FADA29409
            E301302E80AF6B12E905EB25BB3E88BF1DF63B740DF9EE058B70D9D855A19490
            425648DA1366EC6F955C83F34B97BC08573E7D3ED02CD5B881DE0E52637F9028
            187470E0C507514DB28344CAC4820A1EDA2CD90898FA0D39FF0F5838AE12242A
            40222340B8D52A497303BDE0F18353BD47FBBA47274861DAA4D888909C0A3834
            6C6C3F8209B2B88FA4676C9FADA294C9BD924EF47DAFFD53B060E747F1F011B7
            A067C4D740841E6720224B81EA842325FDDB762672673E2E5D7C84888F779A99
            8FE4C0E860AB9044FE00C3080EE9BF5ADACDE02BF8BE8CB698975A282E3E5CA0
            E1B9FF9178144BB8837015209111207C2AB334D06B1E4FBE27E97CDFF71A3B11
            922B40868214208403A2336C9FB1A294C1B725BDDBF7BD0E4CC19C594F61E591
            BFC080BF91D03DD4103D3C2E8719445B6548EAD134B9DA8D223E2E5EF4627C6E
            D15B8DCD47AADF1899E70C4EF22814201E49777971BAC9D838063313F25F72CC
            DF5A2A32C6CAF985A5632B81A002C48E0039E523E35D91B3A1DE1D8A41C576AD
            BFBBE40571454763A3A9C091172139958BCBAF82B53C7CA9A4BB6D9FB1A29441
            30B101FAA7E1F43DFE8E3B0EBD23A825586A881E0E9CF538D27626587FE634C3
            69BECF5DF872FC6EB534B54D3B46C507295780385E1E2535CA8E1B9B8C00C9B8
            9FFBC33C18BB0F1BC693C1CC6C2A16F1C4045480203A02E4E392BE18E4658F29
            F4D3FEC740F6ECD983B0D1F69E22459644CEECC760911BC277FE0F11E8B015A5
            444E91F417DFF7EA18A1AF41D7D1DF759A88008CD0891AA2070B1BF6BD242DB3
            9909477CB4009BFBA4B23EF9663CB2F668A0D573B59B63F351AE00719EA77106
            44F4419A9EB1DCB850FECC90532E5120CFB7546CF360EC76949A4105481405C8
            0F24BD25C0AB1E57E621C80628D7283DD2EE79DDCA35D03F9AE760394DD29F6C
            9FB5A29400475CBBC17870F3170A90CE65E839EAC741C401F1F8A4A4CF075940
            750E3D5E7DCB6606B2331F527F8E7DFC75F8FBCA3344D83E2BED382B14470A05
            82A25C01927DEFF65F8C79456F8F55F767095B46E7E422392DBD2F6A0E152051
            1420FAC4792CAB618CCF8255056CA4195DD69BBE8E22ACA483DEEC47E0E2C3E3
            214987DB3E75459904DA50EC8B20DA897004881AA20787F5253CDECCC7B67E60
            DA83D2FF77CD075AD79B598F6C53EE970071C9F66739B744F962E46B926C799E
            7A42D221968EAD0441CE605D0548EE3EEC0B9056496B244D0BEEEAC7122EBD3A
            339423D1A52D0DD21BFD786A140452890607C2CEDBC992FE6CFBCC1565126E83
            09A2E93FE108103E64E1F2A0C0D755D6197D927685F1A2143A6CA9D9F5774AEF
            BEB50798FEEF8F02DBF704DA9E972F5D9F03410990A43B20CBFBFD24D52B6F50
            830B247DD946B9B91C2AE93F168FAFF88D0A90080890933F5CECD21C8108B806
            8C207C02F3A1D08E4611D218A82791CA70E27EE478BE0A5784DC23E904DB45A0
            281370B5A48F05B2674F801CFD93200508795AD27E81EDBD3E79BDA49FDB3A38
            5BE9198DC022111FFB3F26FDFEB67D447C3CE71A9BE71A9CE7BDA85E8078DB15
            2ED5E5B2AC62FB1DBBFF5749BAD956B9099749FA8CC5E32B7E922C183CAB0089
            9C00A19BB99F0574F9E3CCBB24DD10DAD1BC717D7353B43C63B1020D0C9808B8
            E12DBFF260F4D9276D1781A24CC05B24FD30903DF78B0099118A005143747FF9
            95A457DB38B03784993E05F8CDAA6938EFDF97036969BB9BB78C7ABA0A438014
            BE766644261520C7C32C5BB3C5C3300F64955A410508720E0ACB02E4826297E8
            4A49970474F9E3CC4B243D10EA11BDA746CD2D36661BC6E2E56120F4E557B95C
            0F63C8A9285184814AFF19C89EC313201749FA6C607BAF2FB8E48A71B5B6877D
            60B6D04DD264B74BF7F1C3D5FBE12D4FBD1E18943AD4BC15F983FF480A9017C0
            DC474D61975B0E7B43E3A1D5162A40907350445180FC5AD279015DFEB8C2F5BB
            F46CB331F4237B46E94DCDA3EF6DE1453E1F1C8085D90F8F36492B2575DA2B08
            4529CA3698414B30ED447802E415926E096CEFF505FBD2DF847DD0ACF890D6F2
            ABCB0EC0058FBE0F68906EAC7933C6C699B42540BC81D4983E8DB632743A323B
            EC72CB8106EFDFB0787CC56F1C81A00224E7A088A200E112970303AA02718506
            68875A3B3A6D40B866963621CE85B52442EC2EBFCA4507484A147954D26181ED
            3D3C014243F41581EDBD7EF889A437867D5046379F22639B66111FD72C3E1817
            3EF96E5123A28DD33D6E74F3C2B6DB820049B8EE7EC71E730A8CD7A9DDC22EB7
            1CC27338A384870A90FCDF581720278DB1A99E2B69B1A496E06A412CB1B68637
            CBC8B0892ECB9910BE0E1B6FF9555F9FD562C8E126D8BE268A920F63D5BC2CB0
            BD7B02E4989F062D40083D61CD0BF408B50D67C1D89F0E847950C7CDAEFB9CEA
            ED8B4EC3F7979D6E663E3CF141AC0B9022DB9BEF447C24B8CCF9A030CBAC802D
            30F53EF425734AC0A800C9FF4D0405083D0CDD135C0D882DB48BB9D46A0E1C7B
            10181192B6E019CBF37E6577F9552E14C9CB61779A5E5172F92A8CCBD0600857
            80F0A1CB2B033D426D738AA4BF847940CE7CCC96EE61C72070DEC257E1CE5527
            01AD9B649CD39763708EA80A10BAFDBF1736571A185E0A1D03D51005F54F0508
            720E8AA809107A7AB21AA535A2D0238C4D578006CFFEA349C6DEE954B8F620CE
            F22BE9D986420D3E38192F9142F89BED4C288ACBBB257D3BB0BD6705C8CFC210
            20743F7A79A047A85D7E20E96D611D2C1BE3A311E81902DA1E926AB8FE08A063
            B57C318C3102227A0264AAFCB90FF6C5C765924775B95B53A80089AE0079E907
            0BAF168DAEDE17402D88378904D7753F6A3B1B0E9CF96025696D73DF8721425C
            BB9381FE28D87F14428F6D57DACE84A2C044B9BE37B0BD872B405E0E0BC6D335
            C07A497BC0382E099CAC9B5DA91A8F6C020E7FE41340EF1CA065A3896E5E8C68
            0910C979E27E79F58230CA6B02385B758AE53C287EE20985DCF72A4090735044
            4D80DC29E954FF6B42AC6187B297A46EDB19C9E218A53700CDCDA3B61981E20A
            90FE5E6024133501427E87A0A24F2B4A6970ADFFBE08D2783B5C01A286E89571
            86A43BC23810975CB5A7CCB3A89FACDC0D6F5CF856A98553447C6C76975C8DD3
            4E474780B4CB4BCE602F08A3BC2660031CEF7509B5FBA8255480E47C1E7D0142
            D33546C09D17445D8831FF90748CED4C8C8133114D72C99A5B83374A67A5A4ED
            4774EC3F0A11358685302E5015C50674DEB1BFA46064011F32F4B4A37DE7A7D1
            75FC2DD8C6C9C8609F3B24DD73DA33D0A3D416374A7A6B1807A2F898D960C639
            DF5DBD1FDEF1D8BBE48D54BD5606182C32D3904B3404C84C185B0B9B06E71E2F
            92F4A0ED4C283E922B1E723F5301829C83224A02641F498B306EAB55B784BA9E
            B774326650427B10BAE70D5284445F80B02C7681592637CB765694BA844FBDCF
            F07DAFBCC79D659772DFA51844AE11F71DFE191C3703D8B8A3A0EDF71F8D0955
            3AEB60668D02F77AE578BA6A84F3D8E5FD0B4FC6754FBF1A68DB683C5D217770
            12590142517B0FECBADAF578BBA4EFDBCE84E2332A40B24458807C20F7086749
            BA2D98DA106B2E94748DED4C14C5597A4511D22A22447AA49180D664C44380F0
            EFE192FE0FD93B5B5142E35A491FF5654F9EE8F01AEC8646F390A1210DF4334C
            C200FEF9C28BF0E2E9C0FA5E197706774BD220F7D361145E0D70B2A4BB833E88
            E3E94A9A7B0C03873EFC26FC67ED61224AB74B8B3760663EF2EA42240508DB68
            C6D98882F7C2EB24BDDF7626143F29221EB25FA900C9FB8D750172629E00F9B8
            A42FFA5F21624EC20948F447DBD91817CFFEA3ADC354CC20DCF3C647809013E4
            F53DB6B3A3D41DEF94F49DAAF6E0CD62D2CD7652C4464A3AA8860663EFE53C6B
            A00308B9BFBBE7029D4F2273CC75CE4074FD406022847655BF0BB514E3C9F724
            9D1FE40178F9B9E46E761BB0A21B38F1F1B762393D5DB573E2C515AB00222E40
            5E2A7F6F4734E28CFD196AEF5A83A80089AB00F9112C446D8D386CD9B9AE7BB1
            ED8C4C0807DFACF06D017AC66200C2E1A1E80A907CFE4BD26F6D6742A92B2A78
            02EE2EA3F41C3B70A683E283C1462940E07E97191EFBBBDE19386EEEDF70DFC1
            BF469F7CBD632490B5B35C2AB3D44E71C686C0975E79ADF90C19B63FB60D78C1
            C31702DBE78BF85883FC255788B200A12BFB5F06554665C23ABD40F2B6C37646
            14BF5101125701C208A447FB5F2162CD7218DB9821DB1999142EBF4AA5831321
            3D3DA36BD1E3019FB6DD055D8EA5040F079FF494B77AD22D790F655CE1C1CE8A
            F72C4507C547031F0CBBCBAFBC99CC71EF63B90FB7CEC385875C8FFF3DF8DFD8
            BACD3C21F7F9EEA40A7A12C6BB97529C9749FA53503BE7D54FC9459DD601DCBE
            A60D67FFEB0AF940EA46F396E29EAEA229403E82E82C63A6374BC61B59663B23
            8A4F14AB8B2A40B244588064973FB64B5A2969BA9FF5A206B8538AEA74DB9928
            192EE1A0517A738BFF46E9BDBD669FF11120E42530CBE73A6C6744A969F84475
            7C0F6C9EE860034CC141B1C1E555ECACD24DF23A69BE1FA6E828584239AE00E1
            F6CDCEFFCFEE75332E9AF738B60E9809139F612C9097DB29D6C8F30B49AF0B6A
            E7B4F7989636E63F9F5BF2025CFCF46B4CFBDBBC2D27B279E405C8D7112D3B8B
            E32469F0DA5A420588F337CE02847EB8A311682F5A7C19E6E94D4CC8989910BA
            E6E5320E3F8DD2E32940C801522E74AEA0EE4495A0A0C83D33FF23DE27EEFDE8
            D872C828B2B1D9B5EF4899EFB3B321DE6C07FF942A40B88B6163943ED0815B5F
            FC119CBB4B3F36768F5994532D0CF27989CDC28D288C1D314F524F103B773C5D
            71424CAAC3BB179D886F2F3947EACE803138CFE45EE1C80A104EC5DF8C203CC3
            55CEEB24DFBFB09D09C5675480387FE327404EC8063D7F83A49FF85A296A031A
            167ECF7626CAC21BB0B44F31031FBF44487C05080BA55306773F9717A7D9CE89
            52938C7D50E1090FDE87E946D7A603C69EC3111DB91B6772FE952140F8031AA5
            F7CC70225F3F73E4E7B14F2BB0BEDF57A3F4574AFA9595528D36AF90746B103B
            76C447ABF170F68A275F8F07561E6F8CCD530CAE5E7CF051FCAD3501C2D81E14
            1F0704513E15C2FBF3CBF1ECBF94095101E2FC8DB300B94AD2C5BE568ADA209E
            D3B51CB4B022B5FBE8192BDE02C41BE3D155EA876DE746A939DE25E986BC4F28
            403AA601AD1DC67943564864F2FE8DFDAC4C0142284276CC02A6AC40EF515F41
            B3DCA21B077D8B1142271CB403F1796225D6D0C185EFCBD2B87CAE414A796A0B
            B0AC0BD8F3A10F009BA5F83B686CEE75FA85BF8A9C0061DC989F4A6AF6BB7CAA
            E04B92B14FD8CE84E22345E3CB386F463F530192F379B40588069C1A4B3F4CA0
            A40DB6335211B94F6049B546E9B5214008BDB1D0FFFB4CDBB9526A86B361DC8B
            1A2838B80C72EA4C73CFE4DD7B010810EF75D75CBC72FEEDF8D50B6E479FDCAE
            DDC3BE8810F692F402383FDC228D2C52B260D0D3AD7EEE346BEF21C3F6BBD735
            E3E4072F927A244AA47553BEB179B405C8A592AEF0B35C7CE03B92BD778E5B16
            4A3C510132E69CE327408E7FAFB7C542446BBA340AF0A9DFC1B6335131BCD0C3
            832648615BBB6BE05A8508A91D01C2F71C40D0385245B7E2079C2558E4BC623D
            1B91FB6EFA1C339A1C2EE24237E7DFD8CF2A14204E9C1019C1F675E0B85DFF81
            FB16FC0ABD03408F3FEE7969437556A8251A5DFE07E609BF6F38C1059BE08C47
            DEFAE4E9B871E96940BA4FDAEEAEB1C6E6D11420745EF36344AF8E182701E39D
            83121F52B4691D705D9227A0022497780B103E095E079D622F846B58FFDB7626
            AA6664483AB236A0B5B53A7B90DA1220DE8B3749BA5AD22CDB3954620B674877
            861312104670B4C8FDD631C3DC7B63085080B0C31A6A7262847CFDB0ABF1FEF9
            CBB0B5DB64ACCABBF63249978758A651E54E49BE79457434A3FC992963AB6ED1
            AC6F7CEA1CDCBA4C76DFB651C626FD26B27996C80A9013606288EDEE57B9F8C4
            ED92C9B3273C072506C8754BB7003B96CB3D21ED6AC3143720AB0A90C2738EAB
            00395ED2BD7E55971AE272446F3AB90238289181509BDCB82D2D459EC896486D
            0A103253EEFC4FC2D886A80857CA853662C739AF28F0D9F174CEC1F8B657010A
            10E28810B9CFFBDBF0A3C3BF8837CE5D8B8D3D552FC5524374130B6A0F49CFF9
            B1336F68315D2ED5A35B81C31E9426A847EA4DAB888F444E64F32C911420B41B
            BDCA8FF2F099DFC309469B5B6671ECB7EA1DB9660D1DC0F6853869E33F70F72E
            67CAFBE966264405C898738EA100790F5FBF5BD2377DAB33B503FDBBD786CBBE
            8CBB0EA37D9AD4F986CA6284D4AE00F1067987C074A8AFB19D5B2556D04BDEF9
            CEAB41E9183B3A8DF1F9B033FBC11EA6E0660B5880100E607BA73B4B78B61EFB
            194C6D02D6C9EDDB50F9ADCB60AC5C6216C79BDF2F3E24E96B7EEC88C6E6AD52
            335ADB819F2F9F87D73FFC0E38311F5BB716CC7AE4122901B29BEC836386A82D
            B922AEF8C8C9B70A9078C2D98EEE253863ED5DE84EB7E3FE9DCF32B3215CE2AA
            0264CC39C755807C05A67155F2616C94C76D67C2371CF120157ECA347373942B
            426A5F80781C25E902A810514A83DE75BEE4887C8AFB6933CD7D66663F4E96F4
            5E37AD339B872040882742A62E43CF91D7A3255D957B5EFE8A816A77B552C2F6
            7944D2E17EECC871B14BFF508DC0454F1E8BCF2F6620F5A4092EE80D488A1219
            01F25A980796D3FC280F9FF99DA473F3079745CF41893A0D53457C2CC629EBFE
            EA5CBAEDE9A9F8BF39274903D6A602A46604C8718E00B94BD229BE559CDA80BD
            C11C184F58B503976231527AC7949CE8CC25523F02C4FB8C4E19F8649B4264AE
            ED335022CB39A09136EF2D3ED29E36CB9BFD20AC3FDF91B416C655EFEF421320
            5E8C902EA9BA331F47E6981B9C5DAFEBAF7826844F96CFB651C01180712D1656
            B303CE7AA4A4DCA7CBF8694D17F0E6A75E89BFAC3E5A84488FA41DC6D87CC2B6
            D5BA00A13B45CE00BDD9D792F50F233EF2CE4F0548FC48B8331F8B71EABABB31
            946CC46022E5FCFFE79C935580382F6B4780F0E355306E0595511E90F412DB99
            08040E945AE819ABCDF48AA5527F02C47B45FF34ECD8B824EF24988E58513CE6
            495AE1DC5774BD3B7D76EEECE235C80F50F87DA9581F94FF3B4211201EDD3BE1
            83FBDC84AFEE7B3F0664F7DB872B3276BA1CC618BDDEA08DC3A7ABD901AF448B
            14786B23F0AF2DC0518F4A95D8BC37307595FB6DE1A0A8185605C8AB60EA72D4
            0CCD3D46C547DEF9A90089170963F3E1888FBF3AA2A337D98C86CC0006934D2A
            406A5080482BE8F87857F2918102DE6E3B1381E13DAD75DCF30E95F69BFA1520
            B950A89F0AF3D4FB0898C1A752BFD0209986C9438EC7ABF6E9C6D9C3A80029E6
            BE7605284A32B865F4A3200588FC1F4903DB76C31BF7BF093F3AEC2EECE896DB
            79A46C11C241E8CD6117B065964ADABB9A1DF02AB44A41B788F8B865ED54BCF2
            E10BE57AC89B96CD392E765DA22740A6CB4B7A097C9B4FE519043F93FCBEA1F8
            F9A900890FAEF8E812F1B17E547C24A53D4C65865480D4A60079179F1ADCEA63
            2DAA153E06E39EB536F10635344A6F681A67005E6023A202A47083161811728C
            A4A3619669EC63FB4C95507954D261CE2B8AFAE9B380A676CFFD2E6F140E60E7
            8FF3DB1B255D22694DE03320DC0707BDFD6DB8F2C01FE2927D9E404FAF891152
            8608D9D33D9F7A82DECDFE56C90FBD798DCE56386E08CE78EC1CDCB1FA581940
            49C1A7C759D91B2D01F246495F8471311D55BE2BE91D63CE470548CCC899F958
            7F0F06128DE817C19174DB42152066A35A14209F97D79FF4AB1AD510F4A2F17B
            DB990814BAE3E54DD22E83A674A64070486D49B5B8817FE46667C5510132769F
            F93448DA0B6656E4509801DB2E6E62AC1DDA14C928D0BAABDF4CB1CCFBC81670
            89D1C416B5959296B419C6462B1DD0FEB7BA69B2FDF37B463FFF86F132973491
            CFD38D9E01FA6EF2E1CA49F6C1F3F884FCE0DBCEBBC004084C6736D82422640A
            AE3CF807B8E480C7458100EB06CAB209B91126664E1501856201AFEDDF51A18B
            591A9ACF96D620D10CDCF6DC145CF8ECB958B4E11029E81E1360B0646190F765
            DEBF319F177D5B910039485E5C01E37A39CA70EC7251D1F35101122346673E4E
            59FF570C8BD0E8CD111F440588D9A81605C869304B4A947C3E073390AA5158B1
            1BDD27A3CFE185C9ADF249C6B941924E2C83041E6A9C0BB4EC21F748AB6C3724
            43CA6DE6C9AE0A90E2FB98180A8FA9A048C9A0DDFDACD94DB98339166E374CCC
            8160844AC211071506832909EEBF3FA0FCB3C5EE0E30EF95313468820F4E9D9D
            1B7C9001EBEE28710F7F05ED0C321CF4062440088DD2079B9D3821AFDDFD5EDC
            B0EFEDE8906C6FECCE76C34A1530A239975BB5B799E735172C3E15372C3D49CA
            5FD448EB6653FE99094AD9AE0049C9E6B47589839D8FEB12B9703059787E2A40
            228FE3EDEA993C9B8F64411BA802C46C547B02E4D877555D7F6A929A6EAB58A9
            F9B03E859D8717E3C8913532A26B949B23096FE140323382C6CC0036D3F55DEB
            9E327C9E05F0C19D331B12E4C3F300CFD9AE00A9FA67BE51D375DB12EC10DB67
            8A0869CFB5FFB850D2FF96B9A76FCB0EB82C6B63F6133F0588E3198B0F1D52C6
            3BD6F425F8CD01BFC0CBE7AEC1B0DCDF9B062B76D35BF7B08867349B17BF593B
            1FE7D1BDEEC68380B6E7A550A56033254C08DA1320F4F4C7598FFD6C966189FC
            B79CD6CDF965A202247E24726C3EEEC680088CFE22E283A800311BA900A9176A
            B6AD72673EE404293E0ECFACC316B48CBB75F3C800D218C270A2017F69D85D1A
            0C9A388C60EC6827137171A202244BCDD66D4B70F6A3750A30A5533A9CC1DC6F
            6E00D7A797CF0698E525DF9034E8BB00F1488850EA99ED1CE20D7BFC0DDFDCF7
            3674C8007AAB0891E18C569352A123C18E34D024CDEAAA2EE00D4FBF16F7AF3A
            5ADACADE0243F3124A347C01F2624957221EAB20B8F4F21C19E03C30C6585E05
            48CC481857BB5DCF3806E703C9C671C507510162365201522FD4645B953BF3F1
            8C233EB68AF828653CDC280D40930C54FED4B0A7FC7C9A599295B75FB9915232
            0063E5CB0CC0FE28BBC8B9AB0031D464DDB604EDA69C47DF3B49D56FC85D7E45
            6843704C157B67E4F1CF483DFCD9041928FA72FCEF0A36E292A0E12611223380
            A9CB71EBFE3FC3B973D722D30F6C1AD265591331E446336FA7A99C94D73B9F39
            09DF5B7E9CE8B95613D19C658B2203A389084F80CC97BF1F95F43EDBE5582274
            F6709EA46566605658262A40E24322CFE663D099F9681A577C10152066231520
            F542CDB555DECC4752C4C7221C31B21E5B12A5890FC2A621255B3767C6BAEC4D
            39B623D233A46760696A17F960068C10E9777F1985C2540192250A97A356E072
            AB3611E4AD1D85B31FF47DB4C3A7A3DC03F394FAEEB15F5529403C3858DEC1FB
            7608E7CD7B003FD9FFF78EDBD86D7D329E1E29E85FEA1CB668EC4B3B39712CC5
            79C3AA7DF0AEE5278962DB479AD86E49BD287E93454280D011069706BE17A68E
            C6815BA55C1883A9CFBC5501126B68F3D1F58C888F7B4454344C38F3E1A102C4
            6CA402A45E886D5B951E27F3A6D1DE79E819111F6BB139E16FDF93A0657566C0
            19DE2C4BCFC4624788CC74674A8660BF40558064B17D296A05CFF3155DEFB223
            C9775BCDE12963809CE4E311E995EFCB3006EB5E268ABE1CFFBB892A9FE47FA8
            59867922A63AD6E2B6836EC0593B6FE70A2D6C1C50114238EB31B341CA42C4D9
            135B818F2D391777AC78A971ADDB4C8766AEF3DDA265655580D0010603603228
            E634DBE55806C6D355A26080A3022486240A6C3E9A279DF9F050016236520152
            2FC4AAAD72975625447C647AE08C18C638204A63D6F02A1C95791E9B027AF045
            23F6940C62DA337DF22A83C7D373B1A6717F378B5C9665B3505580648955DD8E
            3059D7BB33CCF2AB4C51C762140C17F87C647AD6BA56D25DBE0A906C7D97FF7D
            D39CE085AF9B7F0FBEBFDF6D68165DD22563ECFE8C7D1FD236A05BDDA9D2BCB2
            1C204DD927161F8F2F3D738689ADD2B6DEDD2AB7832EB6172B0244467CF8008C
            D7A8D9764BB12C5819DF2CE9C763CB450548FC48189B8FEE458EB7AB890CCE8B
            A102C46CA402A45E88455BE5D97430C9E860783D5E9CD9801611208363423064
            D02CE2A03790D009F9784264FA480F9E48ED8CE5CD073B9F66E389D82A2B1520
            8658D4ED18509A00E186E7CB9F6FC1FFB8282240F015497F30871973DC222F4B
            1120301DDF50A3133304AD1B71D9BCBFE0F2BD1ECCF685433208DF3E3C1A3F64
            D0769D0E08AFFB9FDE6ACEF9FA9587E1432B4E00B6ED0A34751B43F3626E75ED
            0B10060F7C2B8CF8D8C9763996C9D37212F4CAF578F1725101122FBC990FCFE0
            BC3CF1415480988D5480D40B916FAB783569D3D1273566038E1ADE80CE4C377A
            130D1872DCB98F1D110C597876392DD38327D33B6145A36D11A202244BE4EB76
            4C285D80F0CF0B619EE6EE1F404E18A9FB3A39CC2F8A1CB7E065890224775B8A
            90A1262CD8F5415C32F7CF484B4FF2C229EBB16BAB09FECEBE87A7EFD42B2FFC
            B77CDE55E0D2975FF58F44C72A6C2298577A029BDD6232FBD066E094A7DE8EAD
            6B1600CDDDEE722B8C7F26F604C83EF29682971DFB54BBA55811ACC3EF9073CA
            8FF5A30224A6E42EBB9ADCDBD578A800311BA900A91722DD56F14A36494D598B
            970CAF44077AD12F62A4170D65DFD8614011F27472273C6B75264405489648D7
            ED18519E00E13F0E67BF23E90D01E568A1BBFF1FC171595AAD00C9FD8D9C679F
            0811DA8964D272CE2B70506B179E1A4C63AF741F2E98F34FB424873090496068
            B00D874C7D0AC74F03B60D8DEE815D2DDDFC66C30D79B03E8E981986ECFB12E1
            A6140ADDAE33329E42B3ECBF2555FE6D36E4FED679AEE3EEFC1FEB81CB97BD0A
            773E7FA8396F47789422244AFEB060938A05C87192283C5E9B730671E36392AE
            2E2A165480C490D1998F5336DC8BC14463C9361F85A800311BA900A91722DB56
            F12A4A2F9E5983970D2F71663BBA51D94D1D26D3323BF0547A272C6B948EDC11
            2161DB84A800C912D9BA1D33CA17201EEF97F4F50073C6780937CA0125E13FF9
            C7AE44801422E73DD02E9D6BDAED20A5428DE4748874EBDB2A23F78E4D8E5E31
            FB968E3639888BE63C88E9E941F4E6345743238D98D1B40DAF9EF9ACD3370D97
            717F70DB4639F44E6DC88E23D00FACEA35E380729822595CD803FC61E3119892
            EE4797E4EB8AC567013D9D723E1B64E0339413D36312C211201CBDBC5A3E6027
            7E6279671B29E86E9AE2E96FA3E7A70224DE24DC381F8B70EAFA7BDC6557958F
            535480988D5480D40B916CABDC998FE1E770C6C862F4269AD08774E4C58747E7
            C80E3CD94011728819BC21CC99101520592259B76348C502C47971384CA0C223
            02CEE5EDE0D2AF0C7E03C77CBA5A019299FC63BAF4A5372DDA90247236A0AD04
            C5C998955E2264527D8EE7ADB21931BF7DF79C47D0961C416B2A83FBBB66E39E
            8D07C840A5BFBC7DB1791D907C77EF24F91E3279E68C477AA0BC6082E36EE69B
            009106D49945A39DC4BCF20B2D52FC50D27BE4A47AF34F5305487CC9151F7F2D
            CBDBD578A800311BA900A917ACB755BC5ABC611B90AD8009A9AC23AB71C6D012
            111F8D223EA2B9E46A223A333BF04472272C6F661FEA454F9FA8B0FD1AADAB00
            C962BD6ED708D50910EF258DC83F14426E5748BA490EF873F9FF48F16CFA2440
            CAFE7DC6CCA00C3757705A19230E06DB46779D12F1D0D053FA6C456ED644C420
            CD7013E3DD24D6048854B2C4D9304BAC5E564141450DC6C879B714C94FC6948D
            0A9018E32DBB7A5AC4C7BD15199C17430588D9480548BD60ADAD4ABB894FE078
            C5BAA546488798E093C36E9C3EBC1CFD5269E3283E3CB81CEBC9F4CE58D178A0
            7B8E45066ECECA0E7E9770454AB5A376152059B41FF6077F0408FF9C0163BB31
            37A49CDF2FE966983825CB46F3624B80C489D005C869925E29E9E588971BDD89
            603C9B0FCAC92E1F2324B22F5580C48F448EB7AB7B2A36382F860A10B3910A90
            7A21F4B64A04865319BBA4067461D7916D6895EA3A3DD38369223706E4BB94BC
            EF17714217BB71151F1EAD9901AC4B76A07B9C062A3D32220D580ACB523B9980
            868E10A1DD48A50318152059B41FF607FF0408FFD063D1D5306BE1C382CB5EEE
            91740B2846329912D640A900A97CB3920508835772B683331D07D83E631FE1D4
            D24530B171303AF029281B15203124577CDCEB8A0FFF6C535580988D5480D40B
            61B555CECC0607D75B64D0BD1D476436613A7638C6E5ECAC0744700C387135E2
            DF7517D29C199AB0814AC9194B0DC5B2F40C2C4EED9C2344265A22311E2A40B2
            683FEC0FFE0A10F77DE63CF97B0DC25FDB4FF74E0FC088913B25AD9CF05C4AFC
            B88A0D234A200284EB6C5F0A33DB71AEA4BD6D9F6500DC0DC624492416E69587
            0A901A2077D9D57D551B9C17430588D9480548BD10685BC54AC5190F5E91ADD8
            73782DF61CD98C46911D3D8E6D47AA2EA30D17C2E68B22A43D63FC73AE4C76E2
            A9C679526CD35D11520E2A40B2683FEC0FC10810FE6D97F42538C6B956E00DF7
            2F497F8211238FB99F4105886F028481024F85719F7BA6A45D6C9F59406C9774
            21CC12C3B1034515203127E11A9C3FE5CC7C0C259BD1EBB3F8202A40CC462A40
            EA8540DA2A2F7239673DB662DF91D5D83DB3C5891A4E57BAC335B0B42A081859
            9DE5C278229C19BAB3E950B96F674B19F696B117152059B41FF687E004880707
            A7D7C20431B4C90A98A55AF74906E92AF599F14EB18442B37C2AD552B1009929
            1F321012ED7D8E94743CB2A38F9AE587922E91B47AB45C5480D40EEECCC7F6A7
            71EA867B7DF176351E2A40CC462A40EA8520DA2A67B955BF54CAF5382EF33CA6
            A01F5BD1EC2C335226874284B6236CE0FEDC7448992244054816AD6EFE10BC00
            F1BEE3BAF94F4AEAB07DCA2E0FC1CC8A70590D97D43CEAAC962CADD06CE7BD4A
            4A1620BBC244BD3F1646401E05C793555DC0B81E174A21DC36B65C5480D4042C
            DFB437F3719FAF06E7C5500162365201522FF8DA5625E179B13A72E819CCC96C
            47B713C323BE9EAC6C4111D226224EAAB32B42E648B9F694F04B152059B41FF6
            87F00408D95D5E7E56FEFF8FEDD32E0245C862383324CEECC81392964F5816B1
            A5E8CDC308F72F90B4178CE0A07BBF0592A6D8CE6DC874814B07138E3385BEA2
            65A502A40648046EF351880A10B3910A907AC1B7B68A15ACD1895C7EE2F04AA4
            A50AC621727994C99F0939581AA45DDCC19F1B95996E7DB383C16C286615201E
            DA0FFB43B802C47B7996A4CB6096F144154E4BD2BDEF5249FF765FF3A9F833CE
            DAD3F8C251C39E30331BBB493A144678D07DF2AEB63367999F4ABA185CAE574C
            54643F5201126F12599B8F53447C0C86203E880A10B3910A907AC197B6CA8D5C
            9E598533879F955EB95192CE7AF80145480B06445E24715F7A37F7861C3183C0
            64BB247A35959B37D1E27E3E5830B85301A254891D01E2BDA1BBDE4B6106C271
            81E2631DCC2CC9B3929E87992959236995FBFD368BF96324442E73A3A0A091F8
            1EEE6BFEA767AA7930B1386ADD76A31CEE95F419B911EECE7EA202A446491404
            190CCEE6A310152066231520F542596D95675C9E2AD801A3FBAEC0599965E812
            2132E018532B7E4111D28021B466FA736ED111F44959F7251A459C24F0AF34E3
            8874CA17AD70023C3A410D87C6EE4C0588522E760508FFD05BD6C7DCD462BB38
            AA8427D42DE939491B256D72D376F73D675536B8DBF2730A152F6A2BB7D992B3
            2F36C673DCD71C1D25DDF7ACF9D36196464D77CBAFD37D3DC74DB4D368B45D18
            31E03F7084077E65DE160A8882CFB21FA9008927A3331FA78BF8E8F329C279A9
            A800311BA900A9174A6AAB3CE1C1D423956D1D7645BFBC6249271DBF56076636
            61505EABF80807CF752F8336A6A57EA7E51AF4251AB02ED18145A969F2A50892
            44B31BD43067C0A802442917FB02C4637730C602F02198C6485182821EADBE28
            E99BC86B405580D42EF6663E3C5480988D5480D40B93B655ECE7F9F04D844766
            038E19DE8069991D1849D03CDA5D0E24FFBB653B3E8957F1610F0A9296CC80E3
            EE7843622A56A7A660ADB36C8BB32223468CA80051CA253A02C4635F8C643E28
            FFDF0915228ABF50785C27038DEB61669C0A5001529B244237382F860A10B391
            0A907A61DCB62A47780C6FC45199F598861DE843A37AB58A389EDD487366109B
            13ED782ED581559C116160C3112ECB2A589AA502449988E80910A9C7CEE7FB48
            FA882436EE7AB5956A5829E9EB926E00854772BCEAA402A4F618151F611A9C17
            430588D9480548BD30A6AD12D19168302E5F873788F05827C2A3CF111D2A3CE2
            05AF5433869D59111AB13F94DE059B52F3E4FA369A382DD965E36EE3E00C0AF9
            190798B9154305485D135D01E2416F4D9C11792B8C81B5A294CAD39238DBC108
            E67DD94F5580D40909D7E663214E5D7FBFB5990F0F152066231520F582534685
            361E467874A257DE71C623A54BAB62CCA811FB20B6265A8DC17A72AE1122EC73
            873DBBD626233E3D8F5A9E4B5F360E1C848286ED65D4041520B541F40588B72D
            6D44D8D0D373D66CDBC5A6449AFF93F40D493F2EDA50444E80C0B4CDA9066407
            9279DBAB00291B965D4AFAC0AD4FE0D40DF759B1F928440588D9A8460548B9C3
            E8522A6229FB2CB5425732CC2FE766498EFD6DC29BF1D8E1DA78ACC7B44C2F7A
            6570DAAF5E186B8E6669E09A44483C959C830DA936EC3ABC1DBB8D6CC5907333
            26B005CD78363515534706B09A2E7E936DC6768406ED89B69CC16702639EC6E5
            91318DE7B84CF2DB8AC9D96F7202F3800C97A1F9D1D124CCFDE317196F895C6A
            E2FD66B72BB5CDE0B93698FB7DBCF21D6F9FF11120DE3F7A7FE26CC8DB251D52
            620129F5C16F41C3F204FE34FA518405488A0F8552E6FE1BDC26F5BE17E8DB80
            3D86B6491F3DB67DC8A8002919F6796969CB0EEC5EE6BCB72D3E880A10B3510D
            0A103A4F29A772B140D2EE6F0A0752E99CEF0A97AB14EE23E96ECBEDC61BF478
            DE1027DA57B17D73DB94FB3FE3E6B3D8FE99870677FF999C63F0C2F7BBC2834B
            AD7A9D181E2A3C6A1F0638E4AC08FFF6398352039DFA36674C7D1F900E8E9ECD
            1AA591DE9C68C573A976A447E47BA9632BA5911C48D0AB67B1FAE6D5FB4E8CD6
            4B8F949B86C7F99D57A7CB15080D39BFF396926D1F675BC64D6997D464F299F1
            EECD7248B84BD9E477996DEEF1AAEDF899AF2966068A4BE432DB26D88EF96F75
            DD2D0F4FB2DFB4111E232C8F1E140FEF30C13EE32740723917468C9C5BD6A550
            6A09BA37FE85A41F487AD8F924EF568DA00049B6987B76709DDC8A3D68EBDF8C
            03FA9FC794C12E24E57EE440754485469598FEA637D52A62246D5D7C10152066
            A39A1320FB1C7D1ACA79B2DA24039227391848D2653ABD0879CB4FB8D31D5231
            D891F7E1A0CC5619B0A78BEE8383B9CDB2A7B5890EF92997264F71F7C1C1CE30
            8CF0E0FBED9833B21633337DE3EEAB10DE2C5C5AB324310D5991939CE2EE93E7
            D9EF7ECEF772638D6CC4DE998D4E84F221EF42CB05E06CC7AC4C9733E3A1361E
            4A2E09F77E11F9EED4E546E709B9B9A9D8C064C6990131FED132F8736A2E4612
            3BC1DC3FACEFAC77F4C4B51E078C6C964F5279B52DE9365B8B928C67C215348D
            66FB09EB64A3C953663358E7779641F634F90D7FB18BD46B7A06CB8C698E32D8
            986843B7DC9B4B18CC91F710EF1D67603DD1AC8DF9B5111E23CE31F715E1BEBB
            1BF43A53E58080A5B146DA9C2793B3316F648BDCAF9B8BEE97DB31FF0FB36D4A
            CE72F353AC9C5CE191E94172643D8E92BC76C876438964D1636F14F131BACFA6
            5121126F01E27D77A07CFE1679F13A6834EF7AE15F927E22B7CF4D5281D7E77D
            133901E20EC01ADACD67FD1B30BBE7591CD0B3020D23034E9B359468407FD2EB
            DF557CD4222A40CC463527404E3DFAC8B22B03632B6C47331E48B053E640AA5F
            0606CFC9C0663B3A64B89EC90E9926A65186FCDDF2771BDAF058829D3807577C
            626B84C781220C2878862A987948BAB9A070D92203BDA745ECF425294ABCA7CF
            1BB0FFF07AECE106DE1D2E302EE6315578287EC30EB3436A6597DC3F7FA70849
            CD729EE8BF70F839CC90BB61789CBA6E24FE30D68A587F2C25F75D6296BB4490
            03ECDCE5418DE606977DEE31B45606EB9BD0941814E961043C07ED7DF27ABC47
            0EBCDF5232B0A6B0EA96C1F6E3A999D8CA7B9C0F0BC608111375C5D8CCC8EB61
            111E23CF63FEC856A7C1DB217BF1CBDC85F96A90E30F4BE3D83B8187D916D9AE
            5104C2BA648788869D0A8448627459E58899DD9C9AE9C50EF97E60027B2E1EBB
            394317CE6DF837CB9EED14F739D26F3A88780B10EF73AAE157487AADA4B3FDB8
            664AA460F0C6DFC0B1EDC07DCE2745671AC67D63085B80A4283CA482F6AEC4CC
            81F538B867399A86FBD0936A95B680ED80F6CFF5800A10B351CD0990971C7D4C
            D99581330CCD3210E19AF94D221EF8BF43BA70BAA21D28C35EC318010F3B1D3C
            073CCF8808795EFAC123326BE5EFA00C60B8E754C522C00B4AC77DB7C89E282A
            1E11D1C4E1D7023906254A977CEBF93C529430F0EE9F4647C837A25D5E5318F4
            9630CBC7FB222D35796D622A1E7506C214ED9EFD82111EBB8B78DF47C47BA308
            89ED4E44F8F2EF21CF40BF3DD3EF0CD01F4FCDC656E78143876B13313C2A3C46
            36E300CE788C6C76F2D095B07F4F65858808A7871D57CBB34D9E452019E1D157
            F6EC26F7D924FB5CEBEC932270A6591232B5C35DED399EDC8A8500C9FD8C6E7C
            CF93F41A4987557D31145BF069C19D926E86233E12F96B2F232B403266A69176
            1E3B9663F7FE3538A06799736FEC48B545665990121E2A40CC462A400AE0F086
            85EA47A46F76F01C5CF538C2C3DFE07D9E1869739FE076ABF050220097FE0D3B
            F322E52D1DA010E1D2AFB589293218E6CA9966EC3AF29C111E9CBD907BC88F00
            98BC4778A7B43942A4098FA466A22BB9331C9B08111CFB0D3F873D46B8D42A81
            EE08088F31E5248281426A7572BA7462C3CE2C6D8F3BE351292D9941E7A10997
            85AD4AB46373E702A061AA7436DD28BE0424760224F7CD51303323B415D9AFE2
            4253C2E46F926E9174ABA465A31F17131B4109108A083AE84821AF3EE50E08B3
            CE1D72975B25CC0093DF752FC6CBB619D394EDE90E201BE057A9375480988D54
            80288A12195A9DD913383385CDD299F73A738AC1AC83A658E28CC80619746F12
            01323FB3D911F5DD596711D1A5C91DE8F8E94882FB9C32D283D50DB3F050E7F1
            D297B48E1521CE00CC1D34397D494E380E2ED91AEE43C405482E2748FECE91FF
            341C542F5AD1816BFFEE9774BB74EEF462F59FE29B85244038004BC920B16F3D
            F6EA5D8CC1845992DD2483C8A50D3345AC33F0EB00D0D829DBB598FBC0F33AC9
            C149CFB338B26B213A87B6A227D922BFD7198F7A470588D9480588A22891C218
            B72330E1918B17C49162A4D759CC18FC31A30C97AA4D1DDE8ECDE9E97870E609
            EEE06A30FBAD6327E20CB052E67FDF06384F7D69C04E57CE4D734C67E26C37E4
            DA91E4DBA3157B694980E40AA417493A131425C089560ABFBE619022233A807B
            252D723E9DD005B8DF02C41D687129A63720721C33481DE9598AE3762C42BB08
            F4A18419642533705ED38E8B76666B1BA73B02A355EAFE938DB3E45E980D0C6C
            C5495D8F3BB3953B28E815052A40BC8D5480288AA228598C08E99201D54C3CD6
            BAB711128EA818C021FDCFCBB7C38EFD199FE2CE1AD8E20CAEE824834F769F6A
            D91DCF73F045E1929E22BF1936310DF296A58C7D19010192CB9E924E9274ACA4
            5324CDB57019EA81476044C71D921E8471A39B4F5802843379F406373C000C6E
            744576022DC3BDD875A40B7BF63D8FFE245D99178B2161965A358F7021E4B073
            FFE42EADEA97DFA89D87928B0A10B3910A10455114250FC7B140A61F4D9CC970
            1B5E271A52A221EB1CD471029E34119BB93D075FED3260E3765DA9763CD7D889
            95ED0748072B6264683BC60881E80A905CB8C6EC207099562643178B2F81465F
            AF044E85AD94749774D88C4E7E37F2EC39C621700122032619084284F441BD4F
            A063A80F1D233B9C198D9184B165A3D38BBE64F497652AF1410588D9480588A2
            288AE22B0DD2C1B60FF7604BBA030FB4C9F8BD659EF4047DF9AE7DE321400AB7
            A5E2A2272D2ED97AB1A42360664C9A822DD1D8C1D98C67615CE42E74FF2F75BE
            99505414109800916B4951C165513B9EC2A9DD4F385F3B415913A5C5E852944A
            510162365201A2288AA2F80E67455A477AD132D287DB3B5E00B41F2C1FF699E8
            EF6CB8B363FFC468E7E508949CA52AD11320C5A0009193C3BE3033247B48DA1F
            7484581FAC85111B1418F458B55CD2BF256D2EBA75140408BD500D6DC71E3D4F
            62DFFEB5223A52223E547828E1A002C46CA4024451144509081AE8D2C5F20056
            36ED8CC5ED874887DB6E8408573739B62583667664588449BA154ECC0442A132
            4C31526CCD3DA224408A315FD2EE92F696B4C07DCD44B13235B8F20E94D59256
            485A236989A4C76096553D83F1C44631AC0A90A489C731B8190B7AFE83DD0636
            604BAAA3A2D8428A52292A40CC462A401445519400493A2BE9A70C77635D7A26
            1E9EFE22389E86FA9E07C5C12C190CEE36B8C58903B35D3AE385746D4A8F5A8D
            D3E1AC78A23BD3E19E9CFDC542808CF7FB9D24C90982C16E2852385B324BD22E
            30B625B3DCFF612EE962C668A4B30E26C2386734E8DE8C4283A263A9FB1DDF77
            9525208A614580B84BAE68EFD1F32C5EB6E3512704EA8E64B30A0F2574548098
            8D5480288AA22881639664F5A147067D3DA926111E5BD19019C4200DDB13F4AD
            95743C6A353A9FA5D1956A936D9BF044F39E321C9F6B664946864677184F0132
            19141E9C21A1CFD6193062A5CDFDCF2EAFD3FD0EEEFB86898E08133DDC3B305D
            DD52C9D12D19672CB6BBFF37BA9F6D432991F1622740E4F4531DCE8CDADE5D0F
            63CF81E71DCF54FD52EF547C283650016236AA2501F2FF461F1FECEF484F1600
            00000049454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 491.338900000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 185.196970000000000000
          Top = 22.677180000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'AVENIDA AFONSO PENA 5000 - BELO HORIZONTE - MG')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'P'#193'GINA : [Page]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 71.811070000000000000
        Top = 359.055350000000000000
        Width = 718.110700000000000000
        DataSet = rel_DS_Prod
        DataSetName = 'DS_Produtos'
        RowCount = 0
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Top = 7.559060000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 7.559060000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 313.700990000000000000
          Top = 7.559060000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 400.630180000000000000
          Top = 7.559060000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 510.236550000000000000
          Top = 7.559060000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data:')
          ParentFont = False
        end
        object DS_Produtosnome: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 30.236240000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'nome'
          DataSet = rel_DS_Prod
          DataSetName = 'DS_Produtos'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DS_Produtos."nome"]')
        end
        object DS_Produtosdescricao: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 124.724490000000000000
          Top = 30.236240000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DataField = 'descricao'
          DataSet = rel_DS_Prod
          DataSetName = 'DS_Produtos'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DS_Produtos."descricao"]')
        end
        object DS_Produtosvalor: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 298.582870000000000000
          Top = 30.236240000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'valor'
          DataSet = rel_DS_Prod
          DataSetName = 'DS_Produtos'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DS_Produtos."valor"]')
        end
        object DS_Produtosestoque: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 30.236240000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'estoque'
          DataSet = rel_DS_Prod
          DataSetName = 'DS_Produtos'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DS_Produtos."estoque"]')
        end
        object DS_Produtosdata: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 502.677490000000000000
          Top = 30.236240000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'data'
          DataSet = rel_DS_Prod
          DataSetName = 'DS_Produtos'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DS_Produtos."data"]')
        end
        object Picture2: TfrxPictureView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 45.354360000000000000
          DataField = 'imagem'
          DataSet = rel_DS_Prod
          DataSetName = 'DS_Produtos'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 83.149660000000000000
        Top = 253.228510000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 15.118120000000000000
          Width = 275.905690000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RELAT'#211'RIO DE PRODUTOS')
          ParentFont = False
        end
      end
    end
  end
  object rel_DS_Prod: TfrxDBDataset
    UserName = 'DS_Produtos'
    CloseDataSource = False
    DataSet = query_produtos
    BCDToCurrency = False
    Left = 728
    Top = 496
  end
  object query_caixa_Coringa: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from caixa')
    Left = 464
    Top = 320
    object query_caixa_CoringaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object query_caixa_CoringaDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
      Origin = 'DATA_ABERTURA'
      Required = True
    end
    object query_caixa_CoringaHORA_ABERTURA: TTimeField
      FieldName = 'HORA_ABERTURA'
      Origin = 'HORA_ABERTURA'
      Required = True
    end
    object query_caixa_CoringaVALOR_ABERTURA: TFMTBCDField
      FieldName = 'VALOR_ABERTURA'
      Origin = 'VALOR_ABERTURA'
      Required = True
      Precision = 18
      Size = 2
    end
    object query_caixa_CoringaFUNCIONARIO_ABERTURA: TWideStringField
      FieldName = 'FUNCIONARIO_ABERTURA'
      Origin = 'FUNCIONARIO_ABERTURA'
      Required = True
      Size = 25
    end
    object query_caixa_CoringaDATA_FECHAMENTO: TDateField
      FieldName = 'DATA_FECHAMENTO'
      Origin = 'DATA_FECHAMENTO'
    end
    object query_caixa_CoringaHORA_FECHAMENTO: TTimeField
      FieldName = 'HORA_FECHAMENTO'
      Origin = 'HORA_FECHAMENTO'
    end
    object query_caixa_CoringaVALOR_FECHAMENTO: TFMTBCDField
      FieldName = 'VALOR_FECHAMENTO'
      Origin = 'VALOR_FECHAMENTO'
      Precision = 18
      Size = 2
    end
    object query_caixa_CoringaVALOR_VENDIDO: TFMTBCDField
      FieldName = 'VALOR_VENDIDO'
      Origin = 'VALOR_VENDIDO'
      Precision = 18
      Size = 2
    end
    object query_caixa_CoringaVALOR_QUEBRA: TFMTBCDField
      FieldName = 'VALOR_QUEBRA'
      Origin = 'VALOR_QUEBRA'
      Precision = 18
      Size = 2
    end
    object query_caixa_CoringaFUNCIONARIO_FECHAMENTO: TWideStringField
      FieldName = 'FUNCIONARIO_FECHAMENTO'
      Origin = 'FUNCIONARIO_FECHAMENTO'
      Size = 25
    end
    object query_caixa_CoringaNUM_CAIXA: TIntegerField
      FieldName = 'NUM_CAIXA'
      Origin = 'NUM_CAIXA'
      Required = True
    end
    object query_caixa_CoringaOPERADOR: TWideStringField
      FieldName = 'OPERADOR'
      Origin = 'OPERADOR'
      Required = True
      Size = 25
    end
    object query_caixa_CoringaSTATUS: TWideStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Required = True
      Size = 10
    end
  end
  object DSCaixaCoringa: TDataSource
    DataSet = query_caixa_Coringa
    Left = 560
    Top = 320
  end
  object rel_vendas: TfrxReport
    Version = '6.7.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43651.788638020800000000
    ReportOptions.LastChange = 43651.829072893520000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 32
    Top = 552
    Datasets = <
      item
        DataSet = rel_DS_Vendas
        DataSetName = 'DSVendas'
      end>
    Variables = <
      item
        Name = ' Datas'
        Value = Null
      end
      item
        Name = 'dataInicial'
        Value = ''
      end
      item
        Name = 'dataFinal'
        Value = ''
      end
      item
        Name = 'status'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      BackPicture.Data = {
        0A544A504547496D616765C9890000FFD8FFE106BA4578696600004D4D002A00
        0000080007011200030000000100010000011A00050000000100000062011B00
        05000000010000006A0128000300000001000200000131000200000022000000
        720132000200000014000000948769000400000001000000A8000000D4000AFC
        8000002710000AFC800000271041646F62652050686F746F73686F7020434320
        32303137202857696E646F77732900323031393A30333A31322031363A31373A
        3232000003A001000300000001FFFF0000A00200040000000100000253A00300
        04000000010000034A0000000000000006010300030000000100060000011A00
        050000000100000122011B0005000000010000012A0128000300000001000200
        0002010004000000010000013202020004000000010000058000000000000000
        48000000010000004800000001FFD8FFED000C41646F62655F434D0002FFEE00
        0E41646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B
        11150F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E
        0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800A0007103012200
        021101031101FFDD00040008FFC4013F00000105010101010101000000000000
        00030001020405060708090A0B01000105010101010101000000000000000100
        02030405060708090A0B1000010401030204020507060805030C330100021103
        04211231054151611322718132061491A1B14223241552C16233347282D14307
        259253F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3
        D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6
        37475767778797A7B7C7D7E7F711000202010204040304050607070605350100
        021103213112044151617122130532819114A1B14223C152D1F0332462E17282
        92435315637334F1250616A2B283072635C2D2449354A317644555367465E2F2
        B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6
        E6F62737475767778797A7B7C7FFDA000C03010002110311003F00F414924948
        85249249294924924A5249249294924924A5249249294A8F52E6AFED7FDF55E5
        47A97357F6BFEFA90534D24924E43FFFD0F4AFB11FF49FF47FF324BEC47F7C7D
        DFED56924788A1ABF623FE907DDFED4DF623FE907DDFED56924ACA9ABF623FE9
        07DDFED4BEC47FD20FBBFDAAD249595357EC47FD20FBBFDA97D88FFA4FFA3FED
        569246CA9ABF623FE907DDFED4FF00623FE907DDFED565242CA9ADF623FBE3EE
        FF00CC92FB11FDFF00C3FF00325653A5654D5FB11FF49FF47FF32599D669F49D
        47BB76E0FED1C6C5BAB1FAFF00D2C7F83FFF0045A3126D45CA492494887FFFD1
        F530653A82903292174C9D2492B249248A1492499252E92694A5252E92694A52
        53258FD7FE963FC1FF00F7C5AFB96475F3EEC7F83FFEF88C770A72924925221F
        FFD2F538F24BE497C928F2450BA49BE49D05293274924AC924922858CA5253A6
        D5252B54B54B5F14B5F1494AD564F5F9DD8F3E0FFF00BE2D6D7C564F5EFA58FF
        0007FF00DF118EEA72924925221FFFD3F52DC96E5182941450CB725B9460A509
        2996E4B728A492996E4A5452494CA5295149252E9264A1252EB27AF7D2C7F83F
        FEF8B5564F5DFA58FF0007FF00DF118EEA73124925221FFFD4F5191E0948F04C
        92285E4782523C1324929791E0948F04C924A5E4782523C1324929791E0948F0
        4C924A5F4F04A4782649252F23C164F5EFA58FF07FFDF16AACAEBBF4B1FE0FFF
        00BE231DD4E5A4924A443FFFD5F50493A48A16493A49296493A49296493A4929
        6493A49296493A49296595D77E963FC1FF00F7C5ACB27AF7D2C7F83FFEF88C77
        539692492910FF00FFD6F53D12D132708A15A7825ED48A8A4A652D4B44C02749
        4AD12D3C1327494A81E09E0264E82950128092492550163F5FFA58FF0007FF00
        DF16C2C7EBFF004B1FE0FF00FBE231DC20B9492492950FFFD7F5209D249142C9
        25AF9A7494A4C927494A4E9248294924924A5249249254B1FAFF00D2C7F83FFE
        F8B6163F5FFA58FF0007FF00DF118EE145CA492494AB5FFFD0F5320A6DA567EF
        B3F7DDF794B7D9FBEEFBCA7521D18849676FB3F7DDF794B7D9FBEEFBCA5C2A74
        613ACDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF77DE5
        2E153A492CDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF
        77DE52E153A4B1FAFF00D2C7F83FFEF88DBECFDF77DE551EA6E71356E24E8EE4
        CFEEA206AA69249249E87FFFD9FFED0F1A50686F746F73686F7020332E300038
        42494D0425000000000010000000000000000000000000000000003842494D04
        3A000000000125000000100000000100000000000B7072696E744F7574707574
        000000050000000050737453626F6F6C0100000000496E7465656E756D000000
        00496E746500000000436C726D0000000F7072696E745369787465656E426974
        626F6F6C000000000B7072696E7465724E616D65544558540000001700480050
        0020004400650073006B006A0065007400200033003500310030002000730065
        007200690065007300000000000F7072696E7450726F6F6653657475704F626A
        63000000160043006F006E00660069006700750072006100E700E3006F002000
        640065002000500072006F0076006100000000000A70726F6F66536574757000
        00000100000000426C746E656E756D0000000C6275696C74696E50726F6F6600
        00000970726F6F66434D594B003842494D043B00000000022D00000010000000
        010000000000127072696E744F75747075744F7074696F6E7300000017000000
        004370746E626F6F6C0000000000436C6272626F6F6C00000000005267734D62
        6F6F6C000000000043726E43626F6F6C0000000000436E7443626F6F6C000000
        00004C626C73626F6F6C00000000004E677476626F6F6C0000000000456D6C44
        626F6F6C0000000000496E7472626F6F6C000000000042636B674F626A630000
        000100000000000052474243000000030000000052642020646F7562406FE000
        000000000000000047726E20646F7562406FE0000000000000000000426C2020
        646F7562406FE000000000000000000042726454556E744623526C7400000000
        0000000000000000426C6420556E744623526C74000000000000000000000000
        52736C74556E74462350786C40520000000000000000000A766563746F724461
        7461626F6F6C010000000050675073656E756D00000000506750730000000050
        675043000000004C656674556E744623526C7400000000000000000000000054
        6F7020556E744623526C7400000000000000000000000053636C20556E744623
        50726340590000000000000000001063726F705768656E5072696E74696E6762
        6F6F6C000000000E63726F7052656374426F74746F6D6C6F6E67000000000000
        000C63726F70526563744C6566746C6F6E67000000000000000D63726F705265
        637452696768746C6F6E67000000000000000B63726F7052656374546F706C6F
        6E6700000000003842494D03ED00000000001000480000000100020048000000
        0100023842494D042600000000000E000000000000000000003F800000384249
        4D040D0000000000040000005A3842494D04190000000000040000001E384249
        4D03F3000000000009000000000000000001003842494D271000000000000A00
        0100000000000000023842494D03F5000000000048002F66660001006C666600
        06000000000001002F6666000100A1999A000600000000000100320000000100
        5A00000006000000000001003500000001002D00000006000000000001384249
        4D03F80000000000700000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800003842494D040000
        000000000200023842494D04020000000000060000000000003842494D043000
        0000000003010101003842494D042D0000000000060001000000033842494D04
        08000000000010000000010000024000000240000000003842494D041E000000
        000004000000003842494D041A00000000035900000006000000000000000000
        00034A000002530000001200460055004E0044004F002000520045004C004100
        54004F00520049004F0020004100340000000100000000000000000000000000
        000000000000010000000000000000000002530000034A000000000000000000
        0000000000000001000000000000000000000000000000000000001000000001
        0000000000006E756C6C0000000200000006626F756E64734F626A6300000001
        000000000000526374310000000400000000546F70206C6F6E67000000000000
        00004C6566746C6F6E67000000000000000042746F6D6C6F6E670000034A0000
        0000526768746C6F6E670000025300000006736C69636573566C4C7300000001
        4F626A6300000001000000000005736C6963650000001200000007736C696365
        49446C6F6E67000000000000000767726F757049446C6F6E6700000000000000
        066F726967696E656E756D0000000C45536C6963654F726967696E0000000D61
        75746F47656E6572617465640000000054797065656E756D0000000A45536C69
        63655479706500000000496D672000000006626F756E64734F626A6300000001
        000000000000526374310000000400000000546F70206C6F6E67000000000000
        00004C6566746C6F6E67000000000000000042746F6D6C6F6E670000034A0000
        0000526768746C6F6E67000002530000000375726C5445585400000001000000
        0000006E756C6C54455854000000010000000000004D73676554455854000000
        01000000000006616C74546167544558540000000100000000000E63656C6C54
        657874497348544D4C626F6F6C010000000863656C6C54657874544558540000
        0001000000000009686F727A416C69676E656E756D0000000F45536C69636548
        6F727A416C69676E0000000764656661756C740000000976657274416C69676E
        656E756D0000000F45536C69636556657274416C69676E000000076465666175
        6C740000000B6267436F6C6F7254797065656E756D0000001145536C69636542
        47436F6C6F7254797065000000004E6F6E6500000009746F704F75747365746C
        6F6E67000000000000000A6C6566744F75747365746C6F6E6700000000000000
        0C626F74746F6D4F75747365746C6F6E67000000000000000B72696768744F75
        747365746C6F6E6700000000003842494D042800000000000C000000023FF000
        00000000003842494D041100000000000101003842494D041400000000000400
        0000083842494D040C00000000059C0000000100000071000000A00000015400
        00D4800000058000180001FFD8FFED000C41646F62655F434D0002FFEE000E41
        646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B1115
        0F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14
        140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800A00071030122000211
        01031101FFDD00040008FFC4013F000001050101010101010000000000000003
        0001020405060708090A0B010001050101010101010000000000000001000203
        0405060708090A0B1000010401030204020507060805030C3301000211030421
        1231054151611322718132061491A1B14223241552C16233347282D143072592
        53F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3D375
        E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F63747
        5767778797A7B7C7D7E7F7110002020102040403040506070706053501000211
        03213112044151617122130532819114A1B14223C152D1F0332462E172829243
        5315637334F1250616A2B283072635C2D2449354A317644555367465E2F2B384
        C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6
        2737475767778797A7B7C7FFDA000C03010002110311003F00F4149249488524
        9249294924924A5249249294924924A5249249294A8F52E6AFED7FDF55E547A9
        7357F6BFEFA90534D24924E43FFFD0F4AFB11FF49FF47FF324BEC47F7C7DDFED
        56924788A1ABF623FE907DDFED4DF623FE907DDFED56924ACA9ABF623FE907DD
        FED4BEC47FD20FBBFDAAD249595357EC47FD20FBBFDA97D88FFA4FFA3FED5692
        46CA9ABF623FE907DDFED4FF00623FE907DDFED565242CA9ADF623FBE3EEFF00
        CC92FB11FDFF00C3FF00325653A5654D5FB11FF49FF47FF32599D669F49D47BB
        76E0FED1C6C5BAB1FAFF00D2C7F83FFF0045A3126D45CA492494887FFFD1F530
        653A82903292174C9D2492B249248A1492499252E92694A5252E92694A525325
        8FD7FE963FC1FF00F7C5AFB96475F3EEC7F83FFEF88C770A72924925221FFFD2
        F538F24BE497C928F2450BA49BE49D05293274924AC924922858CA5253A6D525
        2B54B54B5F14B5F1494AD564F5F9DD8F3E0FFF00BE2D6D7C564F5EFA58FF0007
        FF00DF118EEA72924925221FFFD3F52DC96E5182941450CB725B9460A5092996
        E4B728A492996E4A5452494CA5295149252E9264A1252EB27AF7D2C7F83FFEF8
        B5564F5DFA58FF0007FF00DF118EEA73124925221FFFD4F5191E0948F04C9228
        5E4782523C1324929791E0948F04C924A5E4782523C1324929791E0948F04C92
        4A5F4F04A4782649252F23C164F5EFA58FF07FFDF16AACAEBBF4B1FE0FFF00BE
        231DD4E5A4924A443FFFD5F50493A48A16493A49296493A49296493A49296493
        A49296493A49296595D77E963FC1FF00F7C5ACB27AF7D2C7F83FFEF88C775396
        92492910FF00FFD6F53D12D132708A15A7825ED48A8A4A652D4B44C027494AD1
        2D3C1327494A81E09E0264E82950128092492550163F5FFA58FF0007FF00DF16
        C2C7EBFF004B1FE0FF00FBE231DC20B9492492950FFFD7F5209D249142C925AF
        9A7494A4C927494A4E9248294924924A5249249254B1FAFF00D2C7F83FFEF8B6
        163F5FFA58FF0007FF00DF118EE145CA492494AB5FFFD0F5320A6DA567EFB3F7
        DDF794B7D9FBEEFBCA7521D18849676FB3F7DDF794B7D9FBEEFBCA5C2A74613A
        CDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF77DE52E15
        3A492CDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF77DE
        52E153A4B1FAFF00D2C7F83FFEF88DBECFDF77DE551EA6E71356E24E8EE4CFEE
        A206AA69249249E87FFFD93842494D042100000000005D00000001010000000F
        00410064006F00620065002000500068006F0074006F00730068006F00700000
        001700410064006F00620065002000500068006F0074006F00730068006F0070
        0020004300430020003200300031003700000001003842494D04060000000000
        070007010100010100FFE1120D687474703A2F2F6E732E61646F62652E636F6D
        2F7861702F312E302F003C3F787061636B657420626567696E3D22EFBBBF2220
        69643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E20
        3C783A786D706D65746120786D6C6E733A783D2261646F62653A6E733A6D6574
        612F2220783A786D70746B3D2241646F626520584D5020436F726520352E362D
        633133382037392E3135393832342C20323031362F30392F31342D30313A3039
        3A30312020202020202020223E203C7264663A52444620786D6C6E733A726466
        3D22687474703A2F2F7777772E77332E6F72672F313939392F30322F32322D72
        64662D73796E7461782D6E7323223E203C7264663A4465736372697074696F6E
        207264663A61626F75743D222220786D6C6E733A786D703D22687474703A2F2F
        6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C6E733A64633D
        22687474703A2F2F7075726C2E6F72672F64632F656C656D656E74732F312E31
        2F2220786D6C6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E
        636F6D2F7861702F312E302F6D6D2F2220786D6C6E733A73744576743D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F
        5265736F757263654576656E74232220786D6C6E733A73745265663D22687474
        703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F52
        65736F75726365526566232220786D6C6E733A70686F746F73686F703D226874
        74703A2F2F6E732E61646F62652E636F6D2F70686F746F73686F702F312E302F
        2220786D703A43726561746F72546F6F6C3D2241646F62652050686F746F7368
        6F702043432032303137202857696E646F7773292220786D703A437265617465
        446174653D22323031392D30332D31325431363A31303A35392D30333A303022
        20786D703A4D65746164617461446174653D22323031392D30332D3132543136
        3A31373A32322D30333A30302220786D703A4D6F64696679446174653D223230
        31392D30332D31325431363A31373A32322D30333A3030222064633A666F726D
        61743D22696D6167652F6A7065672220786D704D4D3A496E7374616E63654944
        3D22786D702E6969643A62363966383932382D393063382D383934352D613530
        312D3862613432396534356232312220786D704D4D3A446F63756D656E744944
        3D2261646F62653A646F6369643A70686F746F73686F703A3665626435353434
        2D343466622D313165392D613635342D6335636565343334373364662220786D
        704D4D3A4F726967696E616C446F63756D656E7449443D22786D702E6469643A
        34316464636231302D613935342D373234322D616633642D6635663335396264
        66626233222070686F746F73686F703A436F6C6F724D6F64653D2233223E203C
        786D704D4D3A486973746F72793E203C7264663A5365713E203C7264663A6C69
        2073744576743A616374696F6E3D2263726561746564222073744576743A696E
        7374616E636549443D22786D702E6969643A34316464636231302D613935342D
        373234322D616633642D663566333539626466626233222073744576743A7768
        656E3D22323031392D30332D31325431363A31303A35392D30333A3030222073
        744576743A736F6674776172654167656E743D2241646F62652050686F746F73
        686F702043432032303137202857696E646F777329222F3E203C7264663A6C69
        2073744576743A616374696F6E3D227361766564222073744576743A696E7374
        616E636549443D22786D702E6969643A66313461373734302D396136622D3434
        34372D613462352D303737383032663837336362222073744576743A7768656E
        3D22323031392D30332D31325431363A31373A30392D30333A30302220737445
        76743A736F6674776172654167656E743D2241646F62652050686F746F73686F
        702043432032303137202857696E646F777329222073744576743A6368616E67
        65643D222F222F3E203C7264663A6C692073744576743A616374696F6E3D2273
        61766564222073744576743A696E7374616E636549443D22786D702E6969643A
        30393063613532612D396433612D626534392D623635632D6235363861333161
        36326530222073744576743A7768656E3D22323031392D30332D31325431363A
        31373A32322D30333A3030222073744576743A736F6674776172654167656E74
        3D2241646F62652050686F746F73686F702043432032303137202857696E646F
        777329222073744576743A6368616E6765643D222F222F3E203C7264663A6C69
        2073744576743A616374696F6E3D22636F6E766572746564222073744576743A
        706172616D65746572733D2266726F6D206170706C69636174696F6E2F766E64
        2E61646F62652E70686F746F73686F7020746F20696D6167652F6A706567222F
        3E203C7264663A6C692073744576743A616374696F6E3D226465726976656422
        2073744576743A706172616D65746572733D22636F6E7665727465642066726F
        6D206170706C69636174696F6E2F766E642E61646F62652E70686F746F73686F
        7020746F20696D6167652F6A706567222F3E203C7264663A6C69207374457674
        3A616374696F6E3D227361766564222073744576743A696E7374616E63654944
        3D22786D702E6969643A62363966383932382D393063382D383934352D613530
        312D386261343239653435623231222073744576743A7768656E3D2232303139
        2D30332D31325431363A31373A32322D30333A3030222073744576743A736F66
        74776172654167656E743D2241646F62652050686F746F73686F702043432032
        303137202857696E646F777329222073744576743A6368616E6765643D222F22
        2F3E203C2F7264663A5365713E203C2F786D704D4D3A486973746F72793E203C
        786D704D4D3A4465726976656446726F6D2073745265663A696E7374616E6365
        49443D22786D702E6969643A30393063613532612D396433612D626534392D62
        3635632D623536386133316136326530222073745265663A646F63756D656E74
        49443D22786D702E6469643A34316464636231302D613935342D373234322D61
        6633642D663566333539626466626233222073745265663A6F726967696E616C
        446F63756D656E7449443D22786D702E6469643A34316464636231302D613935
        342D373234322D616633642D663566333539626466626233222F3E203C70686F
        746F73686F703A446F63756D656E74416E636573746F72733E203C7264663A42
        61673E203C7264663A6C693E61646F62653A646F6369643A70686F746F73686F
        703A63383837363862342D336162612D313165392D396266372D626532623861
        3737326435633C2F7264663A6C693E203C2F7264663A4261673E203C2F70686F
        746F73686F703A446F63756D656E74416E636573746F72733E203C2F7264663A
        4465736372697074696F6E3E203C2F7264663A5244463E203C2F783A786D706D
        6574613E20202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020203C3F787061636B657420656E643D2277223F3EFFEE002141646F62
        650064400000000103001003020306000000000000000000000000FFDB008400
        0101010101010101010102010101020201010101020202020202020203020303
        0303020303040404040403050505050505070707070708080808080808080808
        0101010102020204030304070504050708080808080808080808080808080808
        0808080808080808080808080808080808080808080808080808080808080808
        08FFC2001108034A025303011100021101031101FFC400CE0001010100020301
        010000000000000000000102030904070A060501010101010101010100000000
        0000000000010203060405071000020103020405040301000301000000000111
        0212131003203021144031041517330607375060323641220523110001020106
        070D06050204050500000001003111214191A1023220305161D133A41040B112
        4203D3E30405B536077181E135757660C122B4065013F0F16214A2247495A552
        921585161200010403010002030100000000000000006001310271A1B1322080
        40A05190FFDA000C03010102110311000000FB0AF59F98000000000000000000
        000000000000000000000000000000000075D9FAB8FCBEC07677F8FB00000000
        000000000000000000000000000000000000000000003AECFD5C7E5F603B3BFC
        7D80000000000000000000000000000000000000000000000000001D767EAE3F
        2FB01D9DFE3EC000000000000000000000000000000000000000000000000000
        0EBB3F571F97D80ECEFF001F6000000000000000000000000000000000000000
        000000000000075D9FAB8FCBEC07677F8FB00000000000000000000000000000
        000000000000000000000003AECFD5C7E5F603B3BFC7D8000000000000000000
        0000000000000000000000000000000001D767EAE3F2FB01D9DFE3EC00000000
        00000000000000000000000000000000000000000000EBB3F571F97D80ECEFF1
        F6000000000000000000000000000000000000000000000000000075D9FAB8FC
        BEC07677F8FB0000000000000000000000000000000000000000000000000000
        3AECFD5C7E5F603B3BFC7D800000000000000000000000000000000000000000
        00000000001D767EAE3F2FB01D9DFE3EC0000000000000000000000000000000
        000000000000000000000EBB3F571F97D80ECEFF001F60000000000000000000
        00000000000000000000000000000000075D9FAB8FCBEC077CDE1FEE0056B8B5
        9C6B000022D40000000000000059B025C0B340A012596680008014800882A81C
        F9E8C801480E957D97C1F82EF903E87FF9E7E90002B8379C6B24022D0800E2A0
        00A002000AA2255000214042B9337535400002805894956585A359BCB8D80001
        D117BCFCBF5DFD1903E87FF9E7E90000B75E36F9E759245A1000335C5B850000
        00000000002428896DB973635B9A00012BC8C6B774240A485B20881699A001D1
        17BCFCBF5DFD1903E87FF9E7E9000019B78378C59AB90000066B86CBAA000000
        0000001001168172E6C6B535400012C110000004DE7A7918D950259D11FBBFCC
        F5DFD1903E87FF009E7E90000545278FD312E400000335C5B000000000000099
        5A014032A73635B9A00019B9DCD6A68500080069778D0523A22F79F97EBBFA32
        07D0FF00F3CFD2000504095E3F4C4B9000000CD70EA5B4000000000224975409
        2555002C7373D6A6A800039F3A5A1900042821A5B9A3A22F79F97EBBFA3207D0
        FF00F3CFD200282001357C7DF39720000019AE2D8000000001248BAA001332DA
        A005CB9B3ADE74000066E753433723534258204D4BE4E7AB17A22F79F97EBBFA
        3207D0FF00F3CFD20141000026AF8DBC2E4800000C5716A5B400000022497540
        000490B6802C7373D6A6A80010E696CD0001424034B65E88BDDFE5FAEFE8C81F
        43FF00CF3F48290000029136F1B585840000062B8F60000004492EA800000224
        97540172E6C6B7340000724D000022550217A27F71F9DEBBFA3207D0FF00F3CF
        D252000000056F3BC78FAE79AA800000C5716A5B400842C9175400000001332D
        AA02C73F3D59AA000012C4B4C5CD00D4D429D157B7F83D79F4640FA1EFE7BFA5
        600000000559ACEA78DBE52AA00000315C7B002E521A2800000000020280B973
        635B9A0000B3C9C749282001681D11FB9FCCF5DFD1903E82FC27D65F379F4E7C
        6900000003537C7D39F8FAC4AA100000C570EB2CDD154B2E5AA0000000000224
        97540B1CDCF5A9AA003373C99DF3E365400001D117BCFCBF5DFD1903E813C3FD
        229FD3E3DF9F968000000568B8D63C7E9CC02000018AC994AB29A00000000000
        009996D50B973E35A9A000CDCF2675CF8E8940000E88BDE7E5FAEFE8C81F409E
        1FE9029FD4E3DF9B9E900000002B78DE3C7D7350202E2C08D2E2B29351680000
        0000000002495542C7373D6A6A8337356272677CF8E810001D117BCFCBF5DFD1
        903E813C3FD200B1FD4E5DB9B96C00000059BA7174C706F902887159A548519B
        26C0000000000000001124BAA2E5CF8D6A6B373A9A19B91CB9DF363A20003A22
        F79F97EBBFA3207D02787FA40029FD4E1DF9B1A40000000D37C3BE7C3BE6004D
        4AE3B988B0456A8000084405D40014202824821692C72E75652669608BCB9D72
        677598BB97933BE88FDDFE5FAEBE8C81F409E1FE9000165FEA71EBCDCF600000
        02DD55E1DF3E1BCCB5512B16096042B1B000211C7ACF8FBE79BA2405812AA422
        824B51A922AC1C990160A2ACB2CA2AFF005787D1D14FB7FCFF005DFD1903E813
        C3FD2000058FEA71EFCDCF640000000AE2DE784A5258B9E133B9562112ACB740
        00386E7C4E98D482000025A00B1A44B2CCDB64E4CB5340002168597A3CF63F37
        AF7BC03E813C3FD200000B2FF578F6E5E7A00000015A9670EA71DCB592010C51
        2AC4CDB34000124E2B38772A580005B6282255405B4458E6CDAD24145A8E6C6B
        95B47451EE3F3BD77F4640FA08F0BF50A0012A89A97FA5CBB6A56400002AA962
        70EF1C7AC08B5218A5225019A500000190902E8A02665D5002249755172E7CEE
        A80489579F1BE4CEBA22F77F99EBAFA3207D0C780FD1012800691036BAC80002
        ADA94335A9E3EF963590520E331A85B0A94A0000249E3EF9C582DA9010B10580
        149951516F2628325A44CAEE5E8EBD97CDEBEEF00FA04F0FF480000001A8FEA7
        1EFCB8D20142ADA9249A9D06758E0DF3C6B20B003082D23358DCAA00038D9F13
        A73CDA00000B20968000153979D0285113A3DF63C3D7DDE01F425E0BEF160290
        8A833ABA9059BF2716C05BA5952422353A089358F1F78CEB20A09C1A8A0866DD
        2680001971EB3E2EF0A8551A90010D012904B51691CD9A8AA42C4E8E3D9FCDEB
        DEF00FA0DF07F658540500AA02053CACF4E5C52DA922000353A133BC78FBC66E
        4028200071D6351680001249269A50400000005925B570E79BD4B2883A2BF6DF
        0FAF3E8C81F40FE1BEA804102A0028406A5FEA70FA39705A900006A7412E66A7
        8FBE59B000000071D6360000892716A67524514428000008322B79BB96CA64BD
        1B7B3F97D7BDE01F431E03F42C45D848B5742412DB150B8AD46A02000001A9D0
        6779F1B5CA6B2002900038EB1A8B404492DB867C4EBCF16800000000002C8397
        16A8E8F3D8FCFEBEEF00FA04F0FF004810A0080A416A4294B2FF004F8F7E5C50
        00006A7404C6F1E3EF9CB0005200071D63608925D508C33E275C44CDA00D4822
        8025002C0D49C99D17A3CF63F37AFBBC03E84BC17DE22DB2466C2EA494922D32
        8B4CD8559AF3B9F4B900001A9D0019DE3C6DF296000A0800E3AE3D445D500004
        13341001540500008CEE6B9B1AE8B3DB7C3EBCFA201F435FCFFF0054000262B5
        2DDE732D89A854586A4A962140001A9D000B31BCF8FBE510000A400715674500
        0018673480A000080000A65A5E8DBD9FC9EBDEF00FA1EFE7BFA400000290042A
        C0000000000D4E800C74C78FBE510000A08071D629A0000CC9E274E5C7AA0000
        00000001D217ADE1EBFEF00FA1FF00E7BFA4000042C280000000000000D4D800
        71EF1E3EF9900186EA6990071D63600008CA787D39E340000000000379747FEB
        F87AFF00BC03E82BC2FD600E3B38F59B28291400000000000000B1CD9D846779
        C2008AA40A090634CD116D800433600010011400017A41F5DC3D7FDE01F409E1
        FE9000E2DE78F50021410440001A6C0000000B97366D94442AAC010A01104B33
        650B650204A40A00000025511D1FFB0E1EBEEF00FA04F0FF0048000E2DE7152C
        1490AB2CB080005B29400000068E5C2CA000000000A2652CB54000000000019B
        2C551D1E7B1F9FD7DDE01DF6F87FA40CD962AC1400492ACAA040014000000008
        216168000204B45012D8D00000000000085003A50F5BC3F03DE01DF6787FA442
        80000002522800000000000020AB000000021400351A0000000000428003A51F
        5BC3F03DE01DF6787FA400000000008500000000000101400000000405000000
        0000010255000E947D8FCFF81EF00EFB3C3FD440000000000214000000000101
        40000000001014000000000D4D66C200001D28FB1F9FF03DE01DFB788FAB8AE4
        000000000010588000000002D320A80000000160B352C4000002A89672E7496D
        9C3720000749BEBF8FE07BC03BF8F17F4000000000000138AE4B400000400D4D
        40500000000101412C45500019B8DCD7262AB2716F3A9A00003A49F5DC3F01DA
        01DFDF89FA400000000000010B24B4000062CE2D66CD80000000000000292C45
        580A42B3C99D58C59C7B965280001D257AEE1F80ED00FA0EFE7FFA0000000000
        000001116D8004B2CA0000000000000000024B6C0A42ACAD44B240000007467E
        E3E1F5EFD1903E807C37D7400000000000000085008500000000000000000000
        03971AB5C361028000000747DECBE5F5F778077E9E2FBD5000000000000000CD
        CEA544D44B54000000000000000003373A9752D814E3D42800000003A49F5DC3
        F01DA01DFA78BEF54000000000000003373AC8B2CAD0000000000000000000CD
        CEE5DE2DAD4BC1ACAD000000000E927D770FC0768077E9E2FBD5000000000000
        0044966A6866E753400000000000000000009C99BA978F59C5168000000001D2
        4FAEE1F80ED00EFD3C5F7AA00000000000004B11540110550000000000000000
        227366C33671EB3A9B88AB2800000003A49F5DC3F01DA01DFA78BEF540000000
        000004B986A680004B05940000000000000CDCD379BACDD1C7A98B4500CDCD96
        A8000000E927D770FC0768077E9E2FBD500000000000097296A80000222ACA00
        0000000001139212EA2D7156358B3740009725B28000007493EBB87E03B403BF
        4F17F450000000000012C4550000000337365AA0000000003373A979B1752E6B
        8ECCE90A000019B9A59A000007493EBB87E03B403BF3F17DB4D000000000012E
        52D50000000009730D4D00000000066E772F262CAE3D3371A9B00000011259A9
        A00003A49F5DC3F01DA01DFA78CEF12CB5400000001966AD500000000002584B
        340000000088525500000000002588AA001D24FAEE1F80ED00EFD3C5FD149725
        B28000000CDCEA6800000000000044966A6800000066E6CB540000000000004B
        226A6801D24FAEE1F80ED00EFD3C5F7AA337365AA00000CDCEA6800000000000
        0002588AA00004415400000000000001105503A49F5DC3F01DA01DFA78BEF540
        892CD4D0000CDCEA68000002148500000000960B28004B115400000000000000
        00CDCD96AF493EBB87E03B403BF4F17DAA800440B02696594000000445B96373
        60000000082CB28102550014100000000000000895AE927D770FC0768077F1E2
        7A94000096EA4CDB6400000000BC7B89AE4CE0A000000000B5209560012B16D5
        DE72000000000000001D237AFE5F80EF00EFE7C4F51680089756245D64000000
        0048B0D2140000002512CDCDC230A001065695014000000000009443A46F5FCB
        D7FDE01DFE78CEE0002259A32550000000010005000000011059A22800000000
        000000000001194D7489EB787AFF00B80EFF003C5F7AB100960D4D0CDC92CD00
        0000000000000000290055CDC8B28000000000000000004B1157A43F5DC7D7FD
        A01F405E27E84000000085000000000000000002C4A000428000000000000000
        00000E8FBD870F5F77807D06F84FB00850000002140000000000000042800000
        10A00000000000000042800E8D3DA7C9EBDEF00FA1FF00E79FA4255100000012
        8580005000001000128580000001285800000000000012A88007449EEFF3FD77
        F4640FA1FF00E79FA59B752000000002545D480294000004204A028020000002
        50B00000000000095600007449EEFF003FD77F4640FA11F05F6D0000002D6B3A
        D000C94F1F78E1D60000003CBE7D779D0ABC7738DE5007367540000073E37602
        02928005000A44AAA80A201D11FBAFCEF5DFD1903E82FC1FD2000000391BE694
        0011C1B9E0F5E566400001E4E3BF95CF60B9B386F344D652F335C928000039B1
        D3931400001A9D000005466CD0BD20000E88BDC7E67AEBE8C81F417E0FE90000
        00D5D73E77500030781DB966E22D9000072E7AF9BCFA2325AE1D7396149BCEB9
        66824B6D2141BCEB9F1B812A8010353A00005912CD017A40001D117B8FCCF5D7
        D1903E82FC1FD200000B6F919DD000965781D7971DE6066DD2200D4DF9FCBB12
        04E2D670C6A685396DB1532D724D6359C5BBCE6CBE4F3D802AEB3B0A080353A0
        0B2259A000BD20007445EE3F33D75F4640FA0BF07F480000AE7CF4D800097C3E
        98F1F7C40025A4B15BF3F8F6A133666E38D986A695CD2D02B79D645C0E39D3CB
        E7740035376501410353A09722CD000017A4007445EE3F33D75F4640FA0BF07F
        4800069CB9DF2CA0028E0D67C2E9C4800000F2F1F473F3B8B1666CE399A08725
        D72CC896EB3A96E6E2C439F1D3932006A6ACD000050D67A4B91668000002F480
        7445EE3F33D75F4640FA0BF07F48000DB5CF340008C69FCFEBC632000146FC9E
        7D3C9E7D32CE759B6713280356DBBE5CF306ACD6359A88DE77CF8A00B2EA6C00
        00504B5AB28000000BD201D117B8FCCF5D7D1903E82FC1FD20069737C89BA000
        23C4E99C6B2000044DCDF95CBA66C8CB6E39890055E4D6B368DE33C937C7732C
        1BCEBC9E7400353A5800001402353A000000017A41D117B8FCCF5D7D1903E82F
        C1FD202AE9CFCFA680001C1A440A000B26B3BDCD66E66B0309862CD09672DDCB
        A49A4E4C6A8055F239EEE68805580000A2A4015ACF4000000005E93A22F71F99
        EBAFA3207D05F83FA4361CD8DF24A0008F1B73C5E9C400010D6F3AF231D3926B
        3BC6A4CA70A0D44396EA6B4359CEB376A0179F1BDE2800000001480028A9353A
        00000001D11FBCFCBF5D7D1903E82FC2FD2C9B6F1BE7940004250002150D4D40
        71EF1A9331C57165CD0E595BD8D4CD9AE4C801CB9E9CBCE80000000148000015
        66ACD0000000E88FDE7E5FAEBE8C81F417E13E946B579F1D2A000653F9FDB397
        35A00D4D25A72E75E573DE6F3CEE8E398400AE46E6A8D49CB8A00DE75CFCF600
        0000005200000000D4E8000001D117BCFCBF5DFD1903E82FC27D34E7CF4D0000
        38EB3400011A9656A25CCB25B8989002B99ACDACA69CD8B402CBE473E9600000
        000520000000015AB3400000E88BDE7E5FAEFE8C81F415E13EAE7CEB91400078
        BBCF0EB200006A5AD7938D5678F7522678E66A85723535A164DE6EA5A8266F93
        9DEB3400000000000000000353A4B916680007445EF3F2FD77F4640FA0FF0007
        F66E6F49500195F1778200009565E4979A5E3D496DCE78E6401BB574B472626E
        58B0D272E3A72E280000008500000000000D4E825C8B34001D117BCFCBF5DFD1
        903E857C17DA228A838CE1DE41002C22D39737965E3D633AD6B39E2990259B6A
        DD2D1A9397140171BF233AB00000012AC0000000000000D4E92E459A007445EF
        3F2FD77F4640FA15F05F681161A4F0778C6F12D08115572D1E772E99D31A5931
        33962CD0572DD66E926A4E4CEA8026BC9E7B292C0000128580000000000001A9
        D0446A336A8E88BDE7E5FAEFE8C81F42BE0BED000E1AA94000C9A11C8B8B25CE
        A4E2B712085392EE5A3526F2D28097C8C74D64250B0000255800000000000000
        0D4E825C96CBD117BCFCBF5DFD1903E857C17DA00F1F53C4E9C336D0044B7532
        5F2F9F6E6CDCEB14B262D96865E4635A9445D5BBC5956017500084AD40105580
        000000000000001A9D009723A23F77F9BEBBFA3207D0AF82FB40E3B3C0EDC648
        2B711512C839F3D7CCE7BCEB1C7AD8006B33979DE7CD0235C99D000000003342
        C2AC00000000000000001A9D0012E7A23F77F9BEBBFA3207D0AF82FB40F0F79C
        DC80585082B5E673DE2E71BA001ACCDE2F938A00D4E96000000001C7AA393300
        0000000000000000353A0026B3D11FBAFCDF5DFD1903E857C17DA00032B402A0
        18B38F7400127261E4F3D500D4DD94000000094850B000000000000000000006
        A749724E88FDDFE77AEFE8C81F42BE0BED000CB5A4202E574CCB38B4968006B3
        3C9E5ADC006F79A00000004A4500942C0000000000000000005692D5E88BDE7E
        5FAEFE8C81DD4794FA0012DB20000CDB2C00003797266812B534000000008500
        00000000000000000000002CD750FEA3E3FC4F6807677F8FB000000000000000
        00000000000000000000000000000000000003AECFD5C7E5F603B3BFC7D80000
        000000000000000000000000000000000000000000000001D767EAE3F2FB01D9
        DFE3EC0000000000000000000000000000000000000000000000000000EBB3F5
        71F97D80ECEFF1F6000000000000000000000000000000000000000000000000
        000075D9FAB8FCBEC07677F8FB00000000000000000000000000000000000000
        000000000000003AECFD5C7E5F603FFFDA0008010200010500FE8FB7FE7FA56D
        FF009FE95B7FE7FA56DFF9FE95B7FE7FA56DFF009FE95B7FE7FA56DFF9FE95B7
        FE7FA56DFF009FE95B7FE7FA56DFF9FE95B7FE75EFB74EFB74EFB74EFB747EB7
        745EB770EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370E
        F370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370
        EF370EF370EF370EF370EF370EF370EF370EF370EF374EF374EF370EF370EF37
        0EF374EF370EF370EF370EF370EF370EF370EF370EF374EF374EF374EF374EF3
        74EF374EF374EF374EF374EF370EF370EF3747EB774EFB74EFB74EFB74EFB74E
        FB74EFB74EFB74F4B537B5C94F97041041041041041041041041041041041041
        0411CAB8924B892492E2492791E8FE8F297293F0D248DEAD0F911AC11A24410C
        B48208E2F47F479484C9E4A6353E0D8C5C2C8E4469041041041041040D09F07A
        3FA3CC5CA4FC32E06343E4492492CB8B8B892E2E2E1BE1F47F479B3CA4C6A79E
        DF32391041690416969690410411AFA3FA3CD4C5CA4FC2C09F0B43F0703D3D1F
        D1E727CB4CF3F091CF6CB892492492492492493D1FD1E6B5A2722E527E2DA1F1
        B45A5A8B516A2D45A8B4B4B4B4B4B4F49F4BC5A679F0B291F3A09E0688E4CF04
        924F07A4FA5CF6313917293E17E0609E0687C6C6CB8B8B8B8B8B8B8B8B8F49F4
        B5B0B074C7393E5267993C0BC03E28E2631A1723D1FD1E16A4AA98E5B114BE5A
        7C097876B8E0688E47A3FA3C75531E1208D234425E1589F29150D09F17A3FA3C
        6D49528E6A7C53A493A27E1DA275687C6D0D717A3FA3C974C731F4170CF05A5B
        C9F32D2D2DE6753A9D482D2082082D2D1523A0B0B0B074E9E8FE9725A92A51CB
        A8A593C324E924E93C74E905A884416905A411A41047022081F29A2AA4F47F47
        94D0E98E6262279108845C4AE34F49249249249278FF00F2F4688E438140E993
        D2FD2E5B454A398842E2B4B48208E37D05517171797179797979717171717990
        559717978EA2E2E2E2E2E2E2F1D4C92E83D27D2D6E2E2E2E2E2E2F2E2F436344
        2E627C525C49717170B932492C964F2635688E381A7A7A3FA3AC104104104105
        A432D2DE4C93A27C882D2D65A2E4C169616969696A2D2D2D2D20821102A48442
        2D2358208D2D47A5FA5CE6874F31313E3924927934D5CA927C07A5FA5AE43217
        9797B2F65ECBCBCBD8F705B837C73C5227C524925C88278FC855124925C5C892
        4924B8B8B8B8924B8B8B87521D45C5C5C5E5E7A5FA5AE33198CB0B0C6632C319
        8CC6633198C74C13CB4C5CB4C6A790CB89D649249249249249192344717A4FA5
        ADC5C4971717124925CB49D5A92A51CC9E627C95496961616169696969696969
        6969696969696169696969E97E96B0C820B59D7586433A9D74EA753AE902E9CB
        427CB4C6A78E927C135C1E97E96B0410410410411A4105A8820843A4AA9E5A27
        989F1B62A89E64924924E8F5F4BF4B5BCBCBCBCBCBCBCC86432190C85E643219
        0C83A87CC5CC4C7CA75171717171717171771C11A7A4FA5CC83AEB0493CF4C9E
        627CA82C2C2D2D2C2D2D2D2C2C2C2C2C2C2D63A0C6CF4BF4BF829297CC4CF3E3
        42F05E9BE9F1C104704104104104104104104104104104104104409F313E4489
        F80A8F4DF4F5B4B4B4B4B0C6633198CC6633198CC6633198CC6633198CC66331
        98CC6633198CC6622C2C2C4585A5A8B4B4B4B4B4820B4B482D2082C2C2C2C238
        A0820820820820820F4DF4F909F8A688E19E5492492492492492492492492492
        4924925C49E9BE9F253E19D649F02C8E74788F4BF4B9524924F0492492492492
        4924924924924924F0492492493C3249226410410410410410410410411A4104
        107A6FA7FCAA64924924924924924924924924924927A6FA7FD2BD2FD2FE82C5
        C8F4BF4B82D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2
        D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2
        DD2048B4B4B4B4B4B4B4F4DF4F5820820820820820820820820823973E3DEA90
        B91E9BE9EB0410410410410410410410410416905A5A5A5A5A5A5A5A27E39888
        122393E9BE9EB9D99D99D99D99D99D99D99D99D99D99D99D99D99D99D99D99D9
        9D99D99D99D99CCECCECCECCECCECCECCECCECCECCECCECCECCECCECCECCECCE
        CCECCECCECCECCECCECCECCECCECCECCECCECCECEE199D99D99D99D999999999
        99D99CCECCECCECCECCECCECCECCECCECF48E76B5C48C48C48C48C48C48C48C4
        8C48C48C48C48C48C48C48C48C48C48C48C48C48C48C46246246246231189189
        1891891891891891891891891891891891891891891891891891891891891891
        8918918918918918D18D188C4623123123123123123123123123123123D2AFFF
        002F12FC73D3C87D443E77A6FA7E25F8E63D3CB45CEF4DF4FF009791B244BC07
        A6FA7FCC40A9F03E9BE9FF0026864E902F05E9BE9FF27237AA5E0FD37D3FE45F
        0411E13D37D3FE458F48F0DE9BE9FF004AF4DF4FFA57A6FA7FD2BD37D3FE95E9
        BE9EB24924924924924E924924924924924924EB2492492492492492493A4924
        E92492493AC92492492492492492492492492493A7A6FA7ABE54F313F0689E19
        F0F27A6FA7AC1041041046B0410410410410410411A433AE9041041041041041
        0468C488208208D7A90F582082082082082082082082082047A6FA7C12492493
        AC6924924924924924924F0C924924924924924F0C9249249249249249249249
        2492492492492492493AFA6FA7FD2234F4DF4F592E2592C92492492592CB8925
        92C964B2592C964B2592C964B2592C964B2592C964B2592C924B8964B2E2E249
        2592C964B2592C964B2592C964B2592C964B2592C964B2592C964925C4B3D2FD
        3D6F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F
        2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F
        2F2F2F2F2F2F2F2F3D2FD2F0F041041041047147F0DE8FE978682592C964B259
        2C964BE38208FE0FD1FD2D6C2C4588B11622C4588B11622C43A4B4B4B4B4B482
        0A682C2C4588B11622C4588B51622A42A4820815258584104104104104103238
        238A492492395E93E973678994D3CAA993AAD6091F25BF00B95E93E9783484B9
        353D208D11248DEB04F137C73E13D27D2E5B7C53A534F25B2758D172A746FC67
        A4FA5E060A572AA7AA5A473193E33D27D2E4A637C6972AAAB58E4CE890F56F98
        84FC07A4FA5CF6CA57264AAAE17C084F856ADF8EF49F4B8EAE44099722E45C8B
        91722E44A2E43AB9AF482082A7E3FD27D2E37C8B4B4B4B4B4B4B4B0B4B74489E
        521BE16FC7FA4FA5C2941237C4D1493C725C3625C086B8A389BFE03D27D2E1AB
        C043D1B12D18B54C6B810DF0B7FC0FA4FA5AFF00E46F8D212E26488AB85F0CEB
        E5C2FF0082F47F475FFCF2131D42A8B8B99732E65C4924E887C88247C0C9FE0B
        D1FD1D50F8E9A47496969696969696168C4B8DF03E16C6FF0083F47F4756F917
        17979797979797978EA122796DF0D4FF0084F47F479291696161616161696160
        D11C688E07C2DFF0BE8FE8F25124924924A24B912362E05C723E06362FE13D1F
        D1E45A5A5A41041043208D121F22491F0C8FF86F47F478E95AB5AC7054C489E2
        6C7512C964B249249249FE1FD1FD1E24B9553E4B7C13CD823C7FA3FA5C499717
        1722F2E2F2E2E1D648B890DF8262F1FE8FE97804B8EA7C2F9D24F8FF0047F479
        E909F13637C0DFF1FE8FE8EBEDC7B71EDC7B71EDC7B71EDC7B71EDC7B71EDC7B
        71EDE7607607607607607603FF00E71ED87B61ED87B69ED87B61ED87B61ED87B
        61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B6
        1ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61
        ED87B61ED87B61ED67A7A6DDBFE95B7FE7FA56DFF9FE95B7FE7FA56DFF009FE9
        5B7FE75FFFDA0008010300010500FE8EFF00A5BFE96FFA5BFE96FF00A5BFE96F
        FA5BFE96FF00A5BFE96FFA5BFE96F8315262A4C5498A916D523DA4588B11622C
        4588B11622C4588B11622C4588B11622C4588B11622C4588B11622C4588B1162
        31D263A4C749622C463A4C7498E931D263A4C7498D18E931D263A4C7498E916D
        A1D1498E931D263A4B292CA4B2931A31A31231A15148B6A930D261A4C3498693
        0D261A4C3495A87C96B973E0249249249D249249279369690416969616160A81
        53C8DCFF005CAA972A3C4C6AB8E04F592492759249278B73FD7290D0F94DF865
        C33C8924B8B8B8B8B8B8B8B891313E066E7FAE527A55FC32E34882C2C2D2D2D2
        D2D2C2C2D12E1DCFF5CD6B97E5E03CF973C8B8B8B8B8B8B8B8B8B8B8B8B89D77
        3FD739AFE1972275964BD64920913169B9FEBC4B5E3279091696969696904169
        69691A6E7FAE7B43FE1971A65C5C5C5C5C5C5C5C5E5E5E5C57FEB9E864729A3C
        BC5CF26DE0B4B4B782BF3F014952FE1D71A122D20B4B4B4B4B4B4B4DCFF5ADEC
        BD94D53CD6B99E42F153C54E93C9DCFF005C2994D53CBA468A97F0EB8A44C5C8
        DCFF005C74D53CB9132A5CA9249F173C305452F91B9FEB8D329AA796969553C5
        02A48208F1AB87CC4CA5F1EE7FAE4D354F310D70C12497171772E49249249E39
        2513A49249717176B714D66445E5E2AB4DCFF5C94E0A6A9E5D23435A411A470C
        7259248DEB3A4F0C6BD783A9D4EA753A89E89EA994D46E7FAE5262AA44F98D11
        ABD6DD3A9D4EA75E36B49249249249278A5923D193CA4E0ABCF969C14B9E5F4D
        1A1F1CE92895C687496969696B2D2D20B4B4B4B482D2D2D2D2D2D2D2D2D2C2C2
        C2D2C152588B0AFCF5B596B2D65A5A5A5ACB596B1213E6B5C4F58208F113C0A0
        9249211D0915449B9FEB5B8B8B8B8B8B8B8B8B894362AB9703435C725C493CAB
        8B9925C5C5CCBCB8B8B8964925C5C5C3A8B8965C5C49248C551732AF3E726535
        7318D731AE3A972208249E4412470A1F9EB8CC66331988C6632C2C3198CB0547
        1413C2D1035C505A432394E923582D2D65A5A4696B2D65A5A5A5A5A5A582A0B0
        B19616161579EB7979797979797991990C86432B323320AA9E5BD2A5E1639D1C
        13A410415F9EB696B20B590410410411A41027052E79690D0D78382E2E2E2E2E
        24B8B8B8B8B8B8B8B8BCB892E2F2E2F2E2E2AF3D6F44A2E44A25128944A25128
        84743A1D0E84A131F2D8D783635E0A04F5ABCF952492492C924924B8A5F2DA1A
        1F836881E92493AC10411C51A410CABCF5C66231188C43DB3118CC4CC6633198
        CC658636631524732A435CCF2238E082082082082082393257E7CC83AE9E6412
        493CE68A973239324971717171717171717171717171717171795F9EB2492492
        493C33E16AA7C231AF04FCFC7C924924C9553C4D8B9B6F827E7ADC5C5C5C5ECC
        86466432190C86432190C86432190C86432190C86432190C86432190C8642F65
        E5C5E642F2F2F2F2F2F2F2F2F2492492E2E2E2E249E182082082082082347E7C
        86883A1D3450743A1D38D41D0E8743A1D0E8743A1D08279D041075D3A1041041
        0410410410410410411AC0FCF9304104104104169690410411A4104104104104
        11AC6B0410411AC1046AD13E096B579F2638A08FE0649F10FCFC027E15BFE15F
        9FF4AABCF56BC7C78F81AE455E7AB249249249249249249249249D27993A493C
        D9249279324899248DF21F9EB24924924924924924924924925CC86753A9D4EA
        753A9D4EA752D248F09027C7E62E0AB90FCF5B91722E45C8B91722E45C8B9172
        2E45C8B91722E45C8B912892492492492492746BC33427C2C5AC971E7C87E7AE
        0460460460460460460460460460460460460460460460460460460460460460
        3023023023023023018118118118118118118118118118118118118118118118
        1181181181181181181181181181180C08C08C28C28C28C28C28C28C08C08C08
        C08C08C08C08C08C08AD43D72332332332332332332332332332332332332332
        3323323323323323323323323323323323323329919919919919919919919919
        9199199199199199199199199199199199199199199199199199199199199199
        197B3233233233233233233233233233233233233232AF3D5786A49D18978AA7
        5F2F00FCF55E1A910DF8CA74F2D5F39F9EABC2B625AB7E2DA168DF807E7AAF08
        D8970C09F8A91B129D1A279AFCF55E0DB12E3689F09514E923E3F213E5BF3D57
        82912E4B44F826411A468DF1B427CA7E7AAF03225CCF213E7D3C1237CA813E4B
        F3D67C0A5CE689E75232757CB68F2E43F3E0F213E779780684F9AD888F01027C
        4FCF55A409F2FCFC1B47972DB12F06D09F0BF3D56B027E3E04F90D89785689E0
        7E7AAE068F2F1ED09F13625E2204F47E7C98208208E6F973BCF8978A6B47E7AB
        E4C13CD6BC0C0993C33E21F9F0C92493C324924924924924924E924E92492492
        49249249248B8249249D649D649249249249249249249249249D1F9EB05A5A5A
        5A5BAC105A5A5A5A5A5A5A5A5A5A5A5A4104105A5A5A5A5A5A5A5A5A5A5A3425
        ADA5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A35A3F3D
        6749249D2756C9249249249249249249249249249249249249246C4493A32492
        49249249249249249249249249249249249249247E7C10410410410410411A41
        0410410410410410410410410410411A41041041041041041041041041041041
        041041041041041041041579EB616161616161616161616161618CB0B0B0B0B0
        B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0C65858585858
        585858585858585858585858585858585858585855E7FD2ABFF5FD2ABFF5ADE5
        E5E5E5E5E5E5E5E5E2AC5512492497125558B70C8CC8CC8CC8CC8CC8CC82AD97
        17124923A8BCBC550AA249249249249E382082082D2D2D2D20B448B4B4B4B4B4
        B4B4AFFD7352E248A9F2A94411A3D234812E4A5E07CF93B9FEB98971B654C5C8
        A56924923AB8249244F824929249279B3CBDCFF5CB4B91555C13C2A92092746C
        AB544EAB59D12E14B96D91CBDCFF005E0AA7C49EA8A50DEAD97094F174121EAB
        892F0FB9FEB94971B63E4245348F491BE15AB625A31890970A5E2373FD7252E3
        63AB9105348F4918B817025A2D570A5CBE9CEDCFF5C84B90D161616161616169
        60A9D1BD27931A345A5A25E3F73FD71AE43A855171717171717A2E2E5A3245A5
        4F542D57125E3F73FD71A5C7510C86432190C86416B2D121B1F147040B852FE0
        373FD7125CDE9A4224824918C6F542D57125E1BCF97B9FEB852E36C91B2592C9
        64BD5A29431F1A42E425FC16E7FAE18E368820820820B448B74A9948C6F86390
        97F07B9FEB5812E375179797979797978AB2747AC8F5485AB42235484BF83DCF
        F5AA5C8748A82C4588B11622C4582A11031BD678172578E9E2DCFF005C3235AB
        65C5E8BD17A2F45E8B8B8B89E4342E4AF1F04F0EE7FAE4B20820820B4B482048
        9E0A9EB491ACF0A5A4F8F8D275DCFF005C87512492492497124EAF47ACF0B447
        02FE1674DCFF005C753244C65CCB9923649225A4EAC82048820820B48208208F
        E1609373FD71363D5245A5BC14D3C8812E05FC6366E7FAE268C6633196161698
        CC625C8425FC8A2BFF005CA9E6A5C297F1DB9FEB9EC4F8D702FE3634DCFF005A
        E432190C86532190C86432190CA2DC32190C864321905B86532994CA673399CC
        E673399CCE673399CCE673399CCE673399CCE673399CCE673399CCE673399CCE
        673399CCE673399CCE673399CCE67339DC15397FD29FF4B7FD2DFF004B7FD2DF
        07FFDA0008010100010500FE8FF7BFFD9FF4AFBDFF00ECFF00A57DEFFF0067FD
        2BEF7FFB3FE95F7BFF00D9FF004AFBDFFECFFA57DEFF00F67FD2BEF7FF00B3FE
        95F7BFFD9FF4AFBDFF00ECFF00A57DEFFF0067FD2BEF7FFB3FE95F7BFF00D9EB
        F1B7D947C6DF651F1B7D947C6DF651F1B7D9457F8DFECDA4F8E7ECD3E39FB34F
        8E7ECD3E39FB34F8E7ECD3E39FB347F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7
        ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3
        E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E38F
        B30F8E3ECC3E38FB30F8E7ECD3E39FB30F8E7ECC3E39FB30F8E3ECC3E38FB30F
        8E3ECC3E39FB305F8E7ECD3E38FB30F8E3ECC3E38FB30F8E3ECC3E38FB30F8E3
        ECC3E39FB30F8E7ECC3E39FB30F8E7ECC3E39FB30F8E7ECC3E39FB30F8E7ECC3
        E39FB30F8E3ECC3E38FB305F8E7ECB95F8DBEC96BE35FB28F8D7ECA3E35FB28F
        8D7ECA3E35FB28F8D7ECA3E35FB28FCA9E9B63D17E50E4D745BC2E785CC5ECBD
        97B2F65ECBD97B2F65ECBD97B2F65ECBD97B2F66466466466465ECC8CBD99199
        199197B1549AE3892CA8B2A2CA8C7598EA31D463A8C5518EA31D4534D74BE3FC
        BDFB6793D0AA8B5EBE5C55533E2D369D2D35C4BA14D772D3A1D0E87425128BA9
        2EA4BA93A3E2FCBDFB6795575556DDA53C9AA991F865E5AA6D35526B8E512892
        4924924924928A9D2D435AB3F2F7ED9E53523529D163E4D54CF83F3E426D14B4
        F8D229A2E31331331331188C46231188C4534BA787F2F7ED9E6352AAA5D2F935
        533E07CF949B42A935C49B4D6E52D64A4BE92FA4BE82FA0BE92FA0BE92FA4BE9
        2FA44D3D7F2F7ED9E6D54AA934E97C9AA99E7F9F31368A5A7C89D7A9D759248D
        28A9D2D35523F2F7ED9E7554AA93A5D2F935533E1609E14DA1549F229A29A963
        A4C7498E931D263A4C7498E91EDD22DBA116522A552CFCBDFB679F552AA5552E
        97C9AA99E54C733CB85369D2D3E3A6A74BCA6532994CA653375CA6532994CA7E
        5E73F9639E8AE955269A27935533E2D369AA935C88E08208E0FCBBFB5F54D3E6
        A2BA5549A3CB935533C294B87E15382969AE2A5C34A86ADA4B692DA48A48A48A
        4B692DA4B693F2F7ED9D7B9DD4775BC6CEF2DD5CCAE8B8F2E5554C9E47412509
        52CA5B9F03E5C09B4D549AE14515DAD43E4FE5EFDB3C34D4E97B3BCB757290D1
        5D12B955D32269A50D28A7C2791E7AA6D09A6B8A8AEDE4FE5EFDB3C54D4E97B3
        BD4EEAE5A65744E913C0DC2BD17A2F45D4A2B74B1BA5F868E04DA69A6B5F3D19
        4576F23F2F7ED9E3A6A74BD9DEA77572A34AE89E17D56363DB6DE392C70E9716
        D5E2D382969A3CF5F324A2B8E3FCBDFB67914D4E97B3BB4EED3CCAE89E26DD25
        553464AA2FA8C8C6E7C4CA2EA455A4D6E50D64A0C941976CCBB665DB33ED147A
        ADB4773B2773B0773B06DEF6DEE33F2F7ED9E4D353A1ECEF53BB4F29695D1AB5
        047489150A2DA0B682DA0B291D1C8AEF325664ACBEB664ACC9597D65F517545C
        C9649249D04A5B490E981C09C34E4EA753A9D49E14DA7B1BEB757E5EFDB3CAA6
        A7455B3BCB769E66E510252293AD23F31F9DBA753A92C97C7B9B7710D3B4B482
        0B4B4B4B78544B83A5AA20A5C133CA4DD2FF002DB757E56E5D353A2AD9DEA776
        9E574D2BA14B7C2DC2BCC85E64A46D37C75EDDC60ACC15982A305460A8C0CC0C
        EDD981980EDD1811811811DBA305260A4C140B66942D8DB676D41DBD076F41DB
        D076FB676FB66DECECB3B6D93B7D83F2F24BF2C6B8774C3BA60DE306E98374C1
        BA60DE306F18378A76B7E8AA875554F32AA1D3AF968D4AB19632C658CB18E869
        781F3E4D2ED134F83A1D094515DC433F2FFED9D726D9936CC9B665DB32ED9976
        CCBB665DB32ED99768CBB6535D15723C89D2082BA2DD7AEB5B69CB2E65D5173E
        4B98CB5A79EA33B33D667A8CD599B70CBB8CCBB866DC32D665ACCB5197707B95
        9937117EE32FDC16EEE216E56CBF70C95992B2FAC75564D5392B3F2D75FCABCE
        A2BAA8AB6B769DDA787A42FF00DB85A2BA6D7AC8D265B49FFE67FF0099141141
        5243E3AF6D569A74BE2964B2110B909B5A470F43F2CFED4D7B4DB3B4DB3B5DB3
        B5DB3B6DA3B5DA3B5DA3B4DB3B4DB3B5DB3B5DA6769B653B14D1579F07467FEB
        1FF9E0686A4AA974BD7CB4B6A2D65B511516B21F22BDB55AB2B459598EB31D66
        2ACC7598EB315662ACC3598AB315661DC316E18B70C3B862ACC358B6AB42D8AD
        98370EDEB3B7ACEDEB3B7ACFCB4ADFCABAAF5559DDD6777B877551DD5477759D
        DD677551DDD4776CEED9DDB3BB6776D1B5BB4EED3CB84D554BA5F2AAA793D3C0
        79694D4E9134F482083F2EFED7D716E18F711656595965659596565B516D45AC
        B6A21EB45555156D6F53BAB9486935552E97CAAA9E479956EDA6746746747708
        CE8EE11DC23B847708EE11DC23B846793399D99DA33B29F51552D7A9677151DC
        5477159F969CFE55D6EA055D25D4A1574B528913489E0EBAF98940B99524D34E
        97CAAA9E198D6BA154AAA5D0FC07989C3D7F2CFED4E28E44B45CC9A855548BEB
        29DDDCA6ADADDA7769E5D54AA934D3E5554EB3025C1550AA5552E96886C86432
        190C86432190C86432190C86410C52886D4547E59FDA9AF6DB676DB676D41DB6
        D8FD2D076B4A7DAD27688ED51DA1DA33B36768D9DA5476959DA567695947A7DD
        A2A4E572EAA5549A69F2AAA639BD0E8743A72BC8A6AB44E4FCB9FB5F93D69254
        1723FF0053CC9549722D65AC8E7D74A6351CBAA88E4BAE9A4CB4196832ED9976
        CCBB666DB336D99B6CCDB665DB32ED9976CCBB665DB32ED99B6CCB414FA8A293
        F2DB557E56D6110884422110884744743A32085E16BA1549A8E2F2E1AA9E4554
        AA9574BA1A71E07F2C7ED3E57FE7C4D7426B869498FA70D54C721D29AAE87435
        D79F41F963F69EBDC6E9DC6E9DC6E9DC6E956FFA84775BE775BE777BE777BE77
        7BE775BE777BE777BE777BE777BE777BE777BE775BE775BE775BE775BE775BE7
        75BE775BE775EA0EEB7CEEB7CEEB7CEEB7CEEB7C5EAF7D35EA775AEE374EE378
        AB7B76A32EE19770CBB885BDB864ACCBB865DC9CDB866DC335666AC75D664DC3
        25664DC325664ACC95992B1D75B44924B2597171717125CCB99732491368FCB1
        FB4F915D30743A1D0E8283A1D0E9C6A0E8743A1D0E8743A1D0E840AA869CAD60
        853C8843A4B510422D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D1D2A6C45A7E59F
        DA9C9AA9D20823482082086432190C8E626D09CAD6190C864321EB0C8643D234
        EBE05B128D7F2CFED4D6592C965CD92D12CB99D4EA753A92C96896CEA753A9D4
        EA753A9D4EA753A9D4EA753A9D4EA753A89B2E67526A26A26A26A26A26A258DB
        2EA91351351351D4BAA2592C964B2592C964B2592C964B2592C964B2592C964B
        259F957F68F0CCF2DAF09E425CBF2F15F957F687F07E5CFF003F11F957F686AE
        9AA9F01E5CF6E08E7F992B9D452AD69AE47E55FDA1AD54D2A8C68C68C68C68C6
        8C68C68C68C68C68C68C68C68C68C68C68C68B2931A31A31A31A31A31A31A31A
        31A31A31A2C42DB48B116231A31A31A31A31A31A31A31A31A31A31A31A2C4588
        C68C6918D18D18D18D18D18D18D18D18D18D32C462DBA13A12A6AA29B31A31A3
        1A31A31A31A31A3F2B74FCA3AE6DC336E19B70CDB866DC336E19B70CDB866DC3
        36E19B70CDB866DC336E19B70CDB866DC1EF6E33A9D4EA753A9D4EA753A9D48F
        0E9F1F994BB6ADC54C34B70AADA697C8FCAFFB4B5CBB665DB32ED9976CCBB665
        DB32ED9976CCBB665DB32ED9976CCBB665DB32ED9976CCBB665DB32D065A0CBB
        68CB4196832D065A0CB4196832D0575D152F0F3C54ABAA75529B6A8753A19279
        F23F2BFED2D7DB364F6CD93DB364F6CD93DB364F6CD93DB364F6CD93DB364F6C
        D93DB364F6CD93DB364F6CD93DB364F6CD93DB364F6CD93DB364F6CD93DB364F
        6CDA17FF0037659ED9B27B66C9ED9B27B66C9EDBB33ED9B27B66C9ED9B27B66C
        9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B6
        6C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B6ECA3DB364
        F6CD917FF3B651EDBB285FFCEDA4DFFF003B62A6FF00F9FB551ED9B27B66C9ED
        9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9F96E9547E56D7DC3D49EE1
        EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A
        83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0
        F70F507B87A93DC3D41EE1EA0F70F527B87A83DC3D41EE1EA0F70F507B87A83D
        C3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70
        F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D
        41EE1EA0F70F507B87A93BCDF477BBF0FD7FA94DFF00F47D437EE1EA4F70F507
        B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83F2CD4EBF
        CA9AAF2F0A84BA7418BC52126CA69BC854555D355D57FEB45553A9F33F2BFED2
        D57978544A85E6FC5A29BA6D8A632AA5BA4AA53E6FE57FDA5AAF2F0A96ADF8B5
        4BA8A3FF0054BFF52B74AAB9FF0095FF00696ABCBC225E3EB6E9537EDBAFFF00
        5F3D1AE77E57FDA5AAF2F05225E3188DBA555565735D54A75572B87CB99F95FF
        00696ABCBC5B5E0D8E84E9A55293A9535BA36E92AA9D4DBF05F95FF697855CCF
        2F0085D44E9DA6D50E86E855535BA572A793F95FF697F228A5C3AB6EAA9D714D
        1CDF2E47E57FDA5C1E5CEF33CBF804DAF029F17E57FDA5E07CFC27972DBF091C
        5F95FF00696ABCB99E7E1D3E437E2FF2BFED2D579707971F9F888FE03CB5FCAF
        FB4B586432190C86432189496B2D6410D90C86432190C86432190C86433C910C
        86432190C86432190C86432190432190C86410C86432190F586432190C864321
        90C86432190C86432190C86432196BD3F2BFED2D52850C86432190C87A742191
        D6190C86432190C86432190C8634E1AD2190C86432190C86432190C86432190C
        54B218D74B486432190C869690C86432190C86432190C86432190C86432190C8
        64321907E57FDA5C524EB56889249249249249249D6116AD6492492492492757
        E4C5AC93C16A21704924924924924924924924EB5797E58FDA7AC10410411A42
        3A1088208208208208208208442211088208208208208208204B582082082082
        082082082082082082082082082082083A1F963F69F0F53A9D74E9AB6893A9D4
        EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9223A9D7593A9
        D4EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753AEBD4FCB1FB4
        F5B692CA4B692DA4B292CA4B292CA4B292CA4B692CA4B692DA4B692DA4B692DA
        4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4
        B292CA4B692DA4B292CA4B292DA4B692DA4B692DA4B692DA4B692DA4B692DA4B
        692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692CA4B292CA4B693F2CFE
        D4D7B4DD3B4DD3B4DD3B5DD6FB4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD
        3B5DD3B5DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4D
        D3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD1FA5DD42F49BA769BA
        769BA769BA769BA769BA769BA769BA769BA3F4BBC8ED774ED374ED374ED374ED
        374ED374ED374ED374ED374ED374ED374ED374ED374ED374ED374ED374ED374E
        D374ED374ED374ED374ED775BED374ED374ED374ED374FCB69D3F95B87CF993E
        0DB12E6273E0FCF8BF2F7ED9E0F3E77978094F44B9D3E07CF8FF002F7ED9D73D
        4CCF519EA33D467A8CF519EA33D467A8CF519EA16E56D64ACC95992B32565D5A
        3256CDEF515D2FB9DF3B9DF3B9DF3B9DF3B9DF3B9DF3B9DF3B9DF3B9DF28AF76
        D75D62AEA9756E4D5BB5A59B74CDBA66DD16EEEB6AADC8BEB2FACBEB2FACBEB2
        FACBEB1555CA4D2E182190C8643208208219044904104104107E5EFDB3CDA299
        E3DDAD514A7C9D9DB244FA4B6E5524BA9C6B4531C9DBA5AF03E7C9FCBFFB6799
        4D373885C3554A8A6AA9D4DA4CEAB8F6B6EFA9B4855175A5D45255537A492505
        E8B8BA04E74944A2514529B9F01E7CAFCBFF00B6796BABA55AB86616EEE64AB5
        8684E7828A1D55529509B85FE92A995391EB4A92235EAC4A07D4B58E0A55CD28
        F01E7CBFCBFF00B67974530B8B7F72789A139D14B746DA49BA5910A545754127
        9E8BA94A54AD3FF610DCEAA9753A6954AE04A1786FCBFF00B6795453C4D49BBB
        962E4ECED5ABA1524C86371C34D31AA50529A553829F243706DD16AE05C89F01
        F97FF6CF268A65F16E56A8A5B753E263A5D251B499E74FF9122552A67829479E
        ABA8DC27D47D046DD13C2972FA73BF2FFED9E4252D285C5B946ED6F06E98374C
        1BA60DD306E98374C3B861DD28F4ED35FF00E638436989153B9EB4AB9FFE745D
        5F449B6DDC5C50AE7D2383CBC4FE5FFDB3C8A69B57167A13EE283B8A0EE283B8
        A0EE283B8A0EE2817A8A1B55A9FF00D1BA9968FCABAA47AA4D9D16886E44A16A
        94B4952BC77E5FFDB3C7453C7BFB9690753A9D4EA75204AA652AA54EC6DD83AA
        1A527FE6A7034E539D6951ADC52B868A6D5E0BCB9BF97FF6CF1514CF1CA4743A
        1D0E8742693A17286E1A6EDAAA70948941368DB91A913295AD4534CF0EDD3E1B
        CF97F97FF6CF0D2AE710B86AA9534D753AEAE1A1D25915BAA69DAA3236C5FF00
        B1E6FAC373C14D2AA7D56A93AB868A6E7FC0FE5EFDB3C094BA69B571574535AC
        1B660DB30ED9876CC3B661DB16CED42DBA1BC7B4C487353A85E75552F54A5AE8
        79BEA85D44A16B4AB9A50BF81FCBDFB6759828A61716EEF34F2EE19B70CDB866
        DC336E19B70CDB82DDA9A5BB5D250AA54D5569E656E13D521285A2702A44F5F3
        74D36AF15E5C8FCBDFB675A29970D09A7C355D6F6F59DBD676F59DBD676F59DB
        D676F58BD3D6CEDAB36B66C6DC24A74A9C2E0A547052B469325AD36E8B7F84FC
        BDFB6785A13D6BA96DD3DC1DC9DC9DC9DC9DC9DC23B893B946DEE641B84DF525
        24DCBD194A2754A5F06DD1E3E09E1FCBDFB6789A4C96B4DCBF72AC7598EB31EE
        18F70C7B8595A31D6CB2B29DAAAA74D34D29BBB4892A72DEB4A9138D111D5285
        AD14BA9F911CA8F0DE5C1F97BF6CF21EE514BCDB666DB336D99B6CCDB666DB32
        EDB79B6C5B9B6D95329F22A7C090946AAA84970436E9A552B553FC04CE9F97BF
        6CF1EF6E5886BAA724104C289724B3676ED553856A3C90A9A5914914908A36A9
        4ACA0B281D14229A292DA4B282DA4B691534AE2EABF81FCBDFB678B73716DD2D
        B6F5871E4253AECEDDC3690BABE1B8DBA38129E6DC8552D174F1BF97BF6CF157
        46ED7560DC305660DC16C6E2787725EC6E3305660ACA7D3D6EA4924DDCF86A36
        E9B9EBE6251CDA20ABC723F2F7ED9E4CB9820885AD5571212BDA492D2509473A
        110BC7FE5EFDB3C899128D5A925AD2A709A8E248A29B56B4AE637FC079EBF97B
        F6CEBF319F319F319F318FF3149F319F319F319F319F319F319F31437F9824F9
        80F980F980F980F980F980A7F312A5FCCC7CCC7CCC2FCCB07CCE7CCE7CCE7CCE
        7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE
        7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE
        7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CD07CCE7CD07E4AF5BEE5F91BFA57DE
        FF00F67FD2BEF7FF00B3FE95F7BFFD9FF4AFBDFF00ECFF00A57DEFFF0067AFFF
        DA0008010202063F0043B22D916C8B645B22D916C8B645B22D916C8B645B7C27
        84F09E13C2784924924924924924924924924924924924924924924924924924
        92492492492492492492493C2784F09E12492493C2784F09E13C278493C27855
        DFF8C8BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BA
        E1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE
        1B88BAE1B88BAE19175C322EB8645D70DC45D70C8BAE19175C322EB86E22EB86
        45D70C8BAE19175C322EB8645D70C8BAE19175C322EB8645D70C8BAE19175C32
        2EB8645D70DC45D70C8BAE19175C322EB8645D70C8BAE19175C322EB8645D70C
        8BAE19175C322EB8645D70C8BAE19175C322EB8645D70C8BAE19175C322EB864
        5D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45
        D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D
        70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DCF84924924924924924
        9249249249249EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB
        47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB4
        7AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47
        AD156FE3322D916C8B645B22DBE1FFDA0008010302063F00FD03A08208208208
        1D16E8B745BA2DD16E8B745BA2DD16E8B745BA2DD16E8B745BA2DD16E8B745BF
        D2C7FA58E8B7FF0073DFF627745BA2DD16E8B745BA2DD16E8B745BA2DD16E8B7
        45BA2DD16E8B745BA2DD16E8B745BA2DD16E8B7FCC8208208208208208208208
        208208208208208208208208208208208208208208208208FAF9FFDA00080101
        01063F00FC0FFCBBEA9DBFF77CE7E0BFE5DF54EDFF00BBE73F05FF002EFAA76F
        FDDF39F82FF977D53B7FEEF9CFC17FCBBEA9DBFF0077CE7E0BFE5DF54EDFFBBE
        73F05FF2EFAA76FF00DDF39F82FF00977D53B7FEEF9CFC17FCBBEA9DBFF77CE7
        E0BFE5DF54EDFF00BBE73F05FF002EFAA76FFDDF39F82FF977D53B7FEEF9CFC1
        7FCBBEA9DBFF0077CE607C9769ED7D2AF92ED3DAFA55F25DA7B5F4ABE4BB4F6B
        E957C9769ED7D2A8FF00F0D27FD476AE957C9B68ED5D2AF936D1DABA55F26DA3
        B574ABE4DB476AE957C9B68ED5D2AF936D1DABA5501DCDB476AE957C9B68ED5D
        2AF936D1DABA55F26DA3B574ABE4DB476AE957C9B68ED5D2AF936D1DABA55F26
        DA3B574ABE4DB476AE957C9B68ED5D2AF936D1DABA55F26DA3B574ABE4DB476A
        E957C9B68ED5D2AF936D1DABA55F26DA3B574ABE4DB476AE957C9B68ED5D2AF9
        36D1DABA55F26DA3B574ABE4DB476AE957C9B68ED7D2AF936D1DAFA55F26DA3B
        5F4ABE4DB476BE957C9B68ED7D2AF93ED1DABA55F27DA3B574ABE4DB476BE957
        C9B68ED7D2AF936D1DAFA55F26DA3B5F4ABE4CF37FB8ED5D2AF936D1DAFA55F2
        6DA3B5F4ABE4DB476BE957C9B68ED7D2AF936D1DAFA55F26DA3B574ABE4DB476
        BE957C9B68ED7D2AF936D1DAFA55F27DA3B574ABE4DB476AE957C9B68ED5D2AF
        936D1DABA55F26DA7B574ABE4DB4F6AE957C9F68ED5D2AF936D1DABA552F7347
        37FB8ED7D2A88EE593FEA7B5F4ABE4BB4F6BE957C9769ED7D2AF92ED3DAFA55F
        25DA7B5F4ABE4BB4F6BE957C9769ED7D2AF92ED3DAFA55EA4763ECD63FB7D9BB
        277F77C766ECFCDC49E2D8E6FBC39EB36446D124C009F13C2A22E9AB064A7064
        7DC64C993264C993264C993264C993264C9934A993264C99328D231122BA6857
        4A65755DE04DC09AB09AB09AB4CA462F2E23D50FB8BBEFC4B9EC57B6651174F0
        EEF09C3887DF31DC88511EF18881BC2BDD74E9D3A714A70AF0A55E14ABC29510
        6385EA87DC5DF7E25CF62E0E0B8460C5BFC654464C4C43EFB8851A779E69C288
        310707D50FB8BBEFC4B9EC57E5B902C8CB1067C5443EF3E0C444288F78C44844
        9314E1384E2B4E9D3A74E9EA57AA57A42E307D50FB8BBEFC4B9EC5709DD8382A
        07DD8A887DE3F962A2149EF18608994A6072417F9A74F527A93D49D39A13A74E
        9D444BBBEA87DC5DF7E25CF63A07DC542D7B88C5443E3F34C30A4A30A214463D
        9327DC88972833A88DCF543EE2EFBF12E7B11C3864169910E3F2CD8A8879F1B1
        3EE189817C19144622209CE1394E5394E53953A9D4E9A59C9299446E7AA1F717
        7DF8973DBC20694431134D8A887C5C4FB862FF003C188F785118711EF0AED6AE
        D6AED6AED6AED6AED6A4B3416577DF14D5A6AD3569AB5EA81CBFC8BBECFF00E4
        B9EDE390CC510642A071310F9313C031B2518311EF5263201E73930FD4FF00B8
        7BEBC4B9EC0931D9E6502B362621E7C18292CC00DEB11EF0A230E51113C5022C
        829930F6ABA15D0AE8574264C997AA1F7177DF8973D812103DCAF0A028192D87
        18DCE18A815251898879C6E694496120032A801C522E90A36ADC26E2AC91961B
        C65A70223DE14461E5138524A32E27D50FB8BBEFC4B9EC216818112C540C96C5
        E18D887DCCF9567C4443CE14C6D8108146C992704E5512624301BD3F2C08D214
        66C2CCA1C99C28C6319F11EA87DC5DF7E25CF618B564C0862B25A0E31B117B87
        765A7762A753EE09224CBEE46D59FD3684A649913C5FD464CDBDA33E07085113
        E0C9B9032D9C47AA1F7177DF8973D8816AC9811282B25B17ACE3621F26090866
        960A366102EBF49973A02D484480E5500231739936F8969DDFC9472EE66DDC9B
        902DC187EA87DC5DF7E25CF6245AB260431592D8BD671A4D912CE32E0C6640D9
        311389D3FE92C5432E697718289C53A7C738578529C6795478C21ED0AF0A42BE
        290AF8A55F14ABE15F15A85AB724C6557EA3A15EA8ABC682B8B62D7EA78110DC
        F543EE2EFBF12E7B142D5930227592D0BD671BC61EF1F9EE4B27B5466C884265
        122400840549EB57AB57AB4F5A925CC7111B260722BD50578ABC55E2AF157AB0
        AF1A55F34957CD253D69CD29CD2A7A7720A597D8A2E3D9B92290EEBA7C204181
        1282140C9CE07197D8BD50FB8BBEFC4B9EC58B564C08C8B25B17ACE3499A70A5
        888B45716D52A318E50818C416CDB8705B111B3219F3AC89D3A74E9D3A74F820
        CCB4414232AD3BB2628106044A17A9B68BDAFE43DF44FBFBCB9EC60B564C0851
        6B42F59C6F185AF6013220DE124306299326DC88F7E2222F6E384E138AD5EE15
        7856AF0AD5E57EA57AA0AF2BCAF2BCAF2BC6A4E6A4E6A4E5441268D09CD2A7A5
        4F4A634A63494C692A16ACCB34A55CACAD5D76B4AF53C0900FE45DF600FF00EC
        B9EC0D595AB2AE1A95CE0573815CE05AB2AE15AB35216ACD92086281B567896A
        718A2770C99A289174BFB7773706E413EE3A994CB2E61BCB36273288C3817E14
        CBD50FB8BBEFC4B9EC0BD6691A15EB348D0AF59A46857ECD2342BF6691A15FB3
        48D0AF8A46857C5216B05216B054AF887B57E9B42D7B311C2570A9043732E651
        0DBBF96E8814E53A74F89307CEA0408870629856AE84C1327142F82CDEC4F527
        15274FC09EA57B814B6B815EF7ABC55E2AF957CD2AF9A55F349578D255E34957
        8D255E34952DB3495EA61CBFC83BE7C4B9EC78B564C0851125A17ACE070284E8
        C0640B3B152339F6E040CEEB28DDFCD4AA50997F9AFF0035352A6A5441F76232
        10C542D4D361BA74E9F787A99F7077CF88F3D80F6A9F827B54FC139A7E09CD3F
        04E691A15E348D0AF1A4684E691A139A468578FF008F7292D1AB427348D085AB
        36AD023D943604B2059D3BCAA4F60C294485669B099315F04C684C98E233862A
        E9F72BA55D2AEABAAE702B9C0AEF026E04C9B81370261526AD3569AB4C01F6A6
        14A614A04112E7F827149D09C57A138AF42BC2B57856BD4D05C7F21EFA1FF92E
        7B02E598E68ABA15C14957056AE057456AE8A4AB82B5705255CACAB9595AB14A
        D58A55CAD444845EB266DCCE26513898162B80E049461C47BC62BF2C7CBB99A7
        0A49F07D4FFB87BEBC4B9EC0D59A0AB87DB0570D0AE1A15C341570D055D34157
        4D0AE9A131A15D3426DD16ACC84288908BD64CD8C81503EEC5923DF888D08836
        7815D2AE9A95D5755D5755D5755D5755D5755D576B576B5764C9157692AE884F
        2ABA295745255D0AE8A4AF534973FC87BE89FF00B973D81785215E1EF2149681
        192215E1484F595785255E09EB4C9D356A6DC65003DA5087BF1B03EE2A069C5C
        47BC6144FB86E40D2A07FCF78E7C8B3607A99F7077CF88F3D8F73494E69578D2
        A4B4692AF9A4A1685A324C4A8871786320540B8C5C47BC6044FB86040FB8A81F
        7109AADC64C993549AA4D526A93549AA4C993264C684D5263051164D098D057A
        99F7077CF88F3D80E69F82E552342BC6AD0AF1A94968D4A5B66196015F3405AC
        3405ACABE2AFFF00C3F157E3EC1F157EA5273926581525B10F6157856AF057C2
        16ACDBB31F7CAA579E18C95D40BE2E23DE3733E29B1F9A70A2258AF53BEE1EFA
        F12E7B159464C8A224381FE9E150C0931F90CCA070A5A7078C3DE3132986457B
        855EE157AA2AF5455EA8ABD5157AA2AF5455EA8ABD5157AA2AF5455EA8ABD515
        7AA2AF54548639A055E927102BD4E218FF0021EFA23FEE5CF603264C993264CB
        228C37088489B7AE433152E2E21A718881956505AD268EF1F52FEE0EF9F11E7B
        FA2C43E14AA419B0623DE311033ACA32EF02BD4BFB83BE7C479EC0BE6A57CD4A
        F9A95F35288E70C3248B58681A16B4D4B5A680B59C0B5A680B5A680B58680B58
        680B58680B5A680B5A680B58680B5A681A16B4D0342D69A0685AD340D0B5A681
        A16B8D0342D71A0685AE340D0B5A681A16B4D0342D69A0685AD340D0B5A681A1
        4BCE139A4D0A22D9A95F352BE6A51E3CAAF9A16B0D014B6CD4AF1A95F352BE6A
        D0AF157D5F578ABC5445AA60AF702BD5057B815FE057B815EE057F8140DA8839
        60BE014D40535015D142BB52715A715A715A715A6180C134BB9EA5FDC1DF3E23
        CF626207B77D669C288C18D18B65F14E5394E5394E5394E9D394E5394E5394E5
        394E5394E5403EE395EA5FDC1DF3E23CF62A207BB072E29B17C2A2378326DE30
        0FC181EA67DC1DF3E23CF60394E5395089AD39A4A729CD69CD2539A4A73494E6
        929CD25484FB22539A4A73494E6929CD2539A4A73494E6929CD2539A4A73494E
        6929CD2539A4A73494E6929CD2539A4A73494E6929CD2539A4A735A73494E692
        9CD2539A4A73494E6929CD2539A4A73494E7DB129CD2539A4A73494E6929CD29
        CA729CA729CA729CA729CA729CA729CA729CA729CA729CA729CAF523EBFDF1E2
        3CF61494E2E21D427DE912F8BCDBEBD48FAFF7C788F3DBCE5A77944BE373EF29
        29C3F523EBFDF1E23CF604A200FB28DE19B7844BEF08638DB364DA31E28B2265
        2D9364168E23D48FAFF7C788F3D806CF1CDB2658E44E5394E5394E5394E5394E
        5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394
        E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E7DC
        9D016BF5DA7CC171F9B240325AB2608D936F8E498C42729CA729CA729CA72BD4
        9193BFFBE3C479EC0BD57C15EABE0AF55F057AAF82BD57C15EABE0AF55F057AA
        F82BD57C15EABE0AF55F057AAF82BD57C15EABE0AF55F057AAF82BD57C140DA7
        9186320B3EF4FCB120E440D91FA4F2865408B50B4C415C4B262498DA2313EA57
        D7FBE7C479EC0D48A56A452B52295A914AD48A56A452B52295A914AD48A56A45
        2B52295A914AD48A56A452B52295A914AD48A56A452B53656A42D48A56A6CAD4
        D95A9B2B53656A6CAD4D95A9B2A1679B160BC41DEF9F0C5968BA80B008139518
        46C5B11E2A02C8694938AF52BEBFDF3E23CF606B2D55A16B2D55A16B2D55A16B
        2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B
        2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B
        2D55A16B2D55A15FB5568527396AAD0B596AAD0B596AAD0B596AAD0B596AAD0A
        1C7B55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB5568
        5ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB5568
        5ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB5568
        5ACB55685ACB55685ACB50CB2685ACB55685ACB55685036AD1E3491934231B76
        B336842D59E72D187B3428FF0076D08CB09342BF6801206D0B596AAD0B596AAD
        0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD
        0BD4DB025163F90F7D5904E6EF2E78603D9FFDBF15C9A172685C9A172685C9A1
        72685C9A172685C9A172685C9A172685C9A172685C9A172685C9A172685C9A17
        2685C9A147F4FB609ECD0B9342E4D09ECD1F15C9A172685C9A172685C9A17268
        5C9A172685C9A172685C9A172685C9A172685C9A172685C9A172685C9A172685
        C9A172685C9A172685C9A172685C9A172685C995A4F8A85BB7641C90F8A81366
        5BB6A1270A20F141F67C57244D20F8AE4D0B9342E4D0B9342E4D0B9342E4D0B9
        342E4D0B9342E4D0BD4CB65ED7F20EF9B46194F78F3C77D839660A45ECDF9002
        2720444605C2B11319CC26448110588566C9BD1E3289F6637D4AFAFF007CF88F
        3DBEC08B4C9F811DF9FA5F32E358278C24B40BE791445F0E32AFEDDA3026E913
        2209899F1DEA57D7FBE7C479EFEB1FA447D8AD59278969C13911B766D71BFF00
        5E751B25E592482FCF1FEA57D7FBE7C479EDFDF96FAB366CC8211F6A26D4A6C9
        90D0B8A2CF162F0C0FCF1BEA57D7FBE7C479EDEF26FF009584A46552002CE4CC
        8036636611080038A04C30B3633D4AFAFF007CF88F3DBDA4C5CB4EF3E358960E
        11B76844300AC9E2C0112819D0B529B2E0289C4442CF8AF52BEBFDF3E23CF6F5
        863728DE200F628131B53C194230B36A5198A36A3C6B4D640951044419B159D4
        B89F52BEBFDF3E23CF607E7BC3F3C7C42CF8F0724AB8D64C41962ACD88C4DE30
        FF0019F1D9B11EA57D7FBE7C479EC00B28C7426CBBC73A81C7C86148DE1F961F
        A95F5FEF9F11E7B0A459F179BFAA4B83EA57D7FBE7C479EC3CFF00D03F2FE81F
        9E07A95F5FEF9F11E7B139BFA367DF9EA57D7FBE7C479EC01229D4EA753A9D49
        46E3264EB329D4EA753A9D4EA753A9D4EA7C09D4EA753A9D4EA753A9D4EA74CB
        F353A9D4E9A54CA753A9D4FBB3A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9
        D4E9B73D49FAFF007CF88F3D82E9D3A74E9D64F6A7F7C24518C7D8A51009D3A7
        4E9D3A74E9D3A7463BAE9D3A74E9D3A74E9D3A74E9D343DA9A3EC2A01674E9D3
        A7453EE3A74E9D3A74E9D3A74E9D3A74E9D3A74E9D44C9ED5EA57D7FBE7C479E
        C264C9936E0932AE04646907B13264C993264C993264C9B75B7193264C993264
        C993264C8C8994A37193264DBAC9B7593264C993264C993264C993264C993212
        457A95F7077CF88F3D8A852B2A6E14DFD7732F52FEE0EF9F11E7B0993265C384
        C993264C993264C993264C993264C993264C993264DBAC9B77F24C993264C993
        264C993264C993264C993264C993264CBF352265EA5FDC1DF3E23CF603264C99
        3264C993264DB8C993264C993264C993264C993264C993264C993264C993264C
        993264C993264C993264C993264C993264C993264C993264C9932F52FEE0EF9F
        11E7B026A54D4A9A952421398A9A95352A6A54D4A9A95352A6A54D4A9BD91534
        72454D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A5
        4D4A9A95352A6A54D198454B0A54D4A9A95352A6A54D4A9A95352A6A530232C5
        4D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A54D4A
        9A95352A6A54D4A92109CC54D4A9A95352A6A57A9B64BD9FE43DF40FBBBCB9EC
        2CD8C817DE79E618C928526F3FCF0BD50FB8BBEFC4B9EC1CD8ECD977848B2ACF
        39DFF9B2E1FAA1F7177DF8973D819BDD2E2B4C1024C233489F813F027E04FC0A
        4B5EE91486A0B8B66D40B93250B59559D0B59559D0B59559D0B59559D0B59559
        D0B59559D0B59559D0B59559D0A4B64FBACE85FAED46D3969332BD5043F5C685
        188C83FC414232FB95FA82BD5057AA0AF4A732BFEF82BD52BD52BD52BD52BD52
        BD52BD5290C72040131339DE39B11EA87DC5DF7E25CF63A25B0E4BE58FF8994B
        29329267C48B644BC9078533CA11B508C240142D07C88931244408224CF294FB
        B12F89897C9BC73627D50FB8BBEFC4B9EC6C29524984496E146D196356652A95
        B2E1C4DD0F09CE45087B00950B328394A811ED2A23F5648CCA2536EC48902629
        8A651DC74E9D44B0619D3EF0CD9315EA87DC5DF7E25CF6320A184F084E57FA45
        D1F9E048D93078B4E619D7143597421213292AD03C9962B3B44A8061819A7500
        D3EE90A01664CB2414260E5406FBF543EE2EFBF12E7B1919CE19B0185E861443
        AC877042532421957FA8DF8284200480850238D6728500200B99D407BF0009CA
        03766DC86E800C62A14EF0E0C67AA1F7177DF8973D8B89F761C05E2D986559E7
        C4F1EDCF25913A301FAB215C60D3ACC5C059CB60E7321C095D403E044DE356F0
        97DD8DF543EE2EFBF12E7B159861C4CA580CE89B4E5F10232878665C72C20409
        A2A13D998A249CC0297DA724513919470227DD811994548A40A2D95718B4C378
        7B31DEA87DC5DF7E25CF62A187187E96128902BB58576B0AED615DAC2BB58574
        5215D1484CEC22142D8005A9220C501C960A22D7B02043990852ACD930333AFD
        3BB184AB32804C997FA44CB363E18FF543EE2EFBF12E7B139CB9C3225C910245
        CAA172A85CAA172A85CAA172A853D0A001A159803688C8254D18CE8D978314E8
        162A01B2E0410130DD0A18100A01863736F2F543EE2EFBF12E7B1119CB61F12C
        DE37889826C39013056E485A9BD881E517CDED46072A82B2A1397510F9167C9B
        BC270225F07FD45CEF3CD971BEA87DC5DF7E25CF61C4B09F2E1BD2AF702BDC0A
        F702BDC0AF702BC2A57B8165E042C83002599120CA18A7847DCA44E892E5673B
        990E5502EA27DD8119B078C5E6FE83EA87DC5DF7E25CF61429425801844960B8
        D6A8C8371AA4D526A935488B424B53C2A42C9110FED0ADE41201EF405B120941
        CA14210166580A944EE44991669B02244814B28CB888961FD0BD50FB8BBEFC4B
        9EC186550A4E18E333C2298D2531A4A63494C69298D2531A4A89B318C8012540
        D9842510251FD0EE25752084180FF0EA561221B900C1F024F794042033EE4436
        4522860001A7391406F981C4FAA1F7177DF8973D819B2A8CE70F8B61C5E2AFD4
        AF1A95E352BC6A578D4AF1A95E352E2DAB7C522506447F5F1ED1900004E871CF
        1AD3C7F2500FBB00FC1819CA8527022C540C8774012C54279CFF0043F543EE2E
        FBF12E7B038C42886C8A4C13C572CAF034ABC2B57856AF0AD5E15ABC2B57856A
        22D0AD5E15AE35A2090D059F7419E618312FC18113B92A816CBB91378EFD9164
        C2F543EE2EFBF12E7B0A2242A0643BA6D1F70CEAE1A55CAD5CAD5CAD5CAD5CAD
        5DFF00895C30F6AB869448B3002494CEA2819B70C583295E6C0896189E338174
        6FFF00CD4B83EA87DC5DF7E25CF61CAA05B2EE4788602402069574D6AE9A0E95
        74D074ABA683A55D341D2AE9F7C5478861EC2AEDAAF4A8104672182003090291
        84FBB09860669D4BBB050C0CC2F1500A224389CF9167CBBEBD50FB8BBEFC4B9E
        C4DF1908C8AF857C2BE15F0AF857C289B608982BE1002D024B01B901BBC5133E
        0003D880CB812E040280A7025A77FC8BF2DCF543EE2EFBF12E7B11C5B378CF90
        6E443E04AA27DC3778D6AF160660B3E032FF0035FE6A0044A96CCA55DA95C575
        44D90322BA15D0AE857429043D985946FF00C9B9EA87DC5DF7E25CF61C4CA587
        B51265267DD90473ACF914A20A27DDBBC7224174652A25470A5A571AD0979230
        3364C6C92FB164390EFED0BD50FB8BBEFC4B9EC38F1601808891356135615DAC
        23256137BA210FD3ED64D584D585FAA41398CA800C0420B365C2072A89BB6702
        0A18DE159346FF00F543EE2EFBF12E7B1500C1CA787B13A94C7DB8107C3007BC
        A80DE1F96E326DFB22C8BD50FB8BBEFC4B9EC4C034E54376054B28CBB99F0C00
        224ACA673811A3199E61839F7F7AA1F7177DF8973D81E5CDB3A85E5CDB3A85E5
        CDB3A85E5CDB3A85E5DF6FFCDF50BCB9B6750BCB9B6750BCB9B6750BCB9B6750
        BCB9B6750BCB9B6750A4FE3B0193FDDF52BCBBB5F52BCBDB5F52BCBBB5F52BCB
        BB5F52BCBBB5F52BCBBB5F52BCBBB5F52A3FFE72266FF9CEA1796F6CEA1796F6
        CEA1796F6CEA1796E4FF00ACEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA17
        96F6CEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA179
        6F6CEA1796E5CBFEF3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A
        85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A8
        5E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85
        E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E
        5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5
        ADB3A85FCFFBC7FB5FD9FF007FDF7DEBDB7FB3C6E3713FBBDBF9DE738B1808C2
        2F0FC17FCBBEA9DBFF0077CE7E0BFE5DF54EDFFBBE73F05FF2EFAA76FF00DDF3
        9F82FF00977D53B7FEEF9CFC17FCBBEA9DBFF77CE607FFD9}
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 147.401670000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 7.559060000000000000
          Width = 275.905690000000000000
          Height = 185.196970000000000000
          Frame.Typ = []
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000032000
            000160080600000043B71D2D0000001974455874536F6674776172650041646F
            626520496D616765526561647971C9653C0000032269545874584D4C3A636F6D
            2E61646F62652E786D7000000000003C3F787061636B657420626567696E3D22
            EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B6339
            64223F3E203C783A786D706D65746120786D6C6E733A783D2261646F62653A6E
            733A6D6574612F2220783A786D70746B3D2241646F626520584D5020436F7265
            20352E332D633031312036362E3134353636312C20323031322F30322F30362D
            31343A35363A32372020202020202020223E203C7264663A52444620786D6C6E
            733A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F3032
            2F32322D7264662D73796E7461782D6E7323223E203C7264663A446573637269
            7074696F6E207264663A61626F75743D222220786D6C6E733A786D703D226874
            74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C6E
            733A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F786170
            2F312E302F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E73
            2E61646F62652E636F6D2F7861702F312E302F73547970652F5265736F757263
            65526566232220786D703A43726561746F72546F6F6C3D2241646F6265205068
            6F746F73686F7020435336202857696E646F7773292220786D704D4D3A496E73
            74616E636549443D22786D702E6969643A373845424139464332453933313145
            38384135324243373835443934393734362220786D704D4D3A446F63756D656E
            7449443D22786D702E6469643A37384542413946443245393331314538384135
            32424337383544393439373436223E203C786D704D4D3A446572697665644672
            6F6D2073745265663A696E7374616E636549443D22786D702E6969643A373845
            4241394641324539333131453838413532424337383544393439373436222073
            745265663A646F63756D656E7449443D22786D702E6469643A37384542413946
            42324539333131453838413532424337383544393439373436222F3E203C2F72
            64663A4465736372697074696F6E3E203C2F7264663A5244463E203C2F783A78
            6D706D6574613E203C3F787061636B657420656E643D2272223F3E3B6DFC8B00
            00B8544944415478DAEC9D059C1C55F2C76BD693DD64E34E0CB760871C76B8DF
            FF700F040B1E0E8760C1DD3D5890C3E170087010DCDD354182C565372B23FFFA
            F5EBF1999D9E99EE7EDDD3F5CDA7B263DD53FDA6E5FDFABDAA0AC562310A4D7C
            810421B8C494C5525F8AA5BC97F99AC7088588A251A2258B958F789E8B6884A8
            A191A85B0FF558100441288E681F5ABEF663FAB0E7C1C6E9B6835F8A854A5B55
            A8D072A1225FB7F01DB12ED69173B5395E4CDFDE8C0F84AA32DEA966AB4A79A1
            2EE3F3F0A83EE5859A1CEB4BFD8EAA8CEFAFE27FA1C4637C36FDFDEA94EFAE4E
            733BC4CF1397F550E6E76349BFCD0F84521B3394FA5EEEB688253E1FCAF15B63
            3B6289C7A15CEB0AA5AC3394EF3B941FA150113B4BDA76A43CAECAB58EAAACF5
            E5F23556957C9CB5DE2423F98DB5F9EF8E6C1B87448008820810411004C10222
            404480646C67BEB6100142ABB2ADCEB621DB3AE6E33837880011041120822008
            821544808800C9D8CE7C6D114001B21A3F86E8D88A6D15B635323EF805DBB5FC
            9DB7F3DF4E112082200244100441B0820810112019DB99AF2D02204046B2ADCF
            AFB119A31CABA57896BAD093FC991B59A43CABB62B6436B1081021F088001104
            41102C2002440448C676E66B8B0A14207D78814DF953EBF2E32DD956A4F41F2F
            157432EE60BB91EDC3E428890810414841048820088260011120224032B6335F
            5B54800069E21731956A6B32463A8C518EEED43573D930C5EA46DEEA1F53FD10
            012208598800110441102C2002440448C676E66B0B9F0A9015D83660DB9C6D13
            B6C1648DE96C37B34DE615CD33B73ACD0F11208290850810411004C102224044
            80646C67BEB6F08900E10E01FD9D54E03884C77A541C9F1302CBAB4277F2DFF6
            E4EF200244102C200244100441B0800810112019DB99AF2D3C2C4096E6FFFF41
            C9A955C3A878DE62BB8AD7F5A0DA84F4DFC8DCEA343F44800842162240044110
            040B8800110192B19DF9DAC263020481E35BB0EDC0B6165B2D95C654B6ABF90B
            9F35BFD8DC0411208250022240044110040B8800110192B19DF9DA42B300E945
            6A9403D9AAB6651B4DE5F1107FCB4DFCF725F30B29EDAF081041280511208220
            08820544808800C9D8CE7C6DA141808C60DB94543CC7366CBDA97CFE43986A45
            F47EDA778B0011043B1001220882205840048808908CEDCCD7162E0990954889
            8E7F9A7FEBA87CC26CB7F2F6DEC07F3FCBB97D224004C10E4480088220081610
            01220224633BF3B5858302640D52D3AB7634FFDA053A06B7B2A8B982FF7E9B3D
            AD4B048820D88C0810411004C10222404480646C67BEB6B059808CE1FFB72725
            3AD621FBB98DBFE432FEFB75FEB81211208260332240044110040B8800110192
            B19DF9DAC20601B22AFF07C1F17F6C7F23DB31BE7F8A213C42F445DC7F112082
            E01A2240044110040B8800110192B19DF9DAA24401B20ADBCE6CDB914A9DEB04
            E800DCCE7E5DC55FFC65E6688B081041700D1120822008820544808800C9D8CE
            7C6D518400593EA4463930C5CACE988E4C3AD96E65BB86EDEB34E12102441074
            200244100441B0800810112019DB99AF2D0A0890A12C40203AFE45AA5647AE15
            DAC964FE8ACBD88DEF321A814480088236448008822008161001220224633BF3
            B5450E01D29D54BADC5D49D5EAE849CEF300DB65ECCBFBD9B126224004413322
            40044110040B8800110192B19DF9DA2245806CC10F7721253CFA913B3CC1763E
            DBBB495F44800882C710012208826DACC83694D4D51AB6806D3ADB5FBA1D136C
            40048808908CEDCCD31663B8D30FD1B107DBF2E41E8FB15DC1BEBC96EAAE0810
            41F02422400441B08D66B66E6CC3D856601BC536908D0F3EE3CAFC15DB376CEF
            B1FDAADB59A14844808800C9D8CE941787900A2687E8D884DCE525B68B59683C
            9FF437F9A6081041F02422400441709426B60D48DD09DD886D2552A2642EDBEF
            6C8FB27DCEF626DB12DDCE0A5D2002440448C676928AE7D897547C472F72179C
            372E6487EEC5937C81EF224004C19388001104C17520449076131970D64C79FD
            53B667D8DE677B8D64EA96B71001220244F9B532A9988EBDC8DD295671BE65BB
            9C8CEC56C90D10012208BE42048820085A4160EA16A43A33FF97F1DE076C5349
            4DD99AC6365FB7B3814604489005089CDB9DD471BA83C59FC06E66B15DC0ED72
            2DA98282691B200244107C85081041103C037A68DB909ACE81691D0D29EFB592
            12216FB03DC5F619A59FB904A71101124401B206BFB00FA9D88E61D65BDF56C2
            6C57B328B8803075332B0645048820F810112082207812F4CCB62575D71505CB
            BA67BCFF35DB8BA4C408A66BB5EA76B8E21101121401C217CAAA1DF9D17EA446
            2799A8F586B795AA5BF8BF4BD8A9EF13A240048820540222400441F03CC8B0B3
            13A95191F572BC8F54BFB8983F4E2A234E9B6E872B121120952E40C6F07F6349
            8D762C65BDA51DE1496E9F49BC5D1FC69D140122081585081041107C05326AA1
            83B4275BFF1CEFC7C508B26B4DD5ED6C452102A4120508DE4040F93EFCEA3FAD
            B7AEDDC4E29BCA8223741E6FCF7FD3A782890011840A4304882008BE04293F21
            420E62FB5B9ECF205BCE23A67DA0DB61DF2302A49204C8D23135C56A2C37CC28
            EBADEA18B87180188F5BC9140C224004A1A21101220882EF41E0FA61A46245F2
            318DED3F6C0FB22DD4EDB02F110152090204311D10EDBBF3EBB92A0ABA0D02CC
            2FE40EFBF9B15855BBF257048820040011208220540CA82902218279EC0D793E
            830288F7B1DDC3F6B66E877D850810BF0A909EFC18A38507B2AD6BBD059D2211
            7C723B196975E90774D863B1785B890011840020024410848A6334DB116CE3D9
            7A74F1B95708533E881E60EBD4EDB4E71101E23701B21CFF378ED454ABA1D65B
            CE71FEC7AE9ECEFEBD1D6F1B11208210384480088250B12093CF216C47B1F5EE
            E273DF931222B8233B4BB7D39E4504885F04C8C66C07F36B7B65AF54078914BE
            DFB19DCFED7267DAB43011208210444480088250F10C623B8EED48CAAE2792CA
            3C522204B507BED1EDB4E71001E2650182DEED9EFC3E46FD36B1DE4AAE801A3D
            E7B25D4EC64863358900110122041E1120822004068C889C4E6A6A5657E08477
            1BDB756C9FE876DA338800F1A200E94B2AA8FC60B665ADB78E6BDCC77EF23117
            FA31E9BB08101120822002441084E0B12ADBC964D43E280802D62F23A33E41C0
            1101E22501B21219D30BABC6914A49ED355EAB32C47EE8D5ECF8141120224004
            4104882008C10573E5CF61FB8785CF2246E442B61F753BAD0D11205E1020D867
            9160610FEB2DE12A7FB14D62BBB18AE2FE8B0011012208598800110421F0604A
            D6696CC30B7CAE8D547CC8256CBFEA76DA754480E81420A8520EE1B18DF51670
            9D2B797B2FE0369A4DA42688890051CF44800842162240044110183E41D019A4
            A666156211DB356C97B22DD0EDB86B8800715B80A0C78A9A3687B3AD677DCB5D
            E755B613D8DE4B9D26260224B9AC081041C84204882008420AEB108AA3116D6E
            E1B3334989963B743BED0A2240DC1220B5A40A6A62C46305EB5BEC3A18053C99
            42D5F7265F1201627A90B6AC081041C84204882008420ED001C408479385CFBE
            452ACDE8B3BA9D761411204E0B906652FB1D6CA4F52DD5024600CF248C0086AA
            535E1601627A90B6AC081041C84204882008421E90B617F11E7B5AFCFC3D6C13
            D97ED1EDB8238800714A80603F63D1518574BA038B69470DBCC87622FBFA7172
            3B4480A46EBFE941DAB2224004210B112082200805D89FD468487F0B9F5D486A
            0AD7C5BA9DB61D1120760B901144B547911AF1B032D2A6933F785B9031EE46B5
            4D2922400448DAF69B1EA42D2B024410B210012208826001DC994661C25D2D7E
            1ED3B28E657B47B7E3B62102C42E01B232DB045275681A4B693F9799CC3DE653
            88EAE7A9A72240D2FE8A001184521001220882500407B25DCBD6DDE2E73157FE
            24B676DD8E978D08907205080A6042941E505AABB90EC4F3E984695769F12A22
            40D2FE8A0011845210012208825024CB11EE0A5B2B6008BE61FB37DB73BA1D2F
            0B1120A50A108C78204DEDB8D25ACB75A2BC01A7B2FF972445820890E4431120
            82600322400441104A0499AF4E2FE2F3180D419D9136DD8E978408906205080B
            8FAAE3488D9AA1014B6B2C57A97A8490482144DF2A81200224F53B92FE910810
            41280F112082200865F07F6CB7B3F5B5F8F91FD80E669BA6DBF1A21101625580
            AC1052235E87505A4FDDD3A0A6CD2944B5F724374D0448E67724FD2311208250
            1E2240044110CA046954A7B06D56C432E75371A327FA11015248808C22A3134F
            48A75B4DFEE17AB6D342A8E961D440241120224004C1694480088220D8C4E56C
            C715F1F9D7498D867CA3DB714B8800C92740962135E281DFB29EFCC34704C114
            AA7A3EB9352240940B224004C1614480088220D80852ABDE4DD6BBCA8807196F
            2EE36D4480640A104CBB434CCFF1E49FA9567150D3E32CB519F14E331001A25C
            1001928FA5C97A0AC0256CDC3BD3321C8826C7396ABEF9BCC45355D9F833E0CF
            15022440BA3529011209EBF6DA2D0690F7ABEAEAE05BAA8494A882975983EDBF
            6C238A58E626B62328FD6CEC2D4480C4B7174503914EF718B21EFBE315FE4746
            5AE8D087C9ED14012202C41ADDD86691F5E235F8055199558700C177E2423F9B
            F4888FF877CE31FDD025C25A48FD069944CDB6C1FB7F92FA5D7F31FD9D69BEE6
            3001112078AF8A7FFEC65EBC1754076514E461B65D743BE14120CAFED2ED8450
            F1F4637B808A8B0BF9806D5FB6AF753B9F131120F5BCBD986A7524A9B81F3F81
            7EC624B6CBB2364E04088900B1C68A6C5FEA7642701C0893196CBFB2BDC7F615
            1BEE58FC64EFD7044480007C0E22A4A997FA1BF3434AC4B2C03EB3826E273C06
            C43D04482014A8E009EEA0E2EA3FA0A3B83FDB23BA1DCF22D80204D3E4505072
            E9D2B6582B53D98EE2DFEAFB9C1B2702844480580377341FD6ED84A08556B6EF
            D85E667B930D81630BCA5B658004088886896AF824DAA38F12205EDDAEF2E10D
            A4DFD9EA743BE2315E62DB5CB71342E0C05CFB49452E939CA3EF158229407660
            3B936DEDD21B4E1B73491540BCC3D8FE7C19BC44809008106B9CC6769E6E2704
            4F80D81A8891A7D91E659B57FC2A022640003EDFAD91A8A1A992A7626DC8F69A
            6E273CC8B56C13743B2104126448BAA5C86570B3716FB64EDDCE1B044B806CCE
            2F22A5EE16E5369B269E203555ECD7C4F68B00495F460448D1DCC9B69F6E2704
            CF81919027D9EE622B62A70EA0000108446FECC9E7D326352A5279A000D664DD
            4E7890C34905FB0A820E50B410378B8A8947FC9C6D27B6EF8B58C61982214056
            2535F2E4D7F8B945A482E3EFC8DC4E112019CB8800299A77D8D6D1ED84E06910
            C8883B6D53A860B69F800A104CBFC2671B7B13D5D456E248C815A4B2B408E96C
            C2F68A6E278440B33EDB736C3D8A5806A3DDE810BFA4D5F3CA1620C81A8894BA
            C716F72D9EE2415253AE7EC9B59D2240329611015214F8F5FF60EBA5DB11C117
            FCC0760DDBCD9457880454800023289D3FDFC422A4AAA6D282D21174B8956E27
            3C0686BA06934AF020083A5999ED45B641452E87E0F4BBB4795D9902A48154A7
            1DA306FD1C68353740728D53439953FC4480A4BC2E02A45C3034F8A96E2704DF
            81A17BC40DDD99FD56800508C0C847358B8F9E7DCDA6A81811F233F92F4DA4D3
            A0DAB4640513BC02AA67438414532B04E02EFD255A3CAE3C0182A2919348FD16
            7EE531B6A3D86666358D089094D74580948B64C012CA611ADBE96C6F245F0AB8
            00011021F5DD89BAF754EBF0BF08419A4814DBF35B655EA7C1DC7BBFCEEB162A
            1364AB7B9D547AFD62B892ED38D7BDAD1C01B229FF7F06DBA60EB79893A0B618
            84C7DD799B460448CAEB2240CA0519192ED4ED84E07B50880877D1A222404C20
            421ABAB1F5AC0401B22DDB33BA9DF02038774ED4ED842064C0271D23ADFACA45
            2E772FA93BF8EEE17F0182918E73D9F674A5BD9C03096726705BCCE8B2694480
            A4BC2E02A45C2403966017988E329E0FB7574580982033168A14623424E2EBCC
            58B8337AB96E273C083A6BF7EA76421072808074A4CD5EADC8E530856B6B326E
            26B9807F054813A9E072DC806870A5AD9C01B19CC773D35F9FAB2D4480F84E80
            3C4F3EE25DF267311CC1BBE0847C619AC008AA003196E7BFDD7BA9CC58FE1D09
            B98DED40DD4E789035D83ED6ED8420E4A1995486B662450896417ADF858E7BE8
            4F018294E4A89F566CAC8DD798C67628DBB7F9B2798900F19B0039752AF984EE
            A4024BFBEA7644A8381E611BCBB6C478165401023015AB8ACF143DFB25D7ED3F
            DE625B4FB7131E0375721094BF48B72382D005B8BE7F44C5279040AD10141F5D
            E0A877FE1220EBF07760DAE5668EB6893BA81B852622404480B8CD18B64F743B
            21542C5F90BA8BF663A00508C0FAEA1A54A142FF65C6C27CF21F496E5464F236
            DBDF753B21081618492A26647091CB7DC5B601DB3CC73CF3870019462AEBE3FE
            8EB5837BA0A6D791DC56EFA4BE2802A45204C829CF914FD8991D7F44B7134245
            836257DBF359E04DF534A002046024A4AE9BCA8C65C4C87874FBB35993D4454B
            4807B5132AA143220483D16C9F919AF9500CDF912A74E84CAD1BEF0B10D4F240
            907931451EBD4A22D399D5828A2240448038C5A96C17E876420804C8A2F45CA0
            050840207A63335143133FEED4BDA556D98B24D03A1769531804C107FC8D54DC
            67B127352418C1742CFB45887705C8766CE7B3AD6EFB36BB0FA6DA8F27554C56
            6DB208101201A217DCC11BABDB0921306CCF876232956B1005483C3B18A662D5
            36A85111EF83BB7FA7EB76C283ECC0F6B46E2704A148D0B12E65BFFD926D23B6
            B9B67A13ED4D54F3032D68DE936A622A25936601825819088F4AE91BA1A60746
            71D2A6D18900511FAA4001F22CF904CC615E57B71342A0601162D69308A40031
            B71BD6D4CC17DE3A2542ECFE0E7B41B1BD9D743BE14150E8ED6BDD4E780F4FEF
            CB82E200B6DB4B580E717D6B91D209F610ED4F7BD73F4E77F798448BF9B48B5B
            321A05C889A48A0956C2742BBE8019D3AD6EC9B9C922404804883E7080FDC0D6
            5FB72342E0D892906B3EA8020460FDD5D5AA4608F06A5B283E655B55B7131EE3
            27520264896E473C47D6855CF028E8689F53C272C888F70F367BE6904687D103
            3D0EA7DD1B5EA13911D5D5D220403625554C774D5BB6493FAF934A9BFE5DDEA6
            1001422240F481BCE092BF5ED001A6F9FE8DCF0C9FE9762427389821085A1739
            27400044484D8D0A4A8F7FA7F7184AEA22D64DB7231EE325B6CD753BE14D42CE
            1D3382DD945ADF671ADBA6B678101D4AB7369D4407757B9AE69933525D1420C8
            0A763155CE742B702E6FE799853E2402447DA8F204C8C9CF900FD89954AD0641
            D001B263E10EF21FE4B57E374E1611D6486DADCE77A4227CC56DE8CEDDFB46F5
            D87B60CEF7ABBA9DF020D7B11DADDB892C627DD86A757BA12E9E5573F84198D2
            3A15821779835496AB6241FF61D7B2BF5D9F00398C54AC479FB2B7C11B4C673B
            88ED652BB3204580A80F8900D103824ACFD5ED8410683E24CC27F6A200E95842
            D4D9E6CE74128C7C3434AA3A21DE0B4A3F9CED06DD4E7810745E6ED6ED84823B
            F9B11E6C3D69A5DA7768F9AAF9B438A6AFD3DF40115A106AA0573B59BB8620E2
            314B4D448887692215605E6CA1427023DB11657DBBFB020471AF48475B49357C
            90500881E6F353B6B3EBA61001422240F4711FDB9EBA9D1002CFDD7CE6DB4FB7
            1369E06401F10111E29600A1285137EE44D6D69B22C4335358AE653B4AB7131E
            04D34FA6E976C298861FEDCFBB4B94A6349D45631B5E5473E8358AFAF8F5F3EC
            D6036952EB697CEDFC554488F7C1946CDC102AE547C2CDCCF34BFE66F70448A3
            3935E9241BDACB2B603AF304CABC19220224C002E4245F0890F748E5041704DD
            1CCE87E84DBA9D5098278EB6163525CAADB9EC4665F490CA8C859395772AA5BF
            C0B6856E273C462BDB726C33F5B9808B28EF9F11D496EBA0E77B8DA52D1BBEA0
            367E69494C6F571F9E35F0AEDCC04E9CDD628A90EA5FF85516F52242BCCC1E6C
            F797B8EC3E546AAD207704C83F498D7A2C6D535B7901C4F0EECF978D4FB31BA2
            F0C22240D4872A5080783E353CE63C2203562FDD8E0882C90A7C987EA3DB09E3
            408F8689DA5BD599D5CD8108888EAA6A33289DBC10948EABC6F76CC3753BE231
            305D6565BD2EF0BE1119C9BFD03BF4618F33698DDA5F8DCE1BF6182F8C9DA11F
            D9C88E74E3C3E9BC96FDE88CD6B378DF6611121211E2719009EAF81297DD98ED
            B5E216E13D363A92AE6B9C4847767FC4090182696597B3EDE64C73690323D313
            D446E76A88C22B1001A23E547902E4C4A7C8E3ACCD0EBFABDB094148E16B3E53
            ACA8DB09E32414EE20EA68CD3801BA04A65F55F3C9BAB147B25E883E70B7F07B
            9D0E7894C7D976D4F6EDB8D68447D34AF52FD017BD2618CF6745D465D70BE223
            4EBA08D99745C8D93212E20F5E2125268A05F3EC56629B617D912A2371C2034D
            C71A69786D16208790CA70D5DBE9067311D4F640A0F983C98DCED51085572402
            447D480488FBE06EC08365AF4510ECE552D23D3F1707727BBBCA82A52B9528D2
            F3D677636B508FF5814ADF4FEA74C0A3207947C13497F68360F3EEBC6F0EA7BF
            373C436FF63AD6787516B239EB6E913CA03FD9644EC74A8E84484C88C7C10C09
            DC7828A5E3FE2DDB2A64B54648AC27F71767D0DC9E7B1AD3F6DACC5E70990204
            37B290A56E33575BCD795E2695327946FA46E76A88C22B1301A23E2402C47DC6
            B1DDA1DB0941C8268660C84FCB5E4D29E02046DC47FB127DE243B5811AF9A8E7
            CE665DBD4E117232DB451A1BC2ABEC4D2A89878BB0F88822C56E1D5DDDE3229A
            D0FDBFC6AB5E161F715245C8392DFBD359ADACDDAA66AA0C592242BC0A3AEFFF
            2B7159CC41DFC1D22763CDDC5F9C6EA7004171C58984646C95C525A4CEC73936
            DAE26B991F110142152A403C7FD3109D8A93CB5E8B20D80FC4C76A5ABED91020
            9D6A04447721B5F8D42B64C6425C889EA074DCA418A7B7213CC95AA43206B904
            E6C9F7E33FDDE8BEE62369CFC6D7A9837BF50B62DE171F7152A7639DD3328E45
            08F713AB7F25356B474488474166AB89252F1B8B9E5EF053481F5DFD3BFDD9BC
            2B35F3FED15ABA005987ED2AAAACD4BA602EDB217C397A34EF274480988800F1
            8B008183D6EE500882FBA0F684FB59B1BC2440805185BD4A15294C64C672D5AF
            B749E5CC17922C601B466A2EB6C39899AEA283F86F3B3DD47C32EDDAFD2D5A10
            561D7A0FECA1456F0DEE727737A6638DA5335A27494C4816DA134F64B8137B93
            4AEFD4A32EC535F9DFC68E3C8255F40FB4B0F78E461775496902E442B6537437
            9503A000ECBE6CBF7479391201622202C42F0204F33497D5ED8420E401733306
            B0B5B8FAAD46FCC71277D3EF16C2C88CC56799861E6E67C662D543BFB1F5D4DD
            041E03E9CBD771E7AB549ADD7E756FD057BD0EA37E7C5D9D1F312AC6F84E7CA4
            6C516224E4FC967DE87423301D232122428C738ED70A91C66243F93F64CCAC2F
            61690480E711066125AC439DF46AF381B451DD37342F6590D7A200D992D46C8E
            3575379303A4B59D08101120A60769CBE61620273C411E864F28F43305FE6C2F
            789CABD9FEEDDAB71917FFB077463F528108A9AD23AAEBE66666AC35C8D56946
            BE610ADB018E7E4308F9741BB88F368206D4BF463FF5196FC44FCC35FBA61EDB
            3B8B263526E4FCD67DE9F49649664C4840A76385CCD4DF88F5F2DA8F6B9C6A62
            A8F1714F114BA13ECE783E8F3E937B855195423AB490DEEDB507ADDDF02BCD09
            AB77E3BF7E0101821E2BA687959A2ED8CBE0A6DB38B687535F14012202C4F420
            6D593F0A907282CB04C14D86B0FDEECA3719A31F6DEA0EA4D704083044488312
            22EE0810045AFF47F7667B106469BBD4B9D547D4BCF868334D6ABA8ACE68BAC7
            B80EF921D8BCC8AD4C8A9096B1743AA6630535301DC733CE3B5E3CF7C43B51B1
            183AC4BB5858E201DE8623D9E6E4D850B52E8C7CD47C496FF79848EBD6FD4C73
            22D9BF781702044551AF275508B4D2400D15DCDCF821F30D112022404C0FD296
            F5A30041F19AAB753B210816B899ED30C7BF0527874898A8A3CD7B1D8054D041
            69E8C617EF7A37A66A9CC7769AEE4DF620FF6273E804CF2A23DA9BAD175DD73C
            918EECF9B4F133CFA930F1112767B1C22006A687DBC97B431F59F4E29E1C7E9C
            C63CEF23EDEEB17CFEBCDE3887669D474DF1115E9AB6EAF6304D6D3ECD783A3B
            92E82EA67F3ABB39EA4865823A4677433804D2061F9DEF4D112022404C0FD296
            CD2D408E7F9CBC4BE8065241BE82E075302B1855B8673AFE4D9D6DE614080F77
            048CA0F490AA1182B8106747421E61DB59F7267B101467FCD1F6B58610903BC0
            B89ADFDC7C2E8D6F7A8E1671E7AC33E683AE69194084743703D393232101A813
            82E317B166FE101F26B15DB897FA70C66BF8EF433E2F1DC8DBF149427CA49D47
            51BFA689FF2C43DB74FF0F3DDB7CAAF1EAEC686EF161AC35BD49501411FD9695
            75B7800360F2D9C16C7776F521112022404C0FD296F5A10029B9CAA920E8A0CB
            3B43E58303973B021D1DBAB7D31A31F34E6243776783D243A16FA832A7399403
            82F29722258C6D84FB20E1917C8DFE8CA6F7D99F46D6102D8CA89E895FBAA6E5
            902A422E6ADD9B4E6D3997AFB7BFF0C65768603AC447B8538DBA7A71DA5557C4
            624807BB53CA2BD7B2FF13D436A4888FC43685550AE950842EEA3E994EEA7EB7
            F156A12985299DDA4A2E19F025DB1E6C9F17FAA008101120A60769CBE61620C7
            3D461E05C73C2EA2FD753B220816412F048913E63AB276230014B79A3D187C9E
            0FC48354F3A15CD7E09400410632E447ADD3BDA91EE379B6ADED5B1DBADE7C61
            EE1CCD2DFD21CDED37967AF3CF3A2F9C98B012188CE9586CDDAAE322E41CDEC7
            31F05981232138663B96A8C0736324D327BF343A6EB150333F9A4F4A84EFCEE7
            CC479282235380604746FD9A5A7ABAE7A1B45DF70FA99D7FE88516EAD7709320
            F52F52B18FD1BDD90E713FA9AAE64BAC7C5804880810D383B465FD26405660FB
            4AB713825024484778B1636B87F8F01B8608A95595D2ED17219BB0BDAC7B133D
            888DA3710836EF6E049BFFBDE135FA6FAF9368205F3767452A33DEC3628B2462
            422E68DD974E6B39BBB202D38D4C7B7CDCB62F8ABFA0DBA3D288C536E1DF631E
            6F4FC694AB54011251353E421D34B5E781B455C367340F71F6214BBF24AA999F
            A37B331DE478EE345F51CC0222404480981EA42DEB37018239DD8FE87642108A
            643ADB68DBD78A8336DCA1A642847CD8C189A7E7ADAD571D1BFB184F2A018090
            CE116C3796BF1A049BF7E4FDAE3F9DDD7C219DD97C9FF152A565BA2A85541172
            61CB589A88C0F4AABFF8F844A7DDA71DF6380901821A963E1EE38A991DB854F1
            911020E6585694C547DDFBF46AE379B451FD97C9FA355D6FF24AA4463D36D2BD
            890EC13B32EDC736B5D8412F112022404C0FD296F59B0099482A7FB620F88D6D
            D99EB3758DB8904280F8B93300DF310A12AA352BA5DB02B2E44DD0BD651E04B1
            73AF95B50623D8BC1FF7C6EAE9A25E57D1C93DEFA725115501DAAF7BA0DD1831
            2130EE475CDABA2F9DD48ACCC72CB4AB50BECAC7C76AC50B10DEB6D84063B38E
            EEF6005DD2745576FD9AFC9B8CF3CD55FE6D9482BCC1B627DBAF46138A00319F
            8B00C9FA412A5880A098D03EBA9D10841278842F70BBDAB6361CB09D9D66A7DD
            C7D7BCF8F42BC483D897190B758236D3BD691E03C3648845FAABE43584787FEB
            1C4E5433833EEFBB1FAD5CD7462D51253EAA4B5E6965823E6BB7901A0DF93ADC
            44672F399EEE6FDF97DB70B11A1131F0D3711B531DAA4833FFE02DEA7915EF0F
            A105E4BBE965390548D4AC6CDE4EF7369F457B35BE421D7CC42CC88CF7C8FEC9
            50EB6932DBF6BA37CB41B2A66E8A00110192DD5E760990633D3BCBE913AADCA0
            2EA1B2C150C5405201906582A3962F98E1B0EE6DB287787A5E8890F2C1950269
            6687E9DE2C8FF105DB2AA52D8AEE345F143B46F16FF43DFDD27F171A56C73B72
            A7392D45F7967994F818416FB35F704FDB9634BE7D3F5AD2B9161FC273CD6959
            5E936E662727DA47FD4D74EBAA0DC13132F40135762E3284D5BB91BEBC4F202C
            B33DFFAA62E6D4A65C54B37831328565B681C33582D204085297730732329A7A
            D7BF46DFF63E94FAB13B0B22CA8B029DD7BDD8AE61EBE7ACC35AC174D65B325F
            1401220224BBBD2A5B80F42295D9A649B723825022394FE6C5831CFC1530FA91
            0A3A05557CE2ADA92D774DE811213D6485348C6DFC974AAA8B826929E8A0F5A6
            C1F51FD0EB7D26D068161FB3C212EF6115746421AD9BAAD50CA633961C4D172C
            19CBAFF450E97AB54D67327FC118FF8DF5357D6837460136AC799BD0E9DAA9E6
            7F34A67A3ACD89D652B7D012DAB4E6336AE08FD5B2FDC0FBC0EB1DEB5253A825
            E7DA9BF834F544DBDFE985F00A342CB428F13AFA1C58FEB98ED588C27D8DEF4B
            03C90D8C4E58CA6868F57C23209C62A91DBC30E591095D931020501983091DC8
            89CD37D0994D77507DE694AB4CD48B48787625DB211A7E34B740B6D1DD494DBD
            CA4204880890ECF6AA6C01B21EDB5BBA9D10843278916DCBF25661A6DD8D7692
            EFA63E14C210217CA2AF2D2B1E0453219ED2BD291EE44252317445608A8FCEA5
            E8E8E6EBE99A3E9325D8BC0CD06DC0C8013AB9AF772C4BFF6C9D44F3C363F8AA
            DB624E65725284E078AA531DF8586F3614039DADDE0A2DA6BD6A5E63FF6A69FB
            9AA9B45CF50C161D330DD194E9520B6F4434A6BAFD4DFC5E4DA153502C5B2218
            6322FCDFFBAC27FE8C2ECBC246099878B7ECA1B6EDE9A7C8006EAB36AAE6CE16
            BA6377B7AFADEA71A48EB644B01DF0D2540C552C72AA901536DEF18B9A232C99
            3E45D567C243F95CF307DDCDFBF6BE4DCF5BDBB743B421FF7F1B55768DA19748
            8DEEE49DAE2902440448767BD925408EC92816EA0DC6F206DDA5DB094128035C
            29310D6B4E698BE3C48379D81DE645B4C204487C136BB90B5055536A3CC8896C
            97E8DE0C0FB237DB7DD63F8E42737DB99336848EED7D395DD1EB56EA88AA1A08
            5E9B34E437B057F7310FDD3BDBB7A4712D67285160C486D8796301E708EEA047
            7BF0FAFBF06A67191DF26DAADFA6D5AB7FA7CD6A1EA3C1A1DF09A58A56C9E875
            2F8AAA4292717F4B25EF042C7EB1571559D65CDF76A2F278236F4D8BB1084650
            1E6BDB85BE8F0CA59EA1252C56627455FB9AD4161E610A3A38CE82AB73A8F925
            312546AAF9BD08CE2D3DB9DFF839CDEC77200DE1BEE5FCB0A5E984414882731D
            3742C154DD2240448064B757650B904AAE282A04072451B8B7B44571B4465401
            B0FC97F60A20A6A662952642709362ACEE2DF0206BB17D68E99346B03977DCAA
            E7D06DCDD7D0814D2F523BF7CE1689F8B00D1CC1184140A0FA1F7C488F6BBD82
            A6B66FCBFBFC626E7FDC9F285584C454E71AD398624DBC9A3F59687C401B557F
            C1A2E31D5AABFA231AC4ABAE35C3C8E2CC75A41E687E8AA9990AD7104793B323
            696A0BFC9DC38DFA076F13A688D587205858A42CD993373344FDAA3AE9E58E65
            E9B1F6B58CC28227373E4A1735DF69ACE6AF68A27B998F51A4A6CE6EEE6E2BB9
            CE6184F4E5167E1B11202240B2DBABB205C833A452990AF6328BD41DF93F49DD
            7E03D82D06B1F5661BACDBC10AE33F6CFB96BCB4213EE273C62B558090DAC6DA
            920A99BFCBB6B66EEF3D068E6FD4A159D8F5C7CCFDAA6304B7FD5FF465FFED68
            C56E448B3B708F5CC487DDC43B4C7DCCFEC89D4BB6A7714B4EE4637C209F8131
            05DFCA6888316468068D57AB15554FA7A36A5EA135F8EFCA55CFD0BA354B12F1
            E461B6B698FA3D758E9F162340AC002DD5644E6F8B5262AC38B59F4631167ABF
            468C896846D14C0C47CF8B16DCAF317288DA1E3D343697D3E0DA8F788F57E36D
            550811202240B2DBCB3601F2107990EFD896D1ED4405804EC82B6C4FF3CF8D60
            DDCF287F662604DBADC6BBDF8AFC7707B6ADD9BAE9DE009F03C187D48D45A6B0
            0AA96957B1D419D5152E4070D2AB2EAADB8B4415DFB3F5D5EDBDC740ECDCFA5D
            7F0417B51A15145CF7357DDE773CADCCD7D5D961111E4E8396C75DFBEE6C33F9
            F03EA4F5527AB66333D5D108C5676B86523E6DCE97326222F871683EAD5CFD19
            1D58FB3F5ABEEA571A53FD162D656A1132A7CD7592B7CE16760B90E48A73BF8C
            B3264645E217AFD6983A0177E1067A95A82774A8AE367209641B407AF8998957
            4480980F4580E81120133C274046B07D4D2A9988501A68BF3BF8B7C63CF05FD4
            4B56CF2289437B343FC4F416CC11954E5EE9FC9DD489BF386299E929BDD4A570
            82541192316724379866F4BE6EAF3DC8DDA42A18E7C1ECD4768CA03D7ADE4DF7
            F7BDD278757644C4875BA48D8630AF772E4F1BB59CC3BDE435F8473047431070
            6D14CA5B683C1F5EFD251D5EFB1A6D5D339505C8EF54679E0E3A6266B03879F7
            0CE1B6002992D5494DE55CD5ADF6D004B6F140CACC7B2C02C47C280244930079
            903CC6166C2FE876C2A7FCC1762EFFB437134E34F90EB62E89653E1CC00F2E23
            996B5F2A0894BEACA825A266E7BBA4DFCFE7182204777D0B0A10646E2931BEA6
            A24129EE4B73BF1556C5E53A87D37EBD26D39DFDAE3606DAE6149E9A2238407C
            7CA367951212A7B74EA04BDB8E2463DFAFFE9176AF7E8F76AF9D4ACB577D454B
            57CF376248C0C268D143AA5AF1B000398AD4C8470566F848E374CA17502F02C4
            7C28024404880227856B753BE143D0193B866D766247B14780C41F1CC476ABEE
            8DF4218FB1ED64F9D308C48E0763075180189B1ACA7182CD02A9664FD1EDAA07
            416AE267B25F461D8401DCAEAD4696AB637B3E6648BCB9223EB40331D1CFBC2E
            3FDEBE26FD12194CBBD43D4D83E387404C250540525A3FF6943D28407A928AF5
            D84B477BB80866E3ED41AA2E506E4480980F45808800514CA6CA2EFAE304B86D
            7643F2A92302046C466A74CA8FD7415D600ADCD2940CFAEF1A11208AAA8253B1
            20ECFEA5DB4D8F81E9152BB17D9BFE72D4141F617A63E07EB47ED3EFD4DAA1A6
            EE488D0F6F801F0EBF452F1CE688E3605BECF1A95556F19800D998ED4EB6919A
            9AC32D7E2075E3EBB32E3F2502C47C2802448F0039FA01F218089ADE58B7133E
            0137CF76E21F34A3189B6302049D6304A83FA97BC37D06E6197F62E993A9A968
            832C404055DE7BF338957DCEB6A26E173DC60C5245D34CB16BEE4BE161DC620B
            E9ED81E368DDEE7FD05CF3DD00EE51DE27462596C4F12E1E122041A91B84E282
            08369F57F0932240CC8722404480A84C4CB87B3744B7233EE11F84747AF97614
            670408FE3F95ED02DD1BEF2330D47F7FC14F65F63C822E404055CEC136A48B9E
            4EC9AB81A078916DCBE4D3284B9191B44EE3547AA4EF5934AC86686E24B07B92
            3F100152C48A2D7F1229E631B36257DD6DE102A8DC7EB0E54F8B00311F8A0011
            0142B40A151A3214E2E064FA88F1C80D01927D557C8FED6FBA1BC1272008FDC4
            2E3F91ABD72102C4DCEC2C1102E13D4DB76B1EE41A527160640C8E768EA2318D
            2FD32783261AED2869767D80089022566CE9531B91CA003552773BB8C06954EC
            8D411120E643112022408876A4AE02A6843893D8CE4E3C7352801857C39C57C4
            35D93ED0DD103EE179527555F213CB31DB5B0448CAA6A76DFF116CD7EB76CB83
            2076EE56D58B6D32FE7C3764075A86AF99B3C212EFE10B448014B1E2829F388E
            ED72DDDBEF0208214271C1478B5E520488F95004882601527866888B9C49A91D
            6B21171F91EAFCA763FCA8C99D2FF54F8E275D104B7E1EB528625D8641221664
            07DD0DE20330AD7065CA973D3316FF4F044897244F8848B870B86E773CC826A4
            62E88CD18F1BFA9F4887F77A8566758AF8F00D22408A5871DE7750436C0AA90C
            50950E52EF23F3DD87252D2D02C47C2802448F0039CA530204CE04E1A4510ECB
            5356961B4AD991528448A902043B4A84FF462285AE1E6BB3BDABBB417C4007A9
            E0E09F72BF9D22FA521101924E725F44ACC3E6BADDF1184BC8986612FB8BC2FD
            F81AFA132D1E7A9051111A752364EFF10922408A5871CE57714DBA87D4F9B6D2
            7987D4AC913F4A5E830810F3A108104D02E43EF21050F16BE876C2C32090EED0
            2E3F819D27BE73963C0202F151B0105CFCF31FF37FABE96E181F80B9C8AF77FD
            11112016F99D6D906E273CC6578414BC31BE78C61AE97F83F6A3CDBAFF4573C3
            B2E7F80A112045AC38EB15045FDF48C118F07B986D1F5237B74A470488F95004
            48D005083255A06642A36E473C0AE6790EA382773B62EA6008F13938942A22AC
            9C45780F89718F251AB6F8798393D92ED2DD383E607F52C1905D609B00C1B184
            C31D09577BB13553F6F42F9CF970F19A43FE2937D046AACEC57BBA1DF1208FF0
            C1BB2B52EE6ED8F812BD36E42C5AD069FCB0B862A2F05A44B7831960FF439A50
            3F15F5761E112045AC38EDD9CD6CE3756FAB4B5C492ABEA57C4480980F4580E8
            1120477A4680AC436A4851C8CDEDA4AA9117065730D450A8C6CE9D677A4F26D8
            8130EA1129BA3FB002A9BBAF42D74CA2CCF8A64267CBDC274B9C014792AA8131
            8254CAEAA5488D080C34DF87E0C0E18E1FB389AD3B6567120899EF2F24FF0810
            082674A6E5264536E7F2017F2645FAD2E47E93E890E657E359AF50F119D35ABD
            2640B07F3E448546748386089022566CFC3F92ED5EB6BFEBDE4E973896ED2ADB
            D62602C47C2802449300B9973CC201A43AD9426ED6A26202CD7015ABAE21AAE1
            1D3C9A23C0391563E7E1CF7474AAE542E673EBA0EAEA68DD0DE471B205645707
            78F2E9B2A40A7322F607F39B11CCDE5FF7C6089E632F8AD5DC4FD48D3E1CBC03
            ADC1D7C9794A72E0E6C00ABA9DCB0346DF209C6514C4247FD241FFE2A000D986
            94F8E8AD7B1B5D003789907ADFDE2CA12240CC872240822E40902ECF9E61C5CA
            0355B4572F7E318C84D47455515AED38513EB78553C547D1DC42C5143F0A26CF
            B26D977816CA7B26C634BB0DD8B660DB90BCDB7914BCC51A146BF898AA5AE9E3
            81FBD06A752C40A2C6F4BB99A446C0BCCABA24892C1254DAE8077048809CC176
            8EEE6D73893F09D92643F4BEED6B1601623E140112740122295DF373029594CF
            DC3C4C6BEA5445E968C6D5CD101F6CE1B672C407404AD41B743792C741276BDD
            C4B3F4B6C6542A54B0DE9954913D2F771805EFB18077A841141ED4B64B8FA7E9
            E10197C5473FFC30ADF524B64B753BE1052A517C009B0508CE8D77933A570601
            CC7A40A6AB5F1C99242B02C47C280224E802E447B651BA9DF020D80347B2FD5C
            FA2A426A3A56750E1112E9542320E55D25D0797E5E7743799C9F48A58654594B
            92EDBD1EDB0BA4623504A11494B80D0FA1F51A5FA2B7069D43F323C689631CBF
            7E876EE70AF018DB4EBA9DF00222400A8204140F929A861A04704DFD17A9E41B
            CE44E98900311F8A00D123408EB8873C0002697FA1B45F543079957FB07F94B5
            06880EEC54F5F5C9E79896D5B1841F17ACF56185E194B7C6856082606FC473FC
            651C8455895D7D53B697743B27F81A1619A10351FFE3B4DE93E9BC3E0FC505C8
            25FCDE89BA9D2B00E24070FE2F2F9D68052002A44B7661FB0F257B8095CE1452
            71B1494480247DCAB3AC08101120A5B035DB73BA9DF028254EBFCA20668A90DA
            3A951DABB39328DC61D7D50147ECAF6C03F43695A74110E1326CD38D67C91308
            5EFB9A12672241289A93F8A47F29457AD06B43F6A40DBB2FA6792AACFB09B67F
            EA76CE0248B2F09A6E277452A9E203D87089399BED4CDDDBE122486B7F6AD6AB
            2240923EE559560488DF04C8E19E1020C7B05FF6A596AB2C1084FC8D2D6B8A45
            9341E9F6898F381FB0ADA9A17DFCC4AA6C9F1B8F922710A4CE451631492D2B94
            CA76AC6F9FA5F0607A68D051B46BCFAF695EA7F1FA0C52F1455EE774B6F3753B
            A1131120394141C1FB498D7E0485A3D8AECFF98E0890A44F799615012202A414
            825444A818BE24DBE7BBC6D4D19BB2C3D90446B0B676A95DFC0A72D5BF6D3C0A
            250E449CED90A94852EB0AA5328AA23D6750ED74FA75F0041AC027FAC531635A
            1346259DE8B6D80DCE1DDBEA7642272240B2C08D3754FB0E4ABC0780D07A34EF
            BB2240923EE559560488EF04C8DDE40130FCBEA16E273C08B2C39CA4DB098BE0
            6211A43B55A580589E578D4738C84389A31E1DC521BA9D137C09F69D51141918
            5EA5DB5BF4D99033E219B0B6629BAADB398B2C203512D8AEDB111D54B2F80025
            0890ED498D7C042531C762525325A775F9291120499FF22C2B02C46F02E430ED
            02A4867DFA83FFF6D5ED8807C15D41BFC4C66047DA57B7131E07E9141F371EA5
            1FDC1F5149755E04C1C894B33545FAD3F8E607E9E6FEB7D38288117034815FBF
            5AB7734510D83810112069A01658F9318FFEE137525924BF2CF8491120499FF2
            2C2B02440448B16088F573DD4E789025A4A6E5B4E876C42288E13946B7131E27
            5D80248F4FA4515D5BB773822FB98EED680A0FA027871C4E3BF4F8311EFF7123
            DB61BA9D2B82896C17EA7642072240124C663B44B7BF2EF20529F1F1BBA54F8B
            0049FA9467591120BE1320779166306DE761DD4E7810D486D84AB71345700DA1
            232474050A6D3E6D3C4AC680808FD956D3ED9CE04B0EA350F466EA184E370F3C
            9DC6F77983E6A984B67E9BD68AE962DBE876C26D2A5D7C000B0204D913FFCBB6
            BE6E5F5DE465B6FF2335FDCA1A2240923EE559560488089062398DED3CDD4E78
            10B4CB05BA9D280211208519CBA6B23E180761E20085D8DC42B773822FD980A2
            8D6F52F55CFA7AE8C1B41C5F3BE7478DEC41B8ABDA4FB77345803810C441B5EA
            76C44D4480D0DF4815A31CAADB4F1779806DCFA297120192F429CFB222404480
            140B82CDF6D0ED8407F1DB9C681120853994D43483CC33EA236C3BEB764EF01D
            E8AC8FA6709F3F8774FB947E596A22B546883AD5B4D6CFC8992E8B9324933404
            8020880FD04587747736744082525C10DC4AA54E33130192F429CFB22240FC26
            400EBD93B4129200DC1C6058763015333CAB1F1120853998ED36E351FA0808E2
            42FE4FB77382EF80C81843915E7C5DFC86160D3BD1B89CB5C50C31FB886EE74A
            20507120011720A750807E6B938BCDED2E0D1120499FF22C2B0244044831F461
            FB8982936ECF2AD3D836D5ED44915CC9F66FDD4E781C1120829D60DEFCCED439
            98CE1D70059DDEEF599ADF695C9C5145D94FD337E3203E6A07DD4EB845800508
            46010ED2ED97CB9C40E566F7120192F429CFB222407C2740A6904636607B5DA7
            031E059DF9E3743B5124184A1FABDB098F83629BB7188FD20508E640FF4BB773
            82EF388F287A06758CA64B079D4327F4FB1FCDED30F6AA7BF9BDBD743B570248
            C73E8AAD4DB7234E1314F10152FA313D499DEBFC7673AD5C0E609B52F65A4480
            247DCAB3AC08101120C5B03FD97160561EBB91FF3283E16EEC8EBA9DF03807B2
            DD613C12012294CFEE146B7808511F6F0FDB8FD66D88C68B10FA39AB1A6E4ABD
            A9DB09A709A0005991ED2942CC52B0E8B2BA796A37366A5A5E4480247DCAB3AC
            08101120C5804ADF27E874C083608F5B8EED7BDD8E140977846857DD4E789C8C
            42848903141DAEBFEB764EF01D6B52B4C747543B93162F75B4710D688B19055D
            7F2475B7D98F9CC876996E279C2448E203F0A90EE9E4717DF0EB3E590AEDA4D2
            4A4FCBF56698AD77888C74759DE66B46B737D4F50A3B63E97DBD90F95A984AD4
            272240CC872240F40890F1534823CF90AAF62D24F9816D79B6886E478A44B299
            1506711E4F1A8FD20B114A2206A158FE625B96A24D0BA96616FD36EC70EAC3D7
            B296A82164FD3C8280E079B991513960FAD1EDBA9D7019A494DE9C4FF11FE47A
            1362A13F77C6FE8A12EDD57239CDA2EE14E59EE9EA55336997BAE72912C3C53F
            D9C18C722715978A4DEB5E37444B478A808578E91DEFDF66C29F6B8D25BAB8C6
            DFF698AA709CE82E8B00311F8A00D12440EE204DA0E5BF225C4485545460A9FF
            78916D73DD4E789C9D484DB7CA1C01914AE842B1BC4528DC161E4247F5B99DAE
            1D703FCD0B1B17E6FDF875AD9945CAE417B6A529796358F02F67B14DD2ED84CB
            CC245540F8CB5C1D71ECD403AA8C1B05D4B4E83E5623EBF36560AEF96E3E2581
            D7F8C8AEF99C5664F9B020A563F75BAC071D54F3016D56FB292D8825AF290BA2
            3D69C3DA69B466CD4C5A64F6D6213E86F2AAAA53BF021F8FAABB9DC6B7AB5154
            5A9C225C44808800C96E2FFF0B10CC05FD86D428A490E46CF2E7495BA6111566
            7B52A37E99024446408462B99D2F150751C7289A38E00A3A7FC013344705A063
            FAD2F1BA9D2B131C0B9FE87642280B8C7A1CA0DB0997C1EC858D481501CDEA34
            C7473E5AB84FD9B4F001EEF5F36E5E85D992D5D6D61EEBC9569DD1A966F5106B
            60AB4B7F3DC61DE5AA9F79D5B392BD6E5E7EA79AF758AC7C45F3A3D5EC4F2DD5
            863AE95F757751337774D5E848888655C5A8375C42DF378738C014C2795D4C23
            14012202C4F4206DD9DC02E4106DA3A3B84B3055D7977B965028394DC76E9C9D
            7CFC36DBBA4E7E4105B03EA93BD7E614ACC419E857B641BA9D137CC571BC035D
            49E10174F9804BE8B83ED3686ED878BD12A6B51ECE76936E2784926824358ABF
            A56E475C06D3AD10F3313BFE426AFF2D213E8C910F161FE135F9CC8F304F8BE2
            A368204CBAF1DFBA94D722FC5A93F97ABC63CB9FABFE85125124B1461A59F31D
            ED5BF3112D8AD5D042FE3957A89E4EDBD73D4A6DB1EED44EDDA957E8375AA926
            CF0CF1905AF5DC58F2CE7224F3FD5CCB14400488FA900810FB40CD882B757DB9
            47C1B18A00F41F753B5224D8A3BE655B46B7231E2799E1272940F0DF6F240244
            288EED28DAED59AA6AA5EF963A9046F335737EB462A6B5620AD938DD4E084583
            590D4FB0ADACDB11977983D4F4E3F6D417E37DB3B8F858CC7DFD1E101F9135B8
            8F86C112A7C44791600425DE590CB1B7D14635DA121729A136FE33CFECBDD719
            53C6C6D6BDC3EF866871AC9EFA845A698FBAA7A8813F372FD69B9665F1B2524D
            1B45E301F319FDD885DC0E35FC1A625D3A89BA1E31C968CB84CB8937323E97B5
            60C6722240D29709B000096231A242E096C80AE4BF00F47AD3F761BA1DF138AB
            B07D613C4A9E40508C733A052B438C501EE8D3ACC802E47B08906F871F48CB70
            BF605E8446F2EBDF91FFA7B57E4D2A6DABE01FD623253EFAEB76C4655E2035B5
            363B66C9ECD7613A534BC48CF988AC59DCB42BED981DE098794A096164853BE8
            D13E29DBC9AFB108313E1BEBCE9BF613ED5CF335FD1CEB412B56FD49BBD6BFC0
            62A48A16C49A69ADDA376995DAB9B408234121F3326886B8B4993988F114C1F3
            514A76794580A80F8900B18F57D836D6F5E51EC5AF95809B49DDC5EFAEDB118F
            83E05A35BA953CB8972225DEEA4A5BA510406610461B3B074576E9FD383D3CF8
            665A1031EE2862DACBF3BA9DB38951E6760ADEE79FA4926B5495BB229F816DDE
            29D71BE836D6F129BE07B7C89B9DCBD306AD9388C26B707F13F79AFC223E8A21
            FED347940889F654C224D11AA4A67ED5FC401B54FF426F447BD3EEFC78A7BAD7
            68360B937E55F369AB7A35231F4BF54313C52F912941F28B6219B5524480A46D
            8B0F05C86DA4812652015B03747CB987398754E610BF3194ED27AACC33AB5D2C
            263545ED4FE359F20482E90A9F91A599B08260808C735B52C7083AA4DF1D3479
            F03D34BBC338ED1FC3AF5FA5DB399BD89BED3EDD4E080519CF76B36E27348042
            C1BBE57A035D4674617BD610DDDDB625EDB7F8463EBBF3E9BF6A26253AB78124
            6AC498A81814488A1A33809ECF5C554BF829066F55F4FBE9F5D3A86FD5429AC7
            42669BFA976974CD97D4CEEF0D47EC891967921A243FDF1429591D10112029AF
            7B51801CAC4580A0D3F5B98E2FF63421DA9D54C12667702E067D55B64F1D5B7B
            65801122C4F7B418CFAA1227900DD95ED3ED9CE02BAEE093C5F1D439904EEA3F
            992E1EF018CD5513402A695AEBD5A4E20405EF12C434BB0082EBB05C6F24C407
            9FDEA7B46F4507B45EC787EA6CB68514BC0122ABA0D5AA55EC49E2A51E2AE317
            DAAC9A2F9D552DC6E726D4BF61FC5DAAFA2FDABE612AB5F2E7EA434B6895BA9F
            13AB821831677565A510160192B18C7E01722B69001DED07747CB187C19E3686
            FC29CC3095EE15DD4E781C8C728C493C4B9E40307DE109DDCE09BEE2608AD51A
            778EDE5B6A3FFA5B37A2B92A6AEC555269402B81F7D8D6D1ED8490971B48652B
            0B1A37B21D91EB0D63DA155B0FEE53DED1B6251D68888F396CA84B987772403F
            4AC99C256412532985E3ED17ED65A61C6EE597E6AA7894501B6D57F705ED54FF
            B6318D6B78EDFCE4E8484805FF87E331252240D29709A80009EA9D93AE406563
            C40374E876A404762135242DE407A31CC998A7E409645FB6BB753B27F80A1619
            55AF53A407BD327C57DAB8BB214030AF01D3202B2508B8C3DC9685BA1D11D240
            EFE17E52371183C664B64373BD912A3EA6B46D4607B4DE60648B2A30F2F138A9
            A9B9FBE8DE307F110F8C875080ACE0468FF4519DF59A9F68B7DAAFE8FB686FDA
            01A2A4DB0B34A6F60BA3F822AA10B49B4BB41BB3414480E81720076911203881
            EDA1E38B3D0CEA68F8B5901F86A36FD4ED84C7798AD4688779672671701ECB4F
            AED0ED9CE01B700D1DC6E26336D5FF4A33861D47436A0859659035EA4BDDCED9
            0C6A45BDA0DB092101623751A36A13DD8E68E05AB609B9DE489F76B58539ED0A
            231F8BA80BF13189D48D5814DC9422B4B61053F12551338530A670552FA0656A
            7EA043BBBD450736DE4CB521D5576E4452AFA8AACBD216ABE3D7D410B2089060
            08908FD956D3F1C51E26EFDD151F7006A9007A213F38D00E311E8542A9C7F2A5
            6C27E8764EF00D10192B53C730DAADEFA3F4E0D0C9F4578711CEB92B39193FA6
            0774D0E4BCE20D50A708C90F8256E303E4DD0F13E283FB91B7B76D490725623E
            BA141F67B39D693E563714641A9603C4CC94C110247C86AC4506B208AD58B588
            F66F7897366D789FD6A97BCFF8998C9A25A4AAD4B7C77AF2E30E1120EE08905B
            9CF8E5BBA237DBEF94FC2505831032D85CE3DCFA1DAD821ED4F9C0C590BC8825
            8B1082296CFBEB764EF00D1019BB23007D5CDF87E88E4177C52BA057E2B4D6E4
            A8A1A01324CF788954B6C3A0711ADB05B9DE48171F5BA5888F2EA75D9DCF3631
            E3B59D49558F179CC40872378543A407F7FDE7D3F0BAEFE9861EF7D298BA4F68
            4E7480F1B78A7FCF708468A1214452726B89004979E85F01B22EA9E946423A28
            66F48C6E274A04F11FBBE876C2E360F4430D3786CCE83805EE2A6EAEDB39C137
            4CE213FCD91469A4E7871F4E5B36CD8D0B904A9CD68A94D5888BEB2C774542C9
            A0C0E0B36CBD743BA2812EC5473CE6438D7C5C6F457C1C4B4606BB2C2E613B59
            F7C6068BF8E808EE8787CD80F6065A9D05C9DE0D1FD0C18D7751EFBAC5C627C3
            C654AD46BE6C87598EF430AFDC2240D2FE962E40263BFA33E7E000366DD50F3D
            4CB2489DFF788724634D21B6237521CF3C7920EB5910A73508A5B1179FB9EFA7
            8EFEF4DF1147D08E3D7F8FA7E0FD882A732E39B6E913DD4E0414DC147B948259
            2415D38ACFCBF546BAF8D8C2141F05B35D6186C00D79DE9BC6B6A9EE0D0E26F8
            356BCC4AEF112548A20D44F55FD3910D1FD1660D9FD246F56F51FFEA3F133A60
            61A417458D3D4004881F0588CC79CF06158A70A7CFD179520E5165FA3F48B723
            1E27D9914A9E3C10D4892AE803753B27F8865529DAED7304577E3AFC485AA59E
            685E849A498D1654E2B4D683D9B414AB0A3841CE6C88188D49B9DE484FB5BB05
            1DD8721D5F010B069C77253E00864D700D68D3BDE10288AAB81163CA5698CFAA
            DFD12AA125B45AED9F747AF37DB442DD27463F3A1CADA6D6685F962D35199D75
            1120A60769CBE6162007BA2E4030AF777BB7BFD4E320D3CB56BA9D2811CC0B46
            7457904BBC16623EDBF2A4522DA79E3C5660FB82A44295600DDC621D4C9D0397
            6CD96B2A3D3FFC7A9AD3619CCF2B795A6B327983E01641AD6E0E269112205964
            C77C5C634EBBC2549DBCA7F0BDD9FE63E17B9101B3528F611F8302223D54ED91
            683D51CD5C5AA3FE073AA5692A6DD9ED35EA5DF35BA2EAE1C2F020EAA47A9614
            5143688463B5D4BF66BA2122E686974DBCAE1001620A10D7CF33E8AC8E74FB4B
            3DCEF56C47E976A24436607B5DB7131E072203D5E2D50857F2E48161F797743B
            27F8061C671B51B83F0D68FC887E1B790E2D8A18F7EB304AE07A309F4B2063E2
            1ABA9D0810A7529EB887006029E0FCD6B6ADE990966BB99F35ABD0C8473199E9
            90CA3EA8A2CF27445551C4482FFEDDF9C45B33932674FB88BA57B5D3DFEAA7D3
            2E3DEE37FAD7EDE1DE140ED55063DD2CFA68F1C6F4DA92317468F343D44E8DBC
            8678A75C04880E0182747333A88B89920105F9C5AFD5ED448920F0F57EDD4E78
            9CA96CDB188FD203D091FD6A8A6EE704DF80D8B98328DC97260DBC99CEEAFF3C
            CD0B1B9DA38BA872835891A67414A9CC8982B39CCB76BA6E273401E17551AE37
            52A75D19E2A3F55A2B01E73B527199ADFC9C863F60608FA856B122D126353252
            B598FEDEFD63DAA9E1733AACE703D4A3E60FBA6DC14174F02CFE496B7FA1D8F0
            5D68616CB40810CD0204D38CA6BAF9853E615BB6E7743B512241BE636695EBD8
            8E361EA50B10A4E53D43B773826F38912F0F976104E4C91147D00E3DFF8807A0
            A338DC0EBA9D7310A4E27D4AB713150E0AC91EA6DB094D7439F281C0AA26EE3C
            DDDABE158B0FA4DA2D38F2F10F5281E5C580442EEBE96E08A1144C9110EE6B88
            92E1DD3FA44155EDF4EEE2758D4C5B3B353F438F0E3C8905C8522240B204C801
            AE0A1074C21CAC75E15BFC9C016B0A491D8B42246BBCA41721ACC4D4A98273A8
            1B15E17E74CF52A7D23EBDBE8D0B904A9FD63A89F2CCCB176C019D80F1BA9DD0
            040A029E9BEB8DC4C807779C6E6FDF920E3202CE0B1619DC88ED652A7E9607E2
            BB86930A48177C4B942882C287D5469D110AF7A1ED1BDFA2A7061D2F0224B700
            B9C9CD5F075F26C38CE9606A014E3C61DD8E9488A4E02D4808D3AFD4C85FEA41
            1DA277F9FFB5757B27F8865114EE39831A7EA43F479C664C0959120DC4B4568C
            F0FC9F6E272A9407D976D3ED84260A573837463E30ED2A1E70DEA5F8403AF5F7
            D8BA95E8CF3AE6F242A5600890374580784480BCC6B6A19B5FE803A6917F7380
            7727D5F9E9AFDB110F0361B922A974BBA90204A953BF23693BC11A33D896A570
            EF30357C47EDA34F3782233A638198D6FA2BA951E20EDD8E5418A8F1B1936E27
            345138E09C3B4CB7B46D43E397407CFC5528DB15B21CBEC1D6B70C9FF661BB57
            77C30836220224B1AC6E01D2C0F63349872B131558EA4F562395A546C8CF0C52
            9DA7A8F12C79504BDB09C58018B16DA9B33F1D31E03EBA7ED0C3343F6CEC5441
            99D62A0509ED03D7E2C7C9BFA9DFCB05091B2EE9EA037D12231FD799E2A3CB91
            0FD4C042A6C33E65FA85D198B374378E6023224012CBE61620E36E74EBA71843
            7201C945C193A1872926CD6050511D47100AA50A902017FA128AE76AB67F53C7
            10BA7BC4C9B46FDFAF684EBB713A0FCAB4D6716C77EA76A2024058C334527527
            8248DE6C5700DDBDBEDC517AB66345DAAEE5193EC07E2F94ED0A0584914A7D19
            1B7CC3F520A8D3E12A1311208965750B100CF53EEAD697F90874E21FD1ED4489
            04396DA3552E649B683C4A172093C8FB77BBBE64FB80ED33B61FD866A7BCD79B
            D4C517371670F1DD982A3B0E413728C6772BB50FA6AB97BA8026F47F87E6AA09
            494199D69ACC2427940A123AA1B3BCBE6E4734711E15C83A58C7A7E726FEBBDC
            E2C9F45D980FAB2A4CDAE8B24EEC5B645FF62ADCA05D5D77230936220224B1AC
            6E01828EEAB965AFA5F240912DBF4EC5C130BE048776CD5E14AF939276408770
            B76B17DDCEE500B7FBFE63DA9B386F145C427D02B51AB633B77703DD1B51816C
            4491C6D7A9760EFD30EADF34A28E6841C4B89BFD13A9292095CE9B24FB5539F4
            637B86829BF4A260B1DFF8E8C7631D2BD14E2D8F723FEA17A2C2A73FC4F1D931
            FA0170836759B6F99ADB4AB00B11208965750B1049399A0D3A7BE8B8CDD5ED48
            09A0F383BBE2C3743BE2715662FBCA78947E4063746145DDCE657029DB656C7F
            254E36210B4BC5B29E6C4F2ABDA56447B38716421C51A4C79F54FF3BCD5BFA44
            AA0F1919B030FA849B17567E25BF8336184A2A5DA9501C034909B8D1BA1DD1C4
            956CC715FA1086871AF9485AB9E526FA32BC3E1F55BF5181D10FF03CDB9636FA
            8A63FA335D0D25D88C0890C4B27904C80D6EFD141F910C2F66F229A960646788
            15BE795D06ABF38EF491935F5001FC414AA0458C67C993C60852755F0A5EDD5C
            E21552D35B522E7C6509903893C8FBD3CCFC0044C61A1469A6AA6EDFD0DC5167
            1B5345588060BEF883BA9D73114C1D7A4BB7133E630829F13142B7239AB88AED
            D8421F4286907E7C367EA46375DAB5E55E3E33CF240BA31FE03EB63D6DF41737
            6F9ED1D15082038800492C9B5B80EC7FBD1B3F03325FE16E790F37BECC47600A
            D38EBA9D289183D96ED1ED84C749A95F9016FF81BA20CFEA76CEE422F6EBD4EC
            976D112010C1D8FEFF9277C4961F418CD8AED43194CE197A159D31F8659ADB6E
            BC7E04A9A925410177B1AFD4ED848F80F8789DD4287B10C134D27DAD7C10C3F9
            DDF95CB72A463F3A59E756A13C97A581451C7F47D8E8F3916CAEDD15161C4604
            4862599D02041937DE74E38B7CC6B56C13743B5122B7927FD307BB05021ECF53
            0FD30408460526E9768E54F6A4C914CA75A1B54D80E0FF7FB0BDC856A37B837D
            CA244225F0B62174EEF0ABE8F441D3E2026477B607743BE72277B3EDA7DB099F
            806957101F76C527F80D1C1796462650A86900F7031F6D1F43BBB4DCC7FD274C
            BDB23C7BE07C8A2719B1878BD94E71B3A104071101925856A70019C776871B5F
            E4334E60BB5CB7132582E93AABE876C2E3A454404F3B613CC1F64FCDBE61E4ED
            71E59BE30204606AC1539AB7D9AF60AAD5C31020672D750D4D1AFC525C8004AD
            96CCE76CABEA76C20760C6016EF805557C1435B300A31F98D2B87CCB2D3423BC
            0E9FF33073D6725895DDC9755088701FB71A4A701811208965750A1074B20B06
            8105104C4F7952B71325800BDB77BA9DF038ADA4EE422E369E254F1838FA90DB
            5167F07E7AC55D77040890B4CDA5A132E5650B10F49DA6939A6A130430557F30
            194912843C043DE01CF16C9B58FDB091F98ACF71EF4588D659FCBE59F3235CCC
            F7213DF6641BFD7F996D3317DA49700311208965730B90FDAE73E3674050D5B6
            6E7C91CFC01DCC4F753B510298BA73936E273C0EF2ED6F6E3C32EA7F244E18B8
            83ABF3373F9EED8AB4579C1220B99320A062F04A1AB7DF6FA0B38DCE644B0E01
            025E60DB42B7932EB235A9CC434236C81206F1315CB7239AC094334CF78C5A5D
            0067E55EFCDFD1AD13E8BAF643CDE0F3A2388CCDCE54A2C88EB86A31DB207818
            112089657509905A5269489776FA8B7CC622B6E548654AF21B9252B930E7503C
            0354FA81AC53BCDDCECE64C7ED54E58A0F2F438018CFA379A651C7362175974F
            B0C69BBCFFA8FA178600B9365380A0D06590E68C9FC676816E273C084654D101
            0F6AB62BDCD4418D938E6216EAC1E7B7B97C9E1AB4E8393E3535F3F96E51B1DF
            8BBA47F716BB5017E086C30A6CF39C6C2CC12544802496D5254046B27D4B4A88
            084920CA1043E1B73B1D98F68128BDBEBA1DF1385B91BA3B9D29406E633B5083
            3FD8DF728C3C84EC152018F588450A2DF136DBBA1ADAC08F20D9C321C6A3B800
            19F272AA00B1BB03E47554463021154C4B83F808EAB42B8C1A204573513562E2
            8507EFEF589BF66AB99DCF837F52099763BB63DB30FF6B795269DA05BF230224
            B1AC2E01828ED854A7BFC4874C63DB54B71325B009C91DEC42A0681AAA539BF1
            1F6907F2F7A467341077D5BEC9FD963945CCF033967C2DE54F97C4E21F8C2AF1
            5138810C629F1ED7D0067EE418B66B8C47B905086E6204A9701962CF96D3ED84
            8718406ADA55506718CC22152355F4DCA98690BA9BD673F15DB424BC9A997AB7
            E86CE14E9CCB502FED1307DA4A701B11208965730B90B1D73AFD13A008D01565
            AFA5F2B09CA3DC63484281C220E669FBC4B3E40883AEE07DD4F9B8A8CB4F1871
            2A38199622404CE1120D9BCB175C085F84AB7D7F0D6DE137B6A378CD18162067
            B200393B5D8060E7425B0ED0EDA84B6007C334A35F743BE20110708EC28C41AD
            F3319F6D2D2A61B4205E78F09EF675696CEBDD7C14CD28D50727040862BAFE67
            F33A051D8800492CAB4B80E89A72E2753077DBCEFCE16EF1130537C8D12AA82A
            AE8616D30F62BB33A658E133F6618CA54FA605CB5B1420580657F348BB850FA7
            21E785C240D12DCB36C378060132FCBA4C01021094BDA56E675D6407B6A7753B
            A199A0079C637479432A71A4A01BA9AE5FBFC577D1A2E8AA7CEA42E84551E7AF
            384E08104CABBCDFE6750A3A1001925856970079956D23A7BFC487F8B1E2E97A
            A4EEB8095D8329226AA423FD204671ACDD5DF6E56F6C1F58FB684C9DD8AA52EA
            0576754D36C4072F13E954B11FA1A22EE0A86DF1A0CB6DE13790AE3919549C5F
            8048207AB0C0C8C77B6C4BE9764423286EFC76290BC6473FEE6E5F9FF643EC47
            35EEA995243E8013020499B56EB6799D820E44802496CD2340AE71B2F971A301
            43E512B09C8D2A2EE62F64FA556170476EF5C4B3E4890249187E2577A7CA9456
            D40A02C4F03B56F8BA1C2E497C004C47434C4AD193AE03044636B64E3CCB2F40
            3095F36EDDCEBA08CE9BBBE97642130DA46E02AD5EEE8A7C4C59236088FD68E7
            53D6088C7E4456E13310C2483C25407033E1629BD729E840044862D93C02E46A
            279B7F4552192A846C5023E225DD4E1401F61A04FA0DD6ED88C7C19DD9D3D4C3
            B4FA1F48A5FABACBBEE04E690945DBD8EFEA9AC4C3ECB7436A263E463EA2D152
            C40740C3203B5E508367AD7025A50AFEFC022468E75908D715743BA101DCD09B
            C6B68E6E4734925E44B548E299AF5EEC5C8AB65CCC1AA6AAEC2CF84E0890F349
            0AB65606224012CBEA102032CD22371805C61D2CFBB3D714CE40542ADBF2BEF3
            8C734D523120BDECBBEA6188520E5A5C54DC8CF949EFBC96424D5D0E01629EAC
            2261B648A9E243118B052D76A13842A1F1FCFF2D89E7F905084EEDE8490525A8
            1F799E31823643B7232E82910FDCC0584BB7231A99C056F69CF13E7CB41CD5FA
            6FBABEFD203E727E2B77754E08104C4B39C6E6750A3A3004C85B2240F20A907D
            1D152028C436C9C92FF029289684BB967ECAF5FD18DBBF743BE1716690BAA3AF
            92C9A79F243E22F7A64DB4921AFD585CF21A30AD0AA320C648484A662C9C103B
            CB1AF9480501F987B8D4267E04B173C951B3B800193A2D538080E72875BA56E5
            832C7341BA2182D4E79BE876422367B29D5BCE0A8CD10F3E657DC2F275F5456F
            F2F90B07517B39AB044E0810BF66C814328100697A9B9E1A7C1C2D8C0E170192
            2540F6B9CAC9E6D71174EB0730E9145308E6EA76C422A8B22B692F0B8374D3C7
            1B8FD2324A19BFF5575AFC2819339D6E6D2DA59D78203E62B6880FE0F6A8909F
            40CF6808A59E23BA162048B37CB26EA75DE40CB6F3743BE1128877D84EB7131A
            C15DD27FDBB1228C7E1CD072224D31463F70FFAFEC1034BB0B1182296C07D8BC
            4E4107224012CBEA102008C8B59602345820960299925A753B6291B349DD8112
            BA0659C2DE311E8542A99D748881CB5CF201A95B9139A9ECB90589E0F2DA0675
            EE0977A8A95721DBE2C6A546507E3E675B35ED952543E98AD117D3B183DFA3D9
            6D595DA7B16C77E976DA458212881E74F161CB68403CF3D5277CFA5A7DE15B7C
            0E5B42368C7E803DC8FE94B932025229B000D98E05C8D3438E1701E2B2006966
            FB93ADDEA92FF031281C060152FA14994CF0A386F9EC5A8D5FD996BBD3717464
            6FF22308A85E3EF12CED8034D245AEEB921FE884EE6FDBDA20428C5810DE9ECE
            76BB463EE21C4536CCE9AE50B23BD81D7D699BBE2FD133A3EEA096083F4D8FF7
            C2F4BE8F743BED220844C73456E7A2DEF43385EC3C96FDC754B66DEC5A591FEE
            EB1DB4E878BABDED60BE4E4E279BAE9348997BA3CDDB0D41B397CDEB14742002
            24B1ACDB02647DB6379C5AB9CFC108083AAB2DB6ACCDA8C7C03D92F676D559AC
            AD51D364EC39C18E63BB435743F9084C0739C37864C49E27DA7E34DB0F2EFA81
            8E6849C5B93480A0524783D07CCC39A462E89274F6A6359ADFA3B7465F47E198
            4A259A023224A16E483FDD8EBB0446FA701367BA6E471C02C9070ED6ED8446DE
            2735A21C297745F1CC579FF21EB3DA42C47E60E241875D7EE237BAA5ECB5A473
            1FDBDE36AF53D041B8370B907759809CC40264A808906C0172A5534D8F2AC7B7
            39B5729FB388D4DDBB9965AFC9101F2C363ACC132A769EFA3AF53866CBCD41DC
            695C4E4F33F98A94E28369278713D92E71C90708FE0D753744111CC176BD6E27
            3CCA9EA462E892B40DA1F3475E491387BE4573DA72DE5E7891547AEFA0B02DA9
            E0FB4A23E8B15133D8D6609B6FD70A31FA316ED10974A711FBF13D253A7EE573
            2AD95F14530448A5200224B1ACDB020473DECB0C84AD58B057AD42E5E6EE4F15
            1FA93B0B76208C82183B40592204C3DFCFEA6E2C1F80C260EB279EA59F1C9092
            776D97FCC8EEB47A1B74B2CED7ED844741FCC7E769AF84BB13D5CDA3DF573899
            FAF2756B51346B198C264DD0EDB88B20E8DE2D71EF16932873E42B58A06ED19A
            64C7CD394A8E7E7CD4C92B35463F30E9C0B6D10F8091EFD36C6E031120950204
            480F0890934580E414207B3B2640D071B56DFE6605F20FB6574B5EDA28061731
            B31251BA00C1F42B4CC5AA8E4FC52A998FD956D3DD503EE0603EAE5246FB12BF
            C5B2A46243DC601EA9D4BB9DBA1BA308E426456E90F96A29CA4C52D1D19FF61D
            F818DD3DF2615A80322CD9F7168256111D35A6F6D0ED848D043D2903A6D5A1C8
            A2ADB14CC87C3576F18974CF92717C4DC4E8478D9DAB470CDB5136B78308904A
            41044862D93C02C491F31DBE0139EE463AB1F20AA18C8AAEE6C8073212C53315
            6582FDB6A64605A59736156B27B6477537920FE04E6228597323FDB770B30ECE
            4D6C87EB6E8C2281683B50B7131E24F754BACE661AD1E333FA72B92B8DE3BB2D
            FBB0C69DE30F743BEF22B841B2866E276C0241C72557F8AE1050C7E6793B57D8
            874FC75F44885699FF2A9F9B3BCCDA1FB682DFCCEE8071112095820890C4B26E
            0A9091A4026F6DCBD7598160EAC9E9452F851F2F125519AFBA8A313784497C2A
            5649E0F71BADBB917CC03DA452A02AD20EDA1062429671C90F4C017B4B776314
            C9136CFFD4ED840741D2876C61D6D19BD6EFF326BDBAF4646A8B6605A183EEA4
            8EDB41BA37C025904B7514A96C8B7E06C7C013BA9DD00CCEA1F7D8B9420CA70C
            E0CBDFCD2D9BD3618BAE36335FD9DE257162A68708904A212E40868A00715380
            6C452A859E909FE7281ADBB6A825F0236346550473582D66B8C2CE54859DBCA8
            5190A3F8BB243DAA35D26B7F244115EBD2A7D81507AEAC7E148B68B775743BE1
            4190B820BB6E4C7B7FDA67E0E374CFA8BC53B040D02A66973795553F384FBC42
            36E74EF719B6C7F2E0D0E8CD2DFA173F183CFF41BE6E0EE116B62DA63D152752
            AC8B00A9141202E41411203905C89E973BD1ECC7B0395AE1B002C03CEFE16435
            156F557CDA5524FFB4AB9CC49400B15E3CAE17A93A250DBA1BC8077CC8B656E2
            59755A1B4F21F772F8A30AF6A9BA1BA348505F06D5E197D6ED8807C99DDD29C2
            87644D2BFDBCD20934980FE985B9C3BB7047E958DD1BE022B8D65CA3DB891259
            8954BC439D6E4734827E82EDFB2BCEC4BDF818D971C1447ABC755F3E6E90CCD1
            D6D88FF8D76094DBEE9B3F22402A858EDEB46DF3BBF4CCB0534580B828406E65
            3BC889155718FFC7F6A4E54F23E643459C17F115A6583146412C2D87C0CE2054
            18B683716C771A8FAA42A9A21045385189BCBB4B7EFC9DD49D383F3194ED6BB6
            26DD8E788CFCF52D3AFAD0FA7DDEA05797BE25DF142C80D8325BA7B2781CD460
            18AFDB8912C0CD27D4EBE9A5DB118D3CC4B6BB132BEECD9D9D9F2244A3E63DCB
            97C05AB3F687ED834CBD490990BE36AF570A11560A224012CBBA29405E67DBC0
            89155718E9F1033909A94C56D132EA31C5F783C2226447B6FFEA6E149F807491
            2349CD43E7B64D3B212018FC0697FC40F1B911BA1BA304C6907F0A26BA096238
            5023283B9B59470F966BD369EE0A1750373E8C5B738F80042D10DD6FB56F404F
            52231F7E9C366917E8236CE4C48A8DD4BB7CA99BDCBA311DBAF00AEEE3FD4E65
            A6A3CFC70AA45265DB5654C4C442BF40F0052C40B66E7E8F9E1301924F80644F
            352E13DCD144AEBB8176AFB802414142A4DB5C90F713D8FFCA111F2094F2C0F8
            F143B93E838BE24F14EC3B72C580E253C9FCEFE902049D8BD55DF26332DBA1BA
            1BA30490F1A6128BC895CB0BA462E8B2E96C24EAF607FDB9E2246AE6DDAD25B7
            00A92755C82D2881E898D83F84E23702BC0F7A1C6F52B0639F20B291BD6C91DD
            2BC6E5B297D99FAA9EFB1FA2C8483E37CF2287F2E16C4C2A7EC76E30AA3ECE09
            8705971101925836B700D9C376012277368BA3EB6C58E58A0F90B61F54519E51
            90A055512E870837213A3D7FA9A769EDB92E1F8C6E4E87C2A8D5E3BA1BA40420
            9A6ED2ED8407C93F27DE1020BFD3AC15CFA61EF90508085A203AAE399FE976C2
            2248CEB255D96BF12F0B49FD5E3F39B1729C8931FD6AC2C283E8DAD6C3B97FF7
            0B39988C735752D3C8EC06B57CF673CA69C14520407A41804C1401E2920071EA
            A0AC54DAD80650AEBB41283468C7C87128C793941D95B998ED24DD0DE12350BF
            E2E0C4B3F40315F377DD2A8E867D0742689EEE062901D9E77283D8B9DB73BE13
            3605C84AE7141220412BF088CE9A1F0A30DE4532B5666DB6F79D5A794F3E2E16
            F071D16FF6537CEDE4E3A50A03648E0910A70A47625EFC094E392DB8880890C4
            B26E099049A40AB009D679807FF63DD35E895730775E801C426A1A8F601DD4F6
            F821F12C79A0420C2026C3EE39C1F9F81FDB16BA1BA344DC146A7E02B1736FE6
            7CC7BA00410D91DB746F888B5C4ADE17B348337BA26E273483E2B68F39B5721C
            0EFD6A886E5ABC391D3EFF22A29ADF9CDE1E8C561EE3C07AD3A7F70AFE0502A4
            B708902E04C8A5763739463F76B57BA50120BD10933B0204770EEFD4BDE13E03
            D39D76540F4399A31FB870B8990EF74CB673753748892078787DDD4E788CC5A4
            C46DEEC27AD605C8DFD8DED3BD312EF21479BBA0A55377CAFDC4716C573AF905
            4D7C2A5EC4D7CB7E73EFE2636504F7831C1F184606CB1D1C582F463F1CC90E24
            B88C2140DE1701E2A200713300B7D2588FF74055D42EAE3C9C1320A8513145F7
            06FB10E4EEFF2AF12C7990D6F113A45BE9E3A22F88D97949778394006ACC2051
            C550DD8E788C4FD956CBFBAE750182F4CFB8FDDBAC7B835C6206A98AE85E44A6
            2413A1A8ED0427BF203EFA71E4FCF174C3A2C3896A7F24176A3B3AD5D7C1F4DE
            208D60562E1D7D58807C200224AF00D9DDD602A4C8BC82BCD892DBBF34100782
            22646F382C4026920A7E178A2365F483D24F02215753EF024C6E1E65FEF51B28
            3E88F384E33D049FD1755D84840039B7900001A80EEE489A530F82B324EA6AFC
            AADB910CD0FE7EAED26E074FB0FDCBC92F8867BE42BA96FAD953883A4770BFCE
            F1D3A253354000CE014117AD9541476FDA8605C8B34B8900714380A020DA9B65
            AF453880778329C6237B05482F7E72333954FC2900648C7EA49D0490D565B88B
            BE389647DF0510B7F2826E273C48D753EA52054875410182BBCE47E9DE2017D9
            8EED59DD4EA480A974C8CCD5A0DB118DA0460646F4A2E5AEA8107DF87898B470
            673A7BE1294435AE84E161E4E32387D6BD29DB34A73740700111208965F30890
            8BED6C6E0968B60F04E99ECC02E4E7B2D7A47EEF716CE790AA3B22140F822777
            520F4399270054ADBDD7657FF2A76BF53E47B25DA7DB090FB21BDBC379DF2D4E
            80209BD6ADBA37C84590F5CB2B7116B82B8ECE77506AB1E402714C28A8E97820
            461F3E15BFDED193369AFD34F77D1693AA7AEE58E6AB38BB5057C76AE9A0C7B9
            2ADB174E6F80E002224012CBE61620BBD92A409CCA0A11545A484DEB99C2F665
            09CBA32819E6201F4DA84F21944E88962335E44E490192189EC2846397E7A087
            1C1EA677A472701C04A3FEDBC92FF029B85BFC69DE771302E43C2B02642D7230
            DDA90741EAE283743B41EA2A8D04006BE9764423D833D72417EA8175B20DAC25
            3A75DE5E74D1825389EABE2117C40740ED2E271280A0A026849B2375520497E9
            E8C302E44311202E09105436DEDACE150A09505C0C530C3E26254666E6F91C86
            FE5726F53B6C693E17CA23BDEE477AD57364417952834FAB907FEF926134C9D1
            79E13E640EA9297CAD793F519C00C1D41FDC85EEA97BC35C02C93BD6D3ED04A9
            38B1FFD3ED84661C4DB71BC7083CE7E3603AAB90D173EEE5E3A32FF7E76C2FAE
            9E0F8C78EFE5C07A91C8040264815B1B22380804489F8F4480B82040D092DFB2
            8DB66B85425E7096C5890A774BD0C9C0B97820A9E0FF11646464126C22CC3698
            6DB6F12CF3A00C853EE4FFD770D927FCF623D93A74374E09A001313D6525DD8E
            780CC4CE6DD0E5278A1320E015B68D756F984B60AA0FA697B668F401D30A8FD4
            DD109A716D2A1CFA33BD6A8876987D323DBD781FBEEAE1BE5C8D5BDB89D14527
            46B9306A2459442B0511208965F308908BEC6A6A747C67D8B53241F00867F2A1
            620EB5C7320F7CCCD97F50834F48BDBBB9EE8629917EA452C4D6EA76C463DCC2
            36BECB4FC405C8CAE75B152041EB10E346C0C79ABE1BB51B6CCF69EF336E643B
            C28D2F42B70CB11FF3F818E8FBC743FC42139F9B17BBB59D48B58ED8CC4607D6
            FD22A9990B4225D0C902A4EFC7F4ECF0536961649808100705C836E4AD2C2482
            502E7F90AA5591ECEAA51F941A623F0CAE26FFC6502016E96DDD4E788F107ECF
            ABBBFC48F102246815D1F7647B40C3F7EECCF688EE8DD7CCF3E4F2F46B64BE3A
            7ADE4174DDA2FDB91FF767F92BB4CE866CAF39B4EEBBD8F67773630407110192
            5836B700D9F542BB9A5AEE0009950602F8CD8E4528537CE8CB32A46A8EDCE4D8
            FA1D8D3FA77DD9EE76F41BFC09EAFF3CD7E5272040BA43805C605580042D10FD
            6CB6492E7F67D0AACEE70253AF91B9C99529A1383DF5E5FDFF7DFEB6B5FF7899
            FB3B8BF89CD8462E96154251C5ABCB5E4B6E30DA7EA65B1B22388C0890C4B24E
            0B1074C6BC90854410EC20BDCE46FA018F2798463450936FA8A3F13F5D0D5326
            E7B19DA6DB098F81AB0CA6B0FED2E5A78A1720DD4825ABE8AD7B035D02370B76
            75F1FB101B865A1F4E14A3F30B101D487AF2BD9B5F8AD18FDDE7FC9B1E5AB427
            51ED743E821CAFFB910AA64B1E5CF65A72835206414A9F5DD984FBD2D6FD3EA6
            E7961201E2B40041876D83B2D72208DE60795277F628C7E8C7296CB61D384582
            6E272A89CFD0D7346581D4C16E7612FD008447E12296C50B1010A44074888131
            2E7D17A29D3F70F1FBBC0A62D15E72EBCB90116400B7FC67EDDCF07F3CAF6A7E
            84DADDDE66048A3BF4BB87B62229D25A398800492CEBA40041CA47DC69EB63C7
            CA044133480D774AE259FA8188BBC9880DD195698CBF3B34841C9D28E5E81C2C
            74125771F20B7C0862E7B62BF8A98400B9B0180182A97A87EADE409758482AED
            F82C17BEEB29B6ED756FB0669C9D0A9A836E21750766F55917D3F76DEB70FF0D
            A76257EA7EC4C1A8F76F0E7D29360D53D94AA9F9257891703F1120E6B3DC0264
            970BEC68661C349F96BD1641D00FAE68C3D822C6B350D6E8C714D21B2458385D
            AB776926D5BE0DBA1DF118485B7A7CC14F9526409095E87ADD1BE82208107EC3
            E1EFC0FCFF09BA375433D7BADD0646DD8F1AA29797D4D366BFBF4454031D1071
            7BBB51E3E57187D68DF4EA10D0ADE5AE48F00891FE2240CC674E0A105465D691
            7D4410EC267D083CFD20C4B0BBE3D57D0B700FDB58CD3E940A0AC5BDA5DB090F
            82D8B9DB0B7E2A2E4056B9A8180112B436C7DC7C27337FE1AEFF0DBA37523353
            4965BD74158C7EA0FFB2EC9F97D1CCF655B99F334FC7B69FCF36D1A1757BA598
            A66017224012CBE61120E7DBD1CC93787567D9B12241D0C87D6C7B279E651D80
            46FAD87535FB883B067E0DE28670BA4BB7131E647DB222124A1320BDD87EA2E0
            5444BF8CED4487D6BD29B918EFE051907A1C95BA5D2D826A64BEAA219ABC705D
            3A74D6F544B5AEC6BCA7F22AA52627B197F4EB8FE07F4480249675528060F463
            773B5624089A984F2A107851E295F4837C2FB67B753B496A4ACD8DBA9D289173
            D8CED0ED84C740042DB22915BE9D5B9A000198B6F777DD1BEA124FB0FDCB81F5
            8E2415BFD4A47B0335825CB7AB512239877B740FA96E4DFD9F7CEA6B5F8EFB6D
            7F918B6977E340C4A3E08853534875A491169C44044862D9DC0264675B04C817
            6C2BD9B12241D004E6F63E997886833079FCE08283D88566DD4E323BB13DA6DB
            891241D5F8DD743BE13130A56F754B9F2C5D800429101D01BC8849B4DE3A8541
            3A63C4382EA37BE33453B8568D03C4633F6E59B80E8D9F753551ED0C5DDBEF74
            B1659C1B1FD6B571820344068800319F39254090F90A19B024B054F02B77B28D
            4B3E0D65DE5C7332EF7BB1608EF03BBA9D2811B951910D44D91E963E19EECE5D
            E13F69D6181620DC216BB11E7F7B18F977D4AC5830A28434D5336D5C27621EB6
            D2BD619A41A1E1CBDDFE5274BF9AAA5497A6EEB71B883AF9A7AD9A4D1A463F00
            52869E52F65AF283D12549E65329A0A32D0224B1AC530204F3215F2D772582A0
            09CC8F1F99F64AFA8187F9F94E67D5290614ACFB59B7132580F49568EB7ADD8E
            780CEBD32E4A1720885B7A5BF786BA086235A6D9B4AE2BD9FEAD7B83343385ED
            005D5FDE87F7F5A3668FA5EBE71F4254FB0B7A487A1C0919755FD67468ED5055
            4B919AE62654022240D296CD2340CE2BB79991C1452A770A7E25FDAE53D6816D
            CC775E56B793268853194AFE4CD388D4C1AFEB76C283589F7651BA0041ED9AE9
            E48D29846E60579C14463D6FD1BD319A798F6D1D1D5F6C049E73FFEC930EA2D5
            7F7D8AFB359DAAF0A09ED10F88031C434E955C47C1D04D746C98E01055224052
            97754A806058F6B8725722081AC09DCDAB934F330EB890E782A6BF219581C6D1
            4A810E21372A7212426AE7CF2C7DB4740102308AB7BEEEAD75896BD88E29731D
            5E1BF9D4C102B61548C5BF69A14F2DD1FE7F1D4277CDDFCF8CFD70B5E8602A18
            012A9C2ABB745CAFAB22384C5595089094659D1220084ADBBADC950882CB3C44
            5999DBD20E3854EBB6D631740F4CA3F16B36A34B49CD2317922095CF28B23AA2
            D5D944D4630675AC76959103B5BDB830EB2005A25BAB2C9F9FFE6C5FB1F5D5BD
            219AC1D4BD77757C717CF4E333DED1C7FC86BA7FACB6434B74B6053220EEE5E0
            FA9DAE5F23B88D0890B465730B909DCE2DA789D17A48C83DB2EC1F4B10DC039D
            8B55F84048E9C2650DEB239BCE8ABA1DCDE069B61D743B512272A3221B4C49B3
            5E5320C6A7DB481DFD77E57369C77EF3696E7195180E619BAC7B835D02D32671
            E7BED491C28F494DCD0C3210ABDAF6174380D4121DF0D7C13465FEFEBA473F10
            B786B8BB010E7E0732E1E92E722BD8890890B4659D1020484BF83539372F5210
            EC6621A94C4CC92C39D9079A57A715FE876D5FDD4E94400DA91B1523743BE231
            70C7D37A76B528F7C842117A6D9589B46133D1DCCEA2BE2B4815D1C36CC348D5
            6C2896BBC99FC7989D60B4EC705D5F6EA4DDE55DFDE1452BD06EBF5FC7BD8BD9
            BCDF17B7B3DB8CD3E97711808E5A40FFDFDE79C04952556BFCEB307966C36C02
            96B04BCE2B200A489228E9A1A8CFF4CC98132A264082607C8011544C98151451
            411114098AFA90282C2CBBCB66D89C6676F24CBFF3D5ADEAE9EEE999E95055B7
            AAFBFC7FBF3BD3A1BAEAD6AD5BF7DEAFEE3DE70CD93C49C54738884FA6340E48
            CE6F83102041DF988AE237C74BBA3FEF93FC1B8D4FE943F7755F22D74B7A9FED
            4C54C0BE30B34ED61E614694021BA449186A019A3761C5A19FC7DC26605B79C3
            151AA0AF40FD18A27366A95CA70774B1FA79DB19B78CD5659E1C6E4D9156A281
            63AF955F03FA0F04D27C5664B5E960BB1BA420637F7386CD13547C4605482802
            E4C392AEF5E172294A18D090F0C6BC4FF26F32C6B459ECFE8F225F92F409DB99
            A880B324DD663B1311840F70FE54F2D6EC8CBA77C1670FBC1E17EDF1303697BF
            249EF163AC7834B200979C95E3F480713E4ABF16B5C90698D9E18DB632C0D678
            7A1AF8F4A63371D5C68F8812790E96BC5EE542EF57F302DCFF95728A97DA3E49
            C5475480942A403E534D317309C1DB7CB85C8A12346CE0F3D5F65897BB7F45B4
            5D21F209ED176D67A2022E9654B5B78B1A836B4A68A7F06CC9BF70BD60AD5BF0
            254C2DDF0B16A9A7F6BA1CB14ED7D67CF0D0623BD396B166744E38D49A9634FF
            1B96FF50EAFB0C20BD099605C8B1289C31F71F8ADFBB6C9EA4E2231C60AB0029
            5180BCBC2A01F200E2EB9547A91FBE02CED6E5DD4F633AB5A0A3DCFA41794B76
            A2C32F31C6E358DD439B98FD6096BC97066D40A4DEDE79F027716A27CA354227
            5CBEF70DDB271E12BF93746E89DB3E09F3E4BF9E2977C6C8773CC3F3CB379E83
            2B36BDD7D87ED8F6389E70DADB20DDE3F22E6690D6AD764F54F10D15205E0EF2
            7E3B8E00B9A2D262EE90B414C665A1A24495EF48557FA7F32A7B3F8C111FAF44
            A9C1E0ECF2061877907183811E0FB19D898851BEAB58C7087D04F71E7C318E9F
            5E91003901FE45088F3A8C99B37F09DBD11DF7AB6C67D632141EEFB099019A33
            CD4E032BA44ECF5BFE5BA9E7F249B20B96673F383AA4F7AB5D023C0663CD1C6B
            F324159FA1F72B1520810B10BA8D7BC4A74BA62841E0C6FAF06E96629B240E82
            717F18074F6E6F96F423DB9928137A77E132A366DB198918574BFA5859BF708D
            D0572FF802E634423AB4B28FC987460C2AD76AFBE443A01FA6EE6D99601B353A
            071E92F442DB996894B6B95D062867AFFD206EDF76B67CB0DAB89DB6CBA992EE
            0CF8185F90F429DB27AAF8880A102F0779BF2D2E40CEAD58807049C52F7DBA64
            8AE23737495D7F8D7939AE0069930FB9FC222EEE6169CCFD07DB99281335EE2D
            CE58870893229D51CF4EF8C2FEDFC427E63F5A89113A7958D261B64F3E24E87A
            F85FE37CA78E11806E180F75CFDBCCC49054EBD94DC0CD5BF7C67FAFF9BE89F9
            91B0BCF4CA10864BE65324FDC5F6892A3EA202C4CB41DE6FFD162034E8BDC4A7
            4BA6287EF24D49EF1DB3E46AAC00A19BCE97D8CE6C1954E25AD4367CBAF739DB
            998820AC770F94F58BA166A0713B9E5EF059ECDB026CA92C6AC077504EEC9178
            33DE8CE17C18B7D04DB63368999325DD6D3B134D6EBBBCDBEACF634BEF21409A
            CEB8AC7BBE6A952C308E4C7B80C7E0ECDC6E9276D83E59C52F122A40CA132097
            555AD25C33FF4A9FAE9AA2F805DD427FD4DCBC399FF23ECE172471348C7E29E2
            B7865FD7D88F858BDB3908DE54D6AF32526F07A7E23B075D8BF3775981CD7D15
            1D9B06B5717464500914BE17177CC6A098B40FD9D376E62CF37149FF6B3B1383
            D22ECF11317DD5BA53F1E9B557881A615CE348840B7A23825FEE7ABBA4B36D9F
            A8E223091520610810EE81EBE6D5B0548912174ABAC6BC740548C67332942B48
            12D7813324F1236ED3F56C7296C33CE55346F98FA443CBFE155BF0C176DC78F0
            D578F3CE6B2A152061B8158D0ABF91745EC167B7A274EF58B5CA2D88C0C3430E
            ADA6278DB14EEBCA2FC98BFD653C569E260F90FB60669C8324AE5E0D95A22454
            8098375E0EF27E5B5C80FC5745F16F66C30C2CEADD6FBA120D86A552BF1EB4FB
            C8C2DA9EEBE1342B40A8B82FB79DE10A99684D7B14E1FAF245B63311417E2EE9
            F565FF2A93962A9DC6AD075F8573677563737F45C79E22894B4BEAC129009759
            E5BAD7A5CFF94FDBCE9465E8B992DEC12A5BC0E72329698FA7CAF8EB45AB2EC4
            83DBCF029A9646C1F09CEC2F7DC553211CE700494FDB3E59C52F5480B86FBC1C
            E4FDD64F01524F4FD19468B34AD2ABA552E70FCC33EE9FEC4DE40810DA2C5D59
            DEEE23C5DE300388B84043EBEFDBCE4404E120B8B2C08CBDB370F541D7E1A3BB
            2FACD4089D30D8DC91B60B210458420C32C8B5F6AF433C5D58FB0DC587F58702
            4ECC0FD1D30B45441FB49CCF8D46A489EE41046C3F0867D13F12F0312A9B0555
            A24B420588FBC6CB41DE6FFD14208CABF06D1F2F9DA254029723BD56D2C6FCBB
            CDF5A0927703252F923F9FB59DE12AE18CC262DB992883EB25BDC7762622086D
            627E5DF6AF4668BE90C01F0FF9345E3663A49238201E8CFBF076DB851012D360
            DC0FAFB29D9108F02618CF4ED66990A6B943062447ACFA141EDE712C90A677E8
            48880F46FB7C4ED2CC808F439173A1ED93557C84037715200843807C4DD2077C
            BC748A522EF9FED3BD1B2193E3BE71F406A2216A654F9CA345DC04C842986506
            4A3EB49D7BA2A25FF6CEC635075C8F8FCCAF6A06E44392BE62BB1042826BEC4F
            82DA2B7E0B117918E0B9DDBD63FB4C9CB152F45003C54724DCEE12067BFD4908
            C76150D0FB6C9FACE2232A405CCA1220152D89BD43D2E93E5E3A452995D55275
            F9F4B620409463715EF09153D12F87B1FBA805E22440F68E515EC38456B60C90
            3758D1AF7B67E1CB075D8F0BF678AA1A01720C4C0466A53E7850D28B6C6782D0
            2A6FA68CB9BAE545C7B2AFCB5DB08B8CC1B8422E12B31F248C38398CAE4E2F6C
            E5871255A289B3FC4A0588FBC6CB41DE6FFD12205C07B04CD2AEFE5E41459994
            1FC299B64E6CCCFFD8131E633A31C60379B7ED4CFBC85E3051C5E3C0DB247DCF
            76262208E3B854EE5DA77726AE3DF89BF8F01E4F5723403A6106416DB60B4309
            1CBA7CDE0F96830D7A700C32AD0178EBF3FF831B37BC19685E1615C3737234CA
            8DCD5319DF80AE20A92D5480E46C578E0039A76C01C2A8D1CBFDBD7A8A3221EC
            3C3F2675F7A7E66D61808FC2CF9CBB9A06A7718BF3311947C03CA18B03F56467
            500EB49DAB5C14F7CCC2B5875C5FAD0021FF86A94F4A6D739AA4BB6C6782384B
            AF1A813F774DC1A92B6E02D2EBA4D9AE6C2230206897755ED57B99944464AE89
            E2132A4072B60B56809C0913404751C2806BD5E93E73CB98C8E6B4F728FC0C98
            05E3E7FE58DB190F801325DD6B3B1325B20466C646C987DE75BE5CF1AFFD1320
            14F3E5BB0256E2C4E7255D643B1384C3A81669A25B65BC75F88A4FE2916E699E
            1BF85C29324BAFE82D6D7508C779CE3D965233245480542E402E29B7B4E9B9C1
            7A0455A5E6B95BAA282BE73FB29F4C38F1E1BCE0143A239CD76AE0BB3360ECAF
            FC838D41C6770350BA977C2CA432891BB49DBBB3E25FFB27403E2CE95ADB85A1
            04C63D925E6A3B131E8EDBDD26E0B3EB4EC425CF5D0C3471157764C407F31256
            70DAAF4BFAA0EDB3557C24A102244C0142BFFE6FF5F9122A8AC73F257D4ED2EF
            C774508E9D7906F93742F6553DB8867EB3A41FF9B32BD768DF99454AC2672F34
            FA90A2382352D85CC25AF99356FF04083D43FDC57681288140ABEEF992B6D9CE
            0871C4878CB3BAA4F64F597A3D303453C65D5B112101429B28CE4C3485702C3E
            24FBA7ED1356FC22A10284542C40CE2E5B80F089F4513E5F4545A1F1DF35523F
            6F19FDA8F0062862EF9170EE60BA983CDFF609840007F6D7F8B22716E1D09049
            0D8DD20EA6FC9C09F92BCC7231251F3EF6DDB3AA3DF4CC1401F22D3F04C81C98
            A0966A885E7B9C88082DD564608D0E19DABF6AC5DBF0EBCDE7018D1CEB47467C
            902B2455148FA04CE815705FDB27ABF84842058843E502E4E2728A9B4F08D64B
            9AE2FF9554EA14DA13898048DCE6BCCBABF3DE9BC2817176A3174ABA51D241B6
            4F2224683B507D845E3630C383467C38EF13468414F1645C0174314B0F4B699B
            051551FE20E9ACAAF6C0199043ABF682E51186CB51255CE872FC33B633E1C116
            66B628905F6DDB1DAF5E719DB40A1B5DC3F3C808901698D98F69211CEB7218B1
            A3D40A2A40CCFF9004C802498F06701995FA628DA49B609613B9F52991F7CF21
            77B9D55861C2A9BBCB91BD83EB825B25BDA2AA3DF0E61F1901060773CAD42D67
            8A90EA550867A2BE63BBA0224AF5D18FFD1520BCFFDE68BB5014DFB85BD2C9B6
            33E1C15664BAB4CE83F2A279F1374CCC8F349F5F26ABDDB59F7C12C6583F0CE2
            E4465D9994840A909005C86B24FD22802BA9D43EFD9238CB718BFB7F7BFED705
            42239329FEB9F3C436C1815C640C2C43849EA5F6A9F8D78EB670C547F6038F8C
            6938530DA84E8024B8F4E378DB051551E896F8FB55EDC15F014263D8AFDA2E14
            C51768F7C1E57D5B6D672497CE46E08A7527E1F2B51798A5579948890FAEE858
            27696A08C7E2B2D4936C9FB0E2272A40AA17206795E5A5EF72D44E54692578F8
            B8EB4F30C6AE7748C55B37FEA6932CB732B5F932D477FD63E13000E87365FFD2
            9BD8181CC0B8CB1F28FAD2D22026D3A85084D0F075E9F807A87B683BF7AFAAF6
            401B1047803CE38700E1D3F23FDB2E14C5174E90749FED4C78784BAF1EE9010E
            5F72B38CB37648BBD26F3B5B857C0AC6E14918BC0EFAF0B68648400508421720
            2105EA5162CA72494FC274841C68D1B07C34D254A29271A9F31B0614A4F038D0
            F6094600DE7FBF29EB175EB10F0F9B34D17548BA0D041BCFF235C895304BE394
            B1C850CC710FBDB9BABDCCC435877C131F99EF8B00990973CFAA217ABC6130AF
            AB6C672217C6FC484BEA5C7629BA771C0A346C40C49E4B744A7E68AB1646DDE7
            8337DEFB918ABAA85441420548DEFFCA05C8A7CA29750E2E751058DFF4C1CC6C
            AC857127CA780FCFC078F8A051EBF8C3D6F205C83130B36EA7DA3EE908C1D80D
            1F2DFB5743223C4A51146C484632C62B56B6912B49897063DAF6EC64BB80220A
            EF8DEA238F3B02E45B7E0910C2FBF750BB45A3540167974FB19D895C68F331A7
            05F8EEFA03F18E155F019A2369F6C065BCD53BF4280DBA24FFB8ED13567CC4E9
            1B558084294066C378B709C357769CA028FB314C4D8AD402D72A612DE1A8958F
            AE7ADCFFF42BBF11CE139D4477F97B2C5980EC07333DFE66DB85104128F6F62B
            7D730A8A2163785ECA13C86C43C2F820A972AE1967667E6DBB70220C0364BEB6
            EABDF82F407E20E92D564B46A914DAD1D1EE6393ED8C78F0D9C5CC06E9200681
            9D965C2F3D48A7F48C344F89D4EC075D50AF82F1101C0674BDBBD8F6492B3EA2
            0224FF7F0802E45849F7077335634DE4A6BFC3A1820E65F2C1EC9192DE03E399
            47DDB88E0F9F58FFA7A42D6974CE6557A55EAF64C176B953CD13F390A4C36D17
            4C84F1C73DAAFF02E40218F7CE4AFC385DD29DB633914B8334131D32AC3F73D9
            F9F8E3E65701CD4BA40D8A9AA3C24498DEDFEE90E6F30CDB67ACF88C0A90FCFF
            150B90334B1620EA5EB338AF97F4F3683DE009832A04C8F801EFD4C6A834BE0E
            E3C168629C72CE98C792A5922C765D2715202F47B97629F5878CC67C9821EA99
            816B0EBD011FD95304488F2FF9D288E8F184AE63CB32E00C9A21696666B7003F
            DD380FFFB3EC3AA069A5ED2C15637F494F85783C2E1F56470FB5842734548084
            2A40E8AE71F2414FFDC1D8288F3BAFEA4A84542840268EB6CD0EF5B3B6CF2C06
            70E8C96504132F83E3EC07A95A80B8248AAE30E43286556E7E94F1391866B966
            75F82F406888FE3C74C6314EFC03C63E2E3238E2A311583B00ECBCF87A6973A6
            485BC2156291EB14B98AE3D8908E55E672592516A800F153807CB2D462BF0B11
            33768B00B487E01ADCAEEC2715797A8A23659EE7E4B31FE41C49BFB37D6631E1
            0A1803FD2264F2CBD92F01523C28E47761E25B28E343B7C98CDF52BD64F05F80
            10752E121FB8F08E7DCE5ADB19C9A551DA847691B02F5B763EFEB4E55CA06945
            D4627E9070FB9744E29DD05523B5870A90D0050843242F92342FA86B1A538A3F
            89AA0B11528900C94C264068ACF774F93BAF4B3810990FE3E271944CF6CF28BE
            091092C8BD3A5C47FD23DB051103F8D4D59FE08C5901B2D84F01F213496FB053
            344A99F8B394CF47BCA557376DDA0DAF59FC2DA07995B41123B6B3550C7A6D9C
            1BD2B1E86E9B1E01D5F56EAD90F0FA3E1520610B103EBD5B041D1816C2C1D758
            4F4D2A40C661D28130852EBD85EC6EFBEC62C21D92F20D1C8B093CBF0588F9C7
            C067F7D82E8098C0A7A0EFF4654FC108904F48FA829DA251CAC0BF7AE4136C5A
            3AD36EF8A0672E93FA795014637E904B61668DC3E2F2908FA7048D0A90FCB2C8
            FD1FB0003953D2ED415DD71843DFDEFF5BF49B9A17218108106E729BFC3DCBF6
            D9C5888F49BA7AC2B2F55F801C0713E1BEC5F6C9C704DACE7DDD973D7902642F
            5F05080D6523E54D491943E4EC09D8AA344B73D0D62015E8D9F3F1E72D324C68
            5A13C5A557BB49BBB50CD9D15EE03010FC0C1837C94AADA00224BF2C72FF572C
            405EF689528A9E839C2F05755D630C07CA7F18F7DB54E41A621F29438064CA0A
            A94DB7C6D5BB2BAD2F5E2E85FCDB71BFF55780E8B2ABF2F1CF134E3002840E04
            68A752CB0D56DCA18D4E98DE9B2685ADCA8C26E0C71BF7C29B965E23E2E37969
            1E866D67AB1814D76106B3FDAA0CB22EB07DD28A9F2454805814203F94F4A6A0
            2E6D4CE12257DA2C2C9D70AB9A1521E50890B2D6037349D11FCAF981E2F0DF92
            6E2EFA8D3F02842D2567FB3E6CFB4463C6004C3BB1C297BD8900B9FAD0EFE0A3
            FE0A10424F7E87845E3A4A29BC4FD2F5B633918B233ED2C0C62160D653DF9281
            563B908E5CC041C2E09F3F0FF178FD70665C9CC0BD4A2D902736F8810A90B005
            088DAD8F0AE8F2C6154EE9D2A7F8C0A45BD6A40829B1A3F1625194CE2C49CB25
            B5DA3EC3187225CC5AE77CAA172027C304ABD3016AF92C81B1A1F387E0040807
            69D5476A57FCE6F792FECB762672616BD222CD446BA3340C4BDF81BB379D6E66
            3FA2273EDA24AD913435C4637E05FA90A6B6500192778CD1FC211401C29B974F
            F9670477856309DD129F36F96619B74246AE71AE9252054845DE50FE8E88F9B9
            8F11FF9244C3AE7BB29F542E4018999E4B095E6FFBA4620C67F3FCB3691201F2
            B505DFC407F65CE6B700A13DDB17C32D1A6512E849691E72DDBC4784CE06E05B
            1B16E03DAB3E65663E12347B885C1F77238A3989090E7ABCA2972D9DFDA82554
            80E41D63347FF041809CFEF1C98A7F81FCE6D120AF6F4C29EF4947CD899012CE
            A5FCD90F0F46F92D39408D5294BB25FD00F4943592D958F2AF9209DA039C0E23
            3A4EB77D12350007F5FED5E59E4E5C71D08F71E93E4F604B6F85775771F830E5
            4FA1978E32118C52FF57DB99C8C571B9DB0C3C2A92E8B0853789F8D82E63A81D
            88A0F9900DC70A3AFB516B78E24205086C09100E447E1AE0258E2BEF90F4DD92
            B7E6603C9DAA21119298F83BCE7C8C54EC0B9E012FEFB27D863502A3A5F30102
            674656C22C6FE393BA3E494D6E9A07E3FA98B34E874297BFF9C95B606CE8FC61
            600AF699F504161EF10BF4499332E05FB805C62CA09D4A63D805A414E55A491F
            B59D895C58D5A6A7CC8AE2C4D39748CB72A0D4163EDB885C9F2612C9597AD519
            E2313905C47B6893ED93577C4405C898638CE60FA10890CF49FA54809738AED0
            15E9DF4ADE9A028405EF8990F23C434590493A9DE1AABCA17050CC45C5D36D9F
            A5A254096DE7FEE5DBDE7A67E0DA177C1B1FDEF359BF976091C76004A86297FF
            2062D781E2A34506106D32B4BF60C94BF1D5E73F08B4AEF2750ACE3712091B81
            35E9B9F132DBA7AEF88C0A9031C718CD1FFC10201F9BEC12DC22E915015EE238
            C2AE7FBEA4F565FD2A2B42D2B6F3EF031308109E67E5B31F1EBF84F1ECA42871
            856B537695B4D5B73DF64FC551731FC43F16DC8A2ED1F883FE0E007F26E975A1
            96905208AF28BDA62DB19D110FB6E46D32786811F1F1E9C547E2AA67DF0D740E
            4A1740874F919BFD609FF1CB908F491B1D2E5DEDB57DF28A4FE40EB05580E41D
            634CF9384552A900396D5201F284A48302BACC71E549490757F44B0ECE532933
            1312EB5990093A9E617659559F9B2EFD53E20E67145EE0EB1EFB3AF1D1FD7F85
            ABF7FB37B6F4F9FE005AE33DD9E7FD92AEB39D098F5CF171C5D22371F9D3EF90
            375BA4FF1201D2DA217D59DA9DED8E425F96A007453ACCE908F9C0FE051A55A2
            810A90480810DED00C50550B8FECFDE457925E5DF9CF33A672C65A848C234032
            C3EEEC47D54FC6D889D09B4893ED3355940AA16B5B7F3D88F54DC73BF7B90DDF
            3EE0016C1D28CFC15909D0E9C01DE1158F52C01F259D693B131E6CC55B65D0D0
            2AE2E332111F9F5924E2A379B3F45DBDA6E235B71901C2076A4E7B6FBB2F4BFC
            05C6703F4C56C97177B77CE28ADFA800094B805C38D165A09DC37D015EE6B872
            85A4CB2BFF79C6B4D56CBC632B428A080C9EC6F0909F07F9B5A4F36C9FA9A254
            C8C5303674FE3120BABC73097A5EF4236780D8EF9F113AD90366E98F3E700A1F
            2EE3D905C66984751C9B0F69E2DB5AB9ECEA45B8EA198A8F8DD2670D7084E26E
            350C6754D131CD58A65767F7572D1749FAAC85E33246CBEF6D9EB8E22739C2C2
            79AB02A4F018A3F943E002E43D885804D688C0805DD5AD33F5EC411A1A626A94
            5EA472B203E20C887FEB82CF91F43BDB67AA2815F22A1811ED1F7D9DF8D481BF
            C4E7F67BD46F37BC8437EE429800AB4AB83056CC1F6C6782640DCE5B283E5E8C
            AB16BD5D3EE0CC4781CD8737F8483598C1566383791F7E57F66249FFB45054F7
            4B3ADEC27195A048A8000957809C3AA1A7BFAFC2AC6F54F25920E9F1AAF6E089
            0E5E8B86387ABE2CAC9C722E838340C237F141F824964B0067D93E5B45A9000E
            E417F9BAC7817660EA6A741FF55DE756EBF3770684A8F387F0F916CCC33EEB64
            6D3E3CF1F134C5C726698973673E5CBCB69E0F9E92D254B7BBA617E13E4CE341
            798FED6CA1B80E94F49485E32A41A10224520284817C4E0DEE6AC7926D301E2F
            FA7DD99B3713D2D414B3599082CA48F141DB0FFFE39C7C41D2276C9FADA29409
            E301302E80AF6B12E905EB25BB3E88BF1DF63B740DF9EE058B70D9D855A19490
            425648DA1366EC6F955C83F34B97BC08573E7D3ED02CD5B881DE0E52637F9028
            187470E0C507514DB28344CAC4820A1EDA2CD90898FA0D39FF0F5838AE12242A
            40222340B8D52A497303BDE0F18353BD47FBBA47274861DAA4D888909C0A3834
            6C6C3F8209B2B88FA4676C9FADA294C9BD924EF47DAFFD53B060E747F1F011B7
            A067C4D740841E6720224B81EA842325FDDB762672673E2E5D7C84888F779A99
            8FE4C0E860AB9044FE00C3080EE9BF5ADACDE02BF8BE8CB698975A282E3E5CA0
            E1B9FF9178144BB8837015209111207C2AB334D06B1E4FBE27E97CDFF71A3B11
            922B40868214208403A2336C9FB1A294C1B725BDDBF7BD0E4CC19C594F61E591
            BFC080BF91D03DD4103D3C2E8719445B6548EAD134B9DA8D223E2E5EF4627C6E
            D15B8DCD47AADF1899E70C4EF22814201E49777971BAC9D838063313F25F72CC
            DF5A2A32C6CAF985A5632B81A002C48E0039E523E35D91B3A1DE1D8A41C576AD
            BFBBE40571454763A3A9C091172139958BCBAF82B53C7CA9A4BB6D9FB1A29441
            30B101FAA7E1F43DFE8E3B0EBD23A825586A881E0E9CF538D27626587FE634C3
            69BECF5DF872FC6EB534B54D3B46C507295780385E1E2535CA8E1B9B8C00C9B8
            9FFBC33C18BB0F1BC693C1CC6C2A16F1C4045480203A02E4E392BE18E4658F29
            F4D3FEC740F6ECD983B0D1F69E22459644CEECC760911BC277FE0F11E8B015A5
            444E91F417DFF7EA18A1AF41D7D1DF759A88008CD0891AA2070B1BF6BD242DB3
            9909477CB4009BFBA4B23EF9663CB2F668A0D573B59B63F351AE00719EA77106
            44F4419A9EB1DCB850FECC90532E5120CFB7546CF360EC76949A4105481405C8
            0F24BD25C0AB1E57E621C80628D7283DD2EE79DDCA35D03F9AE760394DD29F6C
            9FB5A29400475CBBC17870F3170A90CE65E839EAC741C401F1F8A4A4CF075940
            750E3D5E7DCB6606B2331F527F8E7DFC75F8FBCA3344D83E2BED382B14470A05
            82A25C01927DEFF65F8C79456F8F55F767095B46E7E422392DBD2F6A0E152051
            1420FAC4792CAB618CCF8255056CA4195DD69BBE8E22ACA483DEEC47E0E2C3E3
            214987DB3E75459904DA50EC8B20DA897004881AA20787F5253CDECCC7B67E60
            DA83D2FF77CD075AD79B598F6C53EE970071C9F66739B744F962E46B926C799E
            7A42D221968EAD0441CE605D0548EE3EEC0B9056496B244D0BEEEAC7122EBD3A
            339423D1A52D0DD21BFD786A140452890607C2CEDBC992FE6CFBCC1565126E83
            09A2E93FE108103E64E1F2A0C0D755D6197D927685F1A2143A6CA9D9F5774AEF
            BEB50798FEEF8F02DBF704DA9E972F5D9F03410990A43B20CBFBFD24D52B6F50
            830B247DD946B9B91C2AE93F168FAFF88D0A90080890933F5CECD21C8108B806
            8C207C02F3A1D08E4611D218A82791CA70E27EE478BE0A5784DC23E904DB45A0
            281370B5A48F05B2674F801CFD93200508795AD27E81EDBD3E79BDA49FDB3A38
            5BE9198DC022111FFB3F26FDFEB67D447C3CE71A9BE71A9CE7BDA85E8078DB15
            2ED5E5B2AC62FB1DBBFF5749BAD956B9099749FA8CC5E32B7E922C183CAB0089
            9C00A19BB99F0574F9E3CCBB24DD10DAD1BC717D7353B43C63B1020D0C9808B8
            E12DBFF260F4D9276D1781A24CC05B24FD30903DF78B0099118A005143747FF9
            95A457DB38B03784993E05F8CDAA6938EFDF97036969BB9BB78C7ABA0A438014
            BE766644261520C7C32C5BB3C5C3300F64955A410508720E0ACB02E4826297E8
            4A49970474F9E3CC4B243D10EA11BDA746CD2D36661BC6E2E56120F4E557B95C
            0F63C8A9285184814AFF19C89EC313201749FA6C607BAF2FB8E48A71B5B6877D
            60B6D04DD264B74BF7F1C3D5FBE12D4FBD1E18943AD4BC15F983FF480A9017C0
            DC474D61975B0E7B43E3A1D5162A40907350445180FC5AD279015DFEB8C2F5BB
            F46CB331F4237B46E94DCDA3EF6DE1453E1F1C8085D90F8F36492B2575DA2B08
            4529CA3698414B30ED447802E415926E096CEFF505FBD2DF847DD0ACF890D6F2
            ABCB0EC0058FBE0F68906EAC7933C6C699B42540BC81D4983E8DB632743A323B
            EC72CB8106EFDFB0787CC56F1C81A00224E7A088A200E112970303AA02718506
            68875A3B3A6D40B866963621CE85B52442EC2EBFCA4507484A147954D26181ED
            3D3C014243F41581EDBD7EF889A437867D5046379F22639B66111FD72C3E1817
            3EF96E5123A28DD33D6E74F3C2B6DB820049B8EE7EC71E730A8CD7A9DDC22EB7
            1CC27338A384870A90FCDF581720278DB1A99E2B69B1A496E06A412CB1B68637
            CBC8B0892ECB9910BE0E1B6FF9555F9FD562C8E126D8BE268A920F63D5BC2CB0
            BD7B02E4989F062D40083D61CD0BF408B50D67C1D89F0E847950C7CDAEFB9CEA
            ED8B4EC3F7979D6E663E3CF141AC0B9022DB9BEF447C24B8CCF9A030CBAC802D
            30F53EF425734AC0A800C9FF4D0405083D0CDD135C0D882DB48BB9D46A0E1C7B
            10181192B6E019CBF37E6577F9552E14C9CB61779A5E5172F92A8CCBD0600857
            80F0A1CB2B033D426D738AA4BF847940CE7CCC96EE61C72070DEC257E1CE5527
            01AD9B649CD39763708EA80A10BAFDBF1736571A185E0A1D03D51005F54F0508
            720E8AA809107A7AB21AA535A2D0238C4D578006CFFEA349C6DEE954B8F620CE
            F22BE9D986420D3E38192F9142F89BED4C288ACBBB257D3BB0BD6705C8CFC210
            20743F7A79A047A85D7E20E96D611D2C1BE3A311E81902DA1E926AB8FE08A063
            B57C318C3102227A0264AAFCB90FF6C5C765924775B95B53A80089AE0079E907
            0BAF168DAEDE17402D88378904D7753F6A3B1B0E9CF96025696D73DF8721425C
            BB9381FE28D87F14428F6D57DACE84A2C044B9BE37B0BD872B405E0E0BC6D335
            C07A497BC0382E099CAC9B5DA91A8F6C020E7FE41340EF1CA065A3896E5E8C68
            0910C979E27E79F58230CA6B02385B758AE53C287EE20985DCF72A4090735044
            4D80DC29E954FF6B42AC6187B297A46EDB19C9E218A53700CDCDA3B61981E20A
            90FE5E6024133501427E87A0A24F2B4A6970ADFFBE08D2783B5C01A286E89571
            86A43BC23810975CB5A7CCB3A89FACDC0D6F5CF856A98553447C6C76975C8DD3
            4E474780B4CB4BCE602F08A3BC2660031CEF7509B5FBA8255480E47C1E7D0142
            D33546C09D17445D8831FF90748CED4C8C8133114D72C99A5B83374A67A5A4ED
            4774EC3F0A11358685302E5015C50674DEB1BFA46064011F32F4B4A37DE7A7D1
            75FC2DD8C6C9C8609F3B24DD73DA33D0A3D416374A7A6B1807A2F898D960C639
            DF5DBD1FDEF1D8BBE48D54BD5606182C32D3904B3404C84C185B0B9B06E71E2F
            92F4A0ED4C283E922B1E723F5301829C83224A02641F498B306EAB55B784BA9E
            B774326650427B10BAE70D5284445F80B02C7681592637CB765694BA844FBDCF
            F07DAFBCC79D659772DFA51844AE11F71DFE191C3703D8B8A3A0EDF71F8D0955
            3AEB60668D02F77AE578BA6A84F3D8E5FD0B4FC6754FBF1A68DB683C5D217770
            12590142517B0FECBADAF578BBA4EFDBCE84E2332A40B24458807C20F7086749
            BA2D98DA106B2E94748DED4C14C5597A4511D22A22447AA49180D664C44380F0
            EFE192FE0FD93B5B5142E35A491FF5654F9EE8F01AEC8646F390A1210DF4334C
            C200FEF9C28BF0E2E9C0FA5E197706774BD220F7D361145E0D70B2A4BB833E88
            E3E94A9A7B0C03873EFC26FC67ED61224AB74B8B3760663EF2EA42240508DB68
            C6D98882F7C2EB24BDDF7626143F29221EB25FA900C9FB8D750172629E00F9B8
            A42FFA5F21624EC20948F447DBD91817CFFEA3ADC354CC20DCF3C647809013E4
            F53DB6B3A3D41DEF94F49DAAF6E0CD62D2CD7652C4464A3AA8860663EFE53C6B
            A00308B9BFBBE7029D4F2273CC75CE4074FD406022847655BF0BB514E3C9F724
            9D1FE40178F9B9E46E761BB0A21B38F1F1B762393D5DB573E2C515AB00222E40
            5E2A7F6F4734E28CFD196AEF5A83A80089AB00F9112C446D8D386CD9B9AE7BB1
            ED8C4C0807DFACF06D017AC66200C2E1A1E80A907CFE4BD26F6D6742A92B2A78
            02EE2EA3F41C3B70A683E283C1462940E07E97191EFBBBDE19386EEEDF70DFC1
            BF469F7CBD632490B5B35C2AB3D44E71C686C0975E79ADF90C19B63FB60D78C1
            C31702DBE78BF85883FC255788B200A12BFB5F06554665C23ABD40F2B6C37646
            14BF5101125701C208A447FB5F2162CD7218DB9821DB1999142EBF4AA5831321
            3D3DA36BD1E3019FB6DD055D8EA5040F079FF494B77AD22D790F655CE1C1CE8A
            F72C4507C547031F0CBBCBAFBC99CC71EF63B90FB7CEC385875C8FFF3DF8DFD8
            BACD3C21F7F9EEA40A7A12C6BB97529C9749FA53503BE7D54FC9459DD601DCBE
            A60D67FFEB0AF940EA46F396E29EAEA229403E82E82C63A6374BC61B59663B23
            8A4F14AB8B2A40B244588064973FB64B5A2969BA9FF5A206B8538AEA74DB9928
            192EE1A0517A738BFF46E9BDBD669FF11120E42530CBE73A6C6744A969F84475
            7C0F6C9EE860034CC141B1C1E555ECACD24DF23A69BE1FA6E828584239AE00E1
            F6CDCEFFCFEE75332E9AF738B60E9809139F612C9097DB29D6C8F30B49AF0B6A
            E7B4F7989636E63F9F5BF2025CFCF46B4CFBDBBC2D27B279E405C8D7112D3B8B
            E32469F0DA5A420588F337CE02847EB8A311682F5A7C19E6E94D4CC8989910BA
            E6E5320E3F8DD2E32940C801522E74AEA0EE4495A0A0C83D33FF23DE27EEFDE8
            D872C828B2B1D9B5EF4899EFB3B321DE6C07FF942A40B88B6163943ED0815B5F
            FC119CBB4B3F36768F5994532D0CF27989CDC28D288C1D314F524F103B773C5D
            71424CAAC3BB179D886F2F3947EACE803138CFE45EE1C80A104EC5DF8C203CC3
            55CEEB24DFBFB09D09C5675480387FE327404EC8063D7F83A49FF85A296A031A
            167ECF7626CAC21BB0B44F31031FBF44487C05080BA55306773F9717A7D9CE89
            52938C7D50E1090FDE87E946D7A603C69EC3111DB91B6772FE952140F8031AA5
            F7CC70225F3F73E4E7B14F2BB0BEDF57A3F4574AFA9595528D36AF90746B103B
            76C447ABF170F68A275F8F07561E6F8CCD530CAE5E7CF051FCAD3501C2D81E14
            1F0704513E15C2FBF3CBF1ECBF94095101E2FC8DB300B94AD2C5BE568ADA209E
            D3B51CB4B022B5FBE8192BDE02C41BE3D155EA876DE746A939DE25E986BC4F28
            403AA601AD1DC67943564864F2FE8DFDAC4C0142284276CC02A6AC40EF515F41
            B3DCA21B077D8B1142271CB403F1796225D6D0C185EFCBD2B87CAE414A796A0B
            B0AC0BD8F3A10F009BA5F83B686CEE75FA85BF8A9C0061DC989F4A6AF6BB7CAA
            E04B92B14FD8CE84E22345E3CB386F463F530192F379B40588069C1A4B3F4CA0
            A40DB6335211B94F6049B546E9B5214008BDB1D0FFFB4CDBB9526A86B361DC8B
            1A2838B80C72EA4C73CFE4DD7B010810EF75D75CBC72FEEDF8D50B6E479FDCAE
            DDC3BE8810F692F402383FDC228D2C52B260D0D3AD7EEE346BEF21C3F6BBD735
            E3E4072F927A244AA47553BEB179B405C8A592AEF0B35C7CE03B92BD778E5B16
            4A3C510132E69CE327408E7FAFB7C542446BBA340AF0A9DFC1B6335131BCD0C3
            832648615BBB6BE05A8508A91D01C2F71C40D0385245B7E2079C2558E4BC623D
            1B91FB6EFA1C339A1C2EE24237E7DFD8CF2A14204E9C1019C1F675E0B85DFF81
            FB16FC0ABD03408F3FEE7969437556A8251A5DFE07E609BF6F38C1059BE08C47
            DEFAE4E9B871E96940BA4FDAEEAEB1C6E6D11420745EF36344AF8E182701E39D
            83121F52B4691D705D9227A0022497780B103E095E079D622F846B58FFDB7626
            AA6664483AB236A0B5B53A7B90DA1220DE8B3749BA5AD22CDB3954620B674877
            861312104670B4C8FDD631C3DC7B63085080B0C31A6A7262847CFDB0ABF1FEF9
            CBB0B5DB64ACCABBF63249978758A651E54E49BE79457434A3FC992963AB6ED1
            AC6F7CEA1CDCBA4C76DFB651C626FD26B27996C80A9013606288EDEE57B9F8C4
            ED92C9B3273C072506C8754BB7003B96CB3D21ED6AC3143720AB0A90C2738EAB
            00395ED2BD7E55971AE272446F3AB90238289181509BDCB82D2D459EC896486D
            0A103253EEFC4FC2D886A80857CA853662C739AF28F0D9F174CEC1F8B657010A
            10E28810B9CFFBDBF0A3C3BF8837CE5D8B8D3D552FC5524374130B6A0F49CFF9
            B1336F68315D2ED5A35B81C31E9426A847EA4DAB888F444E64F32C911420B41B
            BDCA8FF2F099DFC309469B5B6671ECB7EA1DB9660D1DC0F6853869E33F70F72E
            67CAFBE966264405C898738EA100790F5FBF5BD2377DAB33B503FDBBD786CBBE
            8CBB0EA37D9AD4F986CA6284D4AE00F1067987C074A8AFB19D5B2556D04BDEF9
            CEAB41E9183B3A8DF1F9B033FBC11EA6E0660B5880100E607BA73B4B78B61EFB
            194C6D02D6C9EDDB50F9ADCB60AC5C6216C79BDF2F3E24E96B7EEC88C6E6AD52
            335ADB819F2F9F87D73FFC0E38311F5BB716CC7AE4122901B29BEC836386A82D
            B922AEF8C8C9B70A9078C2D98EEE253863ED5DE84EB7E3FE9DCF32B3215CE2AA
            0264CC39C755807C05A67155F2616C94C76D67C2371CF120157ECA347373942B
            426A5F80781C25E902A810514A83DE75BEE4887C8AFB6933CD7D66663F4E96F4
            5E37AD339B872040882742A62E43CF91D7A3255D957B5EFE8A816A77B552C2F6
            7944D2E17EECC871B14BFF508DC0454F1E8BCF2F6620F5A4092EE80D488A1219
            01F25A980796D3FC280F9FF99DA473F3079745CF41893A0D53457C2CC629EBFE
            EA5CBAEDE9A9F8BF39274903D6A602A46604C8718E00B94BD229BE559CDA80BD
            C11C184F58B503976231527AC7949CE8CC25523F02C4FB8C4E19F8649B4264AE
            ED335022CB39A09136EF2D3ED29E36CB9BFD20AC3FDF91B416C655EFEF421320
            5E8C902EA9BA331F47E6981B9C5DAFEBAF7826844F96CFB651C01180712D1656
            B303CE7AA4A4DCA7CBF8694D17F0E6A75E89BFAC3E5A84488FA41DC6D87CC2B6
            D5BA00A13B45CE00BDD9D792F50F233EF2CE4F0548FC48B8331F8B71EABABB31
            946CC46022E5FCFFE79C935580382F6B4780F0E355306E0595511E90F412DB99
            08040E945AE819ABCDF48AA5527F02C47B45FF34ECD8B824EF24988E58513CE6
            495AE1DC5774BD3B7D76EEECE235C80F50F87DA9581F94FF3B4211201EDD3BE1
            83FBDC84AFEE7B3F0664F7DB872B3276BA1CC618BDDEA08DC3A7ABD901AF448B
            14786B23F0AF2DC0518F4A95D8BC37307595FB6DE1A0A8185605C8AB60EA72D4
            0CCD3D46C547DEF9A90089170963F3E1888FBF3AA2A337D98C86CC0006934D2A
            406A5080482BE8F87857F2918102DE6E3B1381E13DAD75DCF30E95F69BFA1520
            B950A89F0AF3D4FB0898C1A752BFD0209986C9438EC7ABF6E9C6D9C3A80029E6
            BE7605284A32B865F4A3200588FC1F4903DB76C31BF7BF093F3AEC2EECE896DB
            79A46C11C241E8CD6117B065964ADABB9A1DF02AB44A41B788F8B865ED54BCF2
            E10BE57AC89B96CD392E765DA22740A6CB4B7A097C9B4FE519043F93FCBEA1F8
            F9A900890FAEF8E812F1B17E547C24A53D4C65865480D4A60079179F1ADCEA63
            2DAA153E06E39EB536F10635344A6F681A67005E6023A202A47083161811728C
            A4A3619669EC63FB4C95507954D261CE2B8AFAE9B380A676CFFD2E6F140E60E7
            8FF3DB1B255D22694DE03320DC0707BDFD6DB8F2C01FE2927D9E404FAF891152
            8608D9D33D9F7A82DECDFE56C90FBD798DCE56386E08CE78EC1CDCB1FA581940
            49C1A7C759D91B2D01F246495F8471311D55BE2BE91D63CE470548CCC899F958
            7F0F06128DE817C19174DB42152066A35A14209F97D79FF4AB1AD510F4A2F17B
            DB990814BAE3E54DD22E83A674A64070486D49B5B8817FE46667C5510132769F
            F93448DA0B6656E4509801DB2E6E62AC1DDA14C928D0BAABDF4CB1CCFBC81670
            89D1C416B5959296B419C6462B1DD0FEB7BA69B2FDF37B463FFF86F132973491
            CFD38D9E01FA6EF2E1CA49F6C1F3F884FCE0DBCEBBC004084C6736D82422640A
            AE3CF807B8E480C7458100EB06CAB209B91126664E1501856201AFEDDF51A18B
            591A9ACF96D620D10CDCF6DC145CF8ECB958B4E11029E81E1360B0646190F765
            DEBF319F177D5B910039485E5C01E37A39CA70EC7251D1F35101122346673E4E
            59FF570C8BD0E8CD111F440588D9A81605C869304B4A947C3E073390AA5158B1
            1BDD27A3CFE185C9ADF249C6B941924E2C83041E6A9C0BB4EC21F748AB6C3724
            43CA6DE6C9AE0A90E2FB98180A8FA9A048C9A0DDFDACD94DB98339166E374CCC
            8160844AC211071506832909EEBF3FA0FCB3C5EE0E30EF95313468820F4E9D9D
            1B7C9001EBEE28710F7F05ED0C321CF4062440088DD2079B9D3821AFDDFD5EDC
            B0EFEDE8906C6FECCE76C34A1530A239975BB5B799E735172C3E15372C3D49CA
            5FD448EB6653FE99094AD9AE0049C9E6B47589839D8FEB12B9703059787E2A40
            228FE3EDEA993C9B8F64411BA802C46C547B02E4D877555D7F6A929A6EAB58A9
            F9B03E859D8717E3C8913532A26B949B23096FE140323382C6CC0036D3F55DEB
            9E327C9E05F0C19D331B12E4C3F300CFD9AE00A9FA67BE51D375DB12EC10DB67
            8A0869CFB5FFB850D2FF96B9A76FCB0EB82C6B63F6133F0588E3198B0F1D52C6
            3BD6F425F8CD01BFC0CBE7AEC1B0DCDF9B062B76D35BF7B08867349B17BF593B
            1FE7D1BDEEC68380B6E7A550A56033254C08DA1320F4F4C7598FFD6C966189FC
            B79CD6CDF965A202247E24726C3EEEC680088CFE22E283A800311BA900A9176A
            B6AD72673EE404293E0ECFACC316B48CBB75F3C800D218C270A2017F69D85D1A
            0C9A388C60EC6827137171A202244BCDD66D4B70F6A3750A30A5533A9CC1DC6F
            6E00D7A797CF0698E525DF9034E8BB00F1488850EA99ED1CE20D7BFC0DDFDCF7
            3674C8007AAB0891E18C569352A123C18E34D024CDEAAA2EE00D4FBF16F7AF3A
            5ADACADE0243F3124A347C01F2624957221EAB20B8F4F21C19E03C30C6585E05
            48CC481857BB5DCF3806E703C9C671C507510162365201522FD4645B953BF3F1
            8C233EB68AF828653CDC280D40930C54FED4B0A7FC7C9A599295B75FB9915232
            0063E5CB0CC0FE28BBC8B9AB0031D464DDB604EDA69C47DF3B49D56FC85D7E45
            6843704C157B67E4F1CF483DFCD9041928FA72FCEF0A36E292A0E12611223380
            A9CB71EBFE3FC3B973D722D30F6C1AD265591331E446336FA7A99C94D73B9F39
            09DF5B7E9CE8B95613D19C658B2203A389084F80CC97BF1F95F43EDBE5582274
            F6709EA46566605658262A40E24322CFE663D099F9681A577C10152066231520
            F542CDB555DECC4752C4C7221C31B21E5B12A5890FC2A621255B3767C6BAEC4D
            39B623D233A46760696A17F960068C10E9777F1985C2540192250A97A356E072
            AB3611E4AD1D85B31FF47DB4C3A7A3DC03F394FAEEB15F5529403C3858DEC1FB
            7608E7CD7B003FD9FFF78EDBD86D7D329E1E29E85FEA1CB668EC4B3B39712CC5
            79C3AA7DF0AEE5278962DB479AD86E49BD287E93454280D011069706BE17A68E
            C6815BA55C1883A9CFBC5501126B68F3D1F58C888F7B4454344C38F3E1A102C4
            6CA402A45E886D5B951E27F3A6D1DE79E819111F6BB139E16FDF93A0657566C0
            19DE2C4BCFC4624788CC74674A8660BF40558064B17D296A05CFF3155DEFB223
            C9775BCDE12963809CE4E311E995EFCB3006EB5E268ABE1CFFBB892A9FE47FA8
            59867922A63AD6E2B6836EC0593B6FE70A2D6C1C50114238EB31B341CA42C4D9
            135B818F2D391777AC78A971ADDB4C8766AEF3DDA265655580D0010603603228
            E634DBE55806C6D355A26080A3022486240A6C3E9A279DF9F050016236520152
            2FC4AAAD72975625447C647AE08C18C638204A63D6F02A1C95791E9B027AF045
            23F6940C62DA337DF22A83C7D373B1A6717F378B5C9665B3505580648955DD8E
            3059D7BB33CCF2AB4C51C762140C17F87C647AD6BA56D25DBE0A906C7D97FF7D
            D39CE085AF9B7F0FBEBFDF6D68165DD22563ECFE8C7D1FD236A05BDDA9D2BCB2
            1C204DD927161F8F2F3D738689ADD2B6DEDD2AB7832EB6172B0244467CF8008C
            D7A8D9764BB12C5819DF2CE9C763CB450548FC48189B8FEE458EB7AB890CCE8B
            A102C46CA402A45E88455BE5D97430C9E860783D5E9CD9801611208363423064
            D02CE2A03790D009F9784264FA480F9E48ED8CE5CD073B9F66E389D82A2B1520
            8658D4ED18509A00E186E7CB9F6FC1FFB8282240F015497F30871973DC222F4B
            1120301DDF50A3133304AD1B71D9BCBFE0F2BD1ECCF685433208DF3E3C1A3F64
            D0769D0E08AFFB9FDE6ACEF9FA9587E1432B4E00B6ED0A34751B43F3626E75ED
            0B10060F7C2B8CF8D8C9763996C9D37212F4CAF578F1725101122FBC990FCFE0
            BC3CF1415480988D5480D40B916FAB783569D3D1273566038E1ADE80CE4C377A
            130D1872DCB98F1D110C597876392DD38327D33B6145A36D11A202244BE4EB76
            4C285D80F0CF0B619EE6EE1F404E18A9FB3A39CC2F8A1CB7E065890224775B8A
            90A1262CD8F5415C32F7CF484B4FF2C229EBB16BAB09FECEBE87A7EFD42B2FFC
            B77CDE55E0D2975FF58F44C72A6C2298577A029BDD6232FBD066E094A7DE8EAD
            6B1600CDDDEE722B8C7F26F604C83EF29682971DFB54BBA55811ACC3EF9073CA
            8FF5A30224A6E42EBB9ADCDBD578A800311BA900A91722DD56F14A36494D598B
            970CAF44077AD12F62A4170D65DFD8614011F27472273C6B75264405489648D7
            ED18519E00E13F0E67BF23E90D01E568A1BBFF1FC171595AAD00C9FD8D9C679F
            0811DA8964D272CE2B70506B179E1A4C63AF741F2E98F34FB424873090496068
            B00D874C7D0AC74F03B60D8DEE815D2DDDFC66C30D79B03E8E981986ECFB12E1
            A6140ADDAE33329E42B3ECBF2555FE6D36E4FED679AEE3EEFC1FEB81CB97BD0A
            773E7FA8396F47789422244AFEB060938A05C87192283C5E9B730671E36392AE
            2E2A165480C490D1998F5336DC8BC14463C9361F85A800311BA900A91722DB56
            F12A4A2F9E5983970D2F71663BBA51D94D1D26D3323BF0547A272C6B948EDC11
            2161DB84A800C912D9BA1D33CA17201EEF97F4F50073C6780937CA0125E13FF9
            C7AE44801422E73DD02E9D6BDAED20A5428DE4748874EBDB2A23F78E4D8E5E31
            FB968E3639888BE63C88E9E941F4E6345743238D98D1B40DAF9EF9ACD3370D97
            717F70DB4639F44E6DC88E23D00FACEA35E380729822595CD803FC61E3119892
            EE4797E4EB8AC567013D9D723E1B64E0339413D36312C211201CBDBC5A3E6027
            7E6279671B29E86E9AE2E96FA3E7A70224DE24DC381F8B70EAFA7BDC6557958F
            535480988D5480D40B916CABDC998FE1E770C6C862F4269AD08774E4C58747E7
            C80E3CD94011728819BC21CC99101520592259B76348C502C47971384CA0C223
            02CEE5EDE0D2AF0C7E03C77CBA5A019299FC63BAF4A5372DDA90247236A0AD04
            C5C998955E2264527D8EE7ADB21931BF7DF79C47D0961C416B2A83FBBB66E39E
            8D07C840A5BFBC7DB1791D907C77EF24F91E3279E68C477AA0BC6082E36EE69B
            009106D49945A39DC4BCF20B2D52FC50D27BE4A47AF34F5305487CC9151F7F2D
            CBDBD578A800311BA900A917ACB755BC5ABC611B90AD8009A9AC23AB71C6D012
            111F8D223EA2B9E46A223A333BF04472272C6F661FEA454F9FA8B0FD1AADAB00
            C962BD6ED708D50910EF258DC83F14426E5748BA490EF873F9FF48F16CFA2440
            CAFE7DC6CCA00C3757705A19230E06DB46779D12F1D0D053FA6C456ED644C420
            CD7013E3DD24D6048854B2C4D9304BAC5E564141450DC6C879B714C94FC6948D
            0A9018E32DBB7A5AC4C7BD15199C17430588D9480548BD60ADAD4ABB894FE078
            C5BAA546488798E093C36E9C3EBC1CFD5269E3283E3CB81CEBC9F4CE58D178A0
            7B8E45066ECECA0E7E9770454AB5A376152059B41FF6077F0408FF9C0163BB31
            37A49CDF2FE966983825CB46F3624B80C489D005C869925E29E9E588971BDD89
            603C9B0FCAC92E1F2324B22F5580C48F448EB7AB7B2A36382F860A10B3910A90
            7A21F4B64A04865319BBA4067461D7916D6895EA3A3DD38369223706E4BB94BC
            EF17714217BB71151F1EAD9901AC4B76A07B9C062A3D32220D580ACB523B9980
            868E10A1DD48A50318152059B41FF607FF0408FFD063D1D5306BE1C382CB5EEE
            91740B2846329912D640A900A97CB3920508835772B683331D07D83E631FE1D4
            D24530B171303AF029281B15203124577CDCEB8A0FFF6C535580988D5480D40B
            61B555CECC0607D75B64D0BD1D476436613A7638C6E5ECAC0744700C387135E2
            DF7517D29C199AB0814AC9194B0DC5B2F40C2C4EED9C2344265A22311E2A40B2
            683FEC0FFE0A10F77DE63CF97B0DC25FDB4FF74E0FC088913B25AD9CF05C4AFC
            B88A0D234A200284EB6C5F0A33DB71AEA4BD6D9F6500DC0DC624492416E69587
            0A901A2077D9D57D551B9C17430588D9480548BD10685BC54AC5190F5E91ADD8
            73782DF61CD98C46911D3D8E6D47AA2EA30D17C2E68B22A43D63FC73AE4C76E2
            A9C679526CD35D11520E2A40B2683FEC0FC10810FE6D97F42538C6B956E00DF7
            2F497F8211238FB99F4105886F028481024F85719F7BA6A45D6C9F59406C9774
            21CC12C3B1034515203127E11A9C3FE5CC7C0C259BD1EBB3F8202A40CC462A40
            EA8540DA2A2F7239673DB662DF91D5D83DB3C5891A4E57BAC335B0B42A081859
            9DE5C278229C19BAB3E950B96F674B19F696B117152059B41FF687E004880707
            A7D7C20431B4C90A98A55AF74906E92AF599F14EB18442B37C2AD552B1009929
            1F321012ED7D8E94743CB2A38F9AE587922E91B47AB45C5480D40EEECCC7F6A7
            71EA867B7DF176351E2A40CC462A40EA8520DA2A67B955BF54CAF5382EF33CA6
            A01F5BD1EC2C335226874284B6236CE0FEDC7448992244054816AD6EFE10BC00
            F1BEE3BAF94F4AEAB07DCA2E0FC1CC8A70590D97D43CEAAC962CADD06CE7BD4A
            4A1620BBC244BD3F1646401E05C793555DC0B81E174A21DC36B65C5480D4042C
            DFB437F3719FAF06E7C5500162365201522FF8DA5625E179B13A72E819CCC96C
            47B713C323BE9EAC6C4111D226224EAAB32B42E648B9F694F04B152059B41FF6
            87F00408D95D5E7E56FEFF8FEDD32E0245C862383324CEECC81392964F5816B1
            A5E8CDC308F72F90B4178CE0A07BBF0592A6D8CE6DC874814B07138E3385BEA2
            65A502A40648046EF351880A10B3910A907AC1B7B68A15ACD1895C7EE2F04AA4
            A50AC621727994C99F0939581AA45DDCC19F1B95996E7DB383C16C286615201E
            DA0FFB43B802C47B7996A4CB6096F144154E4BD2BDEF5249FF765FF3A9F833CE
            DAD3F8C251C39E30331BBB493A144678D07DF2AEB63367999F4ABA185CAE574C
            54643F5201126F12599B8F53447C0C86203E880A10B3910A907AC197B6CA8D5C
            9E598533879F955EB95192CE7AF80145480B06445E24715F7A37F7861C3183C0
            64BB247A35959B37D1E27E3E5830B85301A254891D01E2BDA1BBDE4B6106C271
            81E2631DCC2CC9B3929E87992959236995FBFD368BF96324442E73A3A0A091F8
            1EEE6BFEA767AA7930B1386ADD76A31CEE95F419B911EECE7EA202A446491404
            190CCEE6A310152066231520F542596D95675C9E2AD801A3FBAEC0599965E812
            2132E018532B7E4111D28021B466FA736ED111F44959F7251A459C24F0AF34E3
            8874CA17AD70023C3A410D87C6EE4C0588522E760508FFD05BD6C7DCD462BB38
            AA8427D42DE939491B256D72D376F73D675536B8DBF2730A152F6A2BB7D992B3
            2F36C673DCD71C1D25DDF7ACF9D36196464D77CBAFD37D3DC74DB4D368B45D18
            31E03F7084077E65DE160A8882CFB21FA9008927A3331FA78BF8E8F329C279A9
            A800311BA900A9174A6AAB3CE1C1D423956D1D7645BFBC6249271DBF56076636
            61505EABF80807CF752F8336A6A57EA7E51AF4251AB02ED18145A969F2A50892
            44B31BD43067C0A802442917FB02C4637730C602F02198C6485182821EADBE28
            E99BC86B405580D42EF6663E3C5480988D5480D40B93B655ECE7F9F04D844766
            038E19DE8069991D1849D03CDA5D0E24FFBB653B3E8957F1610F0A9296CC80E3
            EE7843622A56A7A660ADB36C8BB32223468CA80051CA253A02C4635F8C643E28
            FFDF0915228ABF50785C27038DEB61669C0A5001529B244237382F860A10B391
            0A907A61DCB62A47780C6FC45199F598861DE843A37AB58A389EDD487366109B
            13ED782ED581559C116160C3112ECB2A589AA502449988E80910A9C7CEE7FB48
            FA882436EE7AB5956A5829E9EB926E00854772BCEAA402A4F618151F611A9C17
            430588D9480548BD30A6AD12D19168302E5F873788F05827C2A3CF111D2A3CE2
            05AF5433869D59111AB13F94DE059B52F3E4FA369A382DD965E36EE3E00C0AF9
            190798B9154305485D135D01E2416F4D9C11792B8C81B5A294CAD39238DBC108
            E67DD94F5580D40909D7E663214E5D7FBFB5990F0F152066231520F582534685
            361E467874A257DE71C623A54BAB62CCA811FB20B6265A8DC17A72AE1122EC73
            873DBBD626233E3D8F5A9E4B5F360E1C848286ED65D4041520B541F40588B72D
            6D44D8D0D373D66CDBC5A6449AFF93F40D493F2EDA50444E80C0B4CDA9066407
            9279DBAB00291B965D4AFAC0AD4FE0D40DF759B1F928440588D9A8460548B9C3
            E8522A6229FB2CB5425732CC2FE766498EFD6DC29BF1D8E1DA78ACC7B44C2F7A
            6570DAAF5E186B8E6669E09A44483C959C830DA936EC3ABC1DBB8D6CC5907333
            26B005CD78363515534706B09A2E7E936DC6768406ED89B69CC16702639EC6E5
            91318DE7B84CF2DB8AC9D96F7202F3800C97A1F9D1D124CCFDE317196F895C6A
            E2FD66B72BB5CDE0B93698FB7DBCF21D6F9FF11120DE3F7A7FE26CC8DB251D52
            620129F5C16F41C3F204FE34FA518405488A0F8552E6FE1BDC26F5BE17E8DB80
            3D86B6491F3DB67DC8A8002919F6796969CB0EEC5EE6BCB72D3E880A10B3510D
            0A103A4F29A772B140D2EE6F0A0752E99CEF0A97AB14EE23E96ECBEDC61BF478
            DE1027DA57B17D73DB94FB3FE3E6B3D8FE99870677FF999C63F0C2F7BBC2834B
            AD7A9D181E2A3C6A1F0638E4AC08FFF6398352039DFA36674C7D1F900E8E9ECD
            1AA591DE9C68C573A976A447E47BA9632BA5911C48D0AB67B1FAE6D5FB4E8CD6
            4B8F949B86C7F99D57A7CB15080D39BFF396926D1F675BC64D6997D464F299F1
            EECD7248B84BD9E477996DEEF1AAEDF899AF2966068A4BE432DB26D88EF96F75
            DD2D0F4FB2DFB4111E232C8F1E140FEF30C13EE32740723917468C9C5BD6A550
            6A09BA37FE85A41F487AD8F924EF568DA00049B6987B76709DDC8A3D68EBDF8C
            03FA9FC794C12E24E57EE440754485469598FEA637D52A62246D5D7C10152066
            A39A1320FB1C7D1ACA79B2DA24039227391848D2653ABD0879CB4FB8D31D5231
            D891F7E1A0CC5619B0A78BEE8383B9CDB2A7B5890EF92997264F71F7C1C1CE30
            8CF0E0FBED9833B21633337DE3EEAB10DE2C5C5AB324310D5991939CE2EE93E7
            D9EF7ECEF772638D6CC4DE998D4E84F221EF42CB05E06CC7AC4C9733E3A1361E
            4A2E09F77E11F9EED4E546E709B9B9A9D8C064C6990131FED132F8736A2E4612
            3BC1DC3FACEFAC77F4C4B51E078C6C964F5279B52DE9365B8B928C67C215348D
            66FB09EB64A3C953663358E7779641F634F90D7FB18BD46B7A06CB8C698E32D8
            986843B7DC9B4B18CC91F710EF1D67603DD1AC8DF9B5111E23CE31F715E1BEBB
            1BF43A53E58080A5B146DA9C2793B3316F648BDCAF9B8BEE97DB31FF0FB36D4A
            CE72F353AC9C5CE191E94172643D8E92BC76C876438964D1636F14F131BACFA6
            5121126F01E27D77A07CFE1679F13A6834EF7AE15F927E22B7CF4D5281D7E77D
            133901E20EC01ADACD67FD1B30BBE7591CD0B3020D23034E9B359468407FD2EB
            DF557CD4222A40CC463527404E3DFAC8B22B03632B6C47331E48B053E640AA5F
            0606CFC9C0663B3A64B89EC90E9926A65186FCDDF2771BDAF058829D3807577C
            626B84C781220C2878862A987948BAB9A070D92203BDA745ECF425294ABCA7CF
            1BB0FFF07AECE106DE1D2E302EE6315578287EC30EB3436A6597DC3F7FA70849
            CD729EE8BF70F839CC90BB61789CBA6E24FE30D68A587F2C25F75D6296BB4490
            03ECDCE5418DE606977DEE31B45606EB9BD0941814E961043C07ED7DF27ABC47
            0EBCDF5232B0A6B0EA96C1F6E3A999D8CA7B9C0F0BC608111375C5D8CCC8EB61
            111E23CF63FEC856A7C1DB217BF1CBDC85F96A90E30F4BE3D83B8187D916D9AE
            5104C2BA648788869D0A8448627459E58899DD9C9AE9C50EF97E60027B2E1EBB
            394317CE6DF837CB9EED14F739D26F3A88780B10EF73AAE157487AADA4B3FDB8
            664AA460F0C6DFC0B1EDC07DCE2745671AC67D63085B80A4283CA482F6AEC4CC
            81F538B867399A86FBD0936A95B680ED80F6CFF5800A10B351CD0990971C7D4C
            D99581330CCD3210E19AF94D221EF8BF43BA70BAA21D28C35EC318010F3B1D3C
            073CCF8808795EFAC123326BE5EFA00C60B8E754C522C00B4AC77DB7C89E282A
            1E11D1C4E1D7023906254A977CEBF93C529430F0EE9F4647C837A25D5E5318F4
            9630CBC7FB222D35796D622A1E7506C214ED9EFD82111EBB8B78DF47C47BA308
            89ED4E44F8F2EF21CF40BF3DD3EF0CD01F4FCDC656E78143876B13313C2A3C46
            36E300CE788C6C76F2D095B07F4F65858808A7871D57CBB34D9E452019E1D157
            F6EC26F7D924FB5CEBEC932270A6591232B5C35DED399EDC8A8500C9FD8C6E7C
            CF93F41A4987557D31145BF069C19D926E86233E12F96B2F232B403266A69176
            1E3B9663F7FE3538A06799736FEC48B545665990121E2A40CC462A400AE0F086
            85EA47A46F76F01C5CF538C2C3DFE07D9E1869739FE076ABF050220097FE0D3B
            F322E52D1DA010E1D2AFB589293218E6CA9966EC3AF29C111E9CBD907BC88F00
            98BC4778A7B43942A4098FA466A22BB9331C9B08111CFB0D3F873D46B8D42A81
            EE08088F31E5248281426A7572BA7462C3CE2C6D8F3BE351292D9941E7A10997
            85AD4AB46373E702A061AA7436DD28BE0424760224F7CD51303323B415D9AFE2
            4253C2E46F926E9174ABA465A31F17131B4109108A083AE84821AF3EE50E08B3
            CE1D72975B25CC0093DF752FC6CBB619D394EDE90E201BE057A9375480988D54
            80288A12195A9DD913383385CDD299F73A738AC1AC83A658E28CC80619746F12
            01323FB3D911F5DD596711D1A5C91DE8F8E94882FB9C32D283D50DB3F050E7F1
            D297B48E1521CE00CC1D34397D494E380E2ED91AEE43C405482E2748FECE91FF
            341C542F5AD1816BFFEE9774BB74EEF462F59FE29B85244038004BC920B16F3D
            F6EA5D8CC1845992DD2483C8A50D3345AC33F0EB00D0D829DBB598FBC0F33AC9
            C149CFB338B26B213A87B6A227D922BFD7198F7A470588D9480588A22891C218
            B72330E1918B17C49162A4D759CC18FC31A30C97AA4D1DDE8ECDE9E97870E609
            EEE06A30FBAD6327E20CB052E67FDF06384F7D69C04E57CE4D734C67E26C37E4
            DA91E4DBA3157B694980E40AA417493A131425C089560ABFBE619022233A807B
            252D723E9DD005B8DF02C41D687129A63720721C33481DE9598AE3762C42BB08
            F4A18419642533705ED38E8B76666B1BA73B02A355EAFE938DB3E45E980D0C6C
            C5495D8F3BB3953B28E815052A40BC8D5480288AA228598C08E99201D54C3CD6
            BAB711128EA818C021FDCFCBB7C38EFD199FE2CE1AD8E20CAEE824834F769F6A
            D91DCF73F045E1929E22BF1936310DF296A58C7D19010192CB9E924E9274ACA4
            5324CDB57019EA81476044C71D921E8471A39B4F5802843379F406373C000C6E
            744576022DC3BDD875A40B7BF63D8FFE245D99178B2161965A358F7021E4B073
            FFE42EADEA97DFA89D87928B0A10B3910A10455114250FC7B140A61F4D9CC970
            1B5E271A52A221EB1CD471029E34119BB93D075FED3260E3765DA9763CD7D889
            95ED0748072B6264683BC60881E80A905CB8C6EC207099562643178B2F81465F
            AF044E85AD94749774D88C4E7E37F2EC39C621700122032619084284F441BD4F
            A063A80F1D233B9C198D9184B165A3D38BBE64F497652AF1410588D9480588A2
            288AE22B0DD2C1B60FF7604BBA030FB4C9F8BD659EF4047DF9AE7DE321400AB7
            A5E2A2272D2ED97AB1A42360664C9A822DD1D8C1D98C67615CE42E74FF2F75BE
            99505414109800916B4951C165513B9EC2A9DD4F385F3B415913A5C5E852944A
            510162365201A2288AA2F80E67455A477AD132D287DB3B5E00B41F2C1FF699E8
            EF6CB8B363FFC468E7E508949CA52AD11320C5A0009193C3BE3033247B48DA1F
            7484581FAC85111B1418F458B55CD2BF256D2EBA75140408BD500D6DC71E3D4F
            62DFFEB5223A52223E547828E1A002C46CA4024451144509081AE8D2C5F20056
            36ED8CC5ED874887DB6E8408573739B62583667664588449BA154ECC0442A132
            4C31526CCD3DA224408A315FD2EE92F696B4C07DCD44B13235B8F20E94D59256
            485A236989A4C76096553D83F1C44631AC0A90A489C731B8190B7AFE83DD0636
            604BAAA3A2D8428A52292A40CC462A401445519400493A2BE9A70C77635D7A26
            1E9EFE22389E86FA9E07C5C12C190CEE36B8C58903B35D3AE385746D4A8F5A8D
            D3E1AC78A23BD3E19E9CFDC542808CF7FB9D24C90982C16E2852385B324BD22E
            30B625B3DCFF612EE962C668A4B30E26C2386734E8DE8C4283A263A9FB1DDF77
            9525208A614580B84BAE68EFD1F32C5EB6E3512704EA8E64B30A0F2574548098
            8D5480288AA22881639664F5A147067D3DA926111E5BD19019C4200DDB13F4AD
            95743C6A353A9FA5D1956A936D9BF044F39E321C9F6B664946864677184F0132
            19141E9C21A1CFD6193062A5CDFDCF2EAFD3FD0EEEFB86898E08133DDC3B305D
            DD52C9D12D19672CB6BBFF37BA9F6D432991F1622740E4F4531DCE8CDADE5D0F
            63CF81E71DCF54FD52EF547C283650016236AA2501F2FF461F1FECEF484F1600
            00000049454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 11.338590000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 113.385900000000000000
        Top = 226.771800000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 11.338590000000010000
          Width = 684.094930000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -29
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Vendas [status]'
            ' ')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 204.094620000000000000
          Top = 52.913420000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Inicial:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 52.913420000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Final:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 275.905690000000000000
          Top = 52.913420000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dataInicial]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 52.913420000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dataFinal]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 64.252010000000000000
        Top = 362.834880000000000000
        Width = 718.110700000000000000
        DataSet = rel_DS_Vendas
        DataSetName = 'DSVendas'
        RowCount = 0
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 90.708720000000000000
          Top = 7.559059999999988000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Top = 7.559059999999990000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Funcion'#225'rio:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 408.189240000000000000
          Top = 7.559059999999990000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 52.913420000000000000
          Width = 616.063390000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 7.559059999999990000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Hora:')
          ParentFont = False
        end
        object DSVendasvalor: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 30.236240000000010000
          Width = 94.488249999999990000
          Height = 18.897650000000000000
          DataField = 'valor'
          DataSet = rel_DS_Vendas
          DataSetName = 'DSVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSVendas."valor"]')
          ParentFont = False
        end
        object DSVendasfuncionario: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 200.315090000000000000
          Top = 30.236240000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'funcionario'
          DataSet = rel_DS_Vendas
          DataSetName = 'DSVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSVendas."funcionario"]')
          ParentFont = False
        end
        object DSVendasdata: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 30.236240000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'data'
          DataSet = rel_DS_Vendas
          DataSetName = 'DSVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSVendas."data"]')
          ParentFont = False
        end
        object DSVendashora: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 514.016080000000000000
          Top = 30.236240000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'hora'
          DataSet = rel_DS_Vendas
          DataSetName = 'DSVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSVendas."hora"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 574.488560000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 185.196970000000000000
          Top = 18.897650000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'AVENIDA AFONSO PENA 5000 - BELO HORIZONTE - MG')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'P'#193'GINA : [Page]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 64.252010000000000000
        Top = 449.764070000000000000
        Width = 718.110700000000000000
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 521.575140000000000000
          Top = 37.795300000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor:')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000100000
          Top = 37.795300000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<DSVendas."valor">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object query_coringa_mov: TFDQuery
    Connection = fd
    Left = 40
    Top = 384
  end
  object query_coringa_caixa: TFDQuery
    Connection = fd
    Left = 152
    Top = 384
  end
  object query_coringa_vendas: TFDQuery
    Connection = fd
    Left = 248
    Top = 384
  end
  object query_coringa_produtos: TFDQuery
    Connection = fd
    Left = 376
    Top = 384
  end
  object DSCoringaVendas: TDataSource
    DataSet = query_coringa_vendas
    Left = 488
    Top = 384
  end
  object driver: TFDPhysFBDriverLink
    Left = 272
    Top = 32
  end
  object tb_clientes: TFDTable
    Connection = fd
    UpdateOptions.UpdateTableName = 'DADOS.clientes'
    TableName = 'DADOS.clientes'
    Left = 776
    Top = 104
  end
  object query_clientes: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from clientes')
    Left = 720
    Top = 176
  end
  object dsClientes: TDataSource
    DataSet = query_clientes
    Left = 776
    Top = 168
  end
end
