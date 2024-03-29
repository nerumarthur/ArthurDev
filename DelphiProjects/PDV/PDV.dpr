program PDV;

uses
  Vcl.Forms,
  Login in 'Login.pas' {FrmLogin},
  Menu in 'Menu.pas' {FrmMenu},
  Usuarios in 'Cadastros\Usuarios.pas' {FrmUsuarios},
  Funcionarios in 'Cadastros\Funcionarios.pas' {FrmFuncionarios},
  Cargos in 'Cadastros\Cargos.pas' {FrmCargos},
  Modulo in 'Modulo.pas' {dm: TDataModule},
  Fornecedores in 'Cadastros\Fornecedores.pas' {FrmFornecedores},
  Produtos in 'Cadastros\Produtos.pas' {FrmProdutos},
  ImprimirBarras in 'Cadastros\ImprimirBarras.pas' {FrmImprimirBarras},
  EntradasProdutos in 'Estoque\EntradasProdutos.pas' {FrmEntradaProdutos},
  SaidasProdutos in 'Estoque\SaidasProdutos.pas' {FrmSaidaProdutos},
  EstoqueBaixo in 'Estoque\EstoqueBaixo.pas' {FrmEstoqueBaixo},
  Vendas in 'Movimentações\Vendas.pas' {FrmVendas},
  CancelarItem in 'Movimentações\CancelarItem.pas' {FrmCancelarItem},
  Movimentacoes in 'Movimentações\Movimentacoes.pas' {FrmMovimentacoes},
  Gastos in 'Movimentações\Gastos.pas' {FrmGastos},
  ListaVendas in 'Movimentações\ListaVendas.pas' {FrmListaVendas},
  CertificadoDigital in 'Movimentações\CertificadoDigital.pas' {FrmCertificado},
  Caixa in 'Movimentações\Caixa.pas' {FrmCaixa},
  FluxoCaixa in 'Movimentações\FluxoCaixa.pas' {FrmFluxoCaixa},
  RelatoriosPorDatas in 'Relatorios\RelatoriosPorDatas.pas' {FrmRelDatas},
  ExcluirDados in 'Ferramentas\ExcluirDados.pas' {FrmExcluirDados},
  Biblioteca in 'Biblioteca.pas',
  unConfigDB in 'unConfigDB.pas' {configDB},
  Clientes in 'Cadastros\Clientes.pas' {FrmClientes},
  UnCaixa in 'UnCaixa.pas' {FrmTelaVenda},
  UnCaixaTela in 'Telas\UnCaixaTela.pas' {FrmCaixaTela},
  UnCadGroup in 'UnCadGroup.pas' {FrmCadGroup};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TconfigDB, configDB);
  Application.CreateForm(TFrmMenu, FrmMenu);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TFrmFornecedores, FrmFornecedores);
  Application.CreateForm(TFrmProdutos, FrmProdutos);
  Application.CreateForm(TFrmImprimirBarras, FrmImprimirBarras);
  Application.CreateForm(TFrmEntradaProdutos, FrmEntradaProdutos);
  Application.CreateForm(TFrmSaidaProdutos, FrmSaidaProdutos);
  Application.CreateForm(TFrmEstoqueBaixo, FrmEstoqueBaixo);
  Application.CreateForm(TFrmVendas, FrmVendas);
  Application.CreateForm(TFrmCancelarItem, FrmCancelarItem);
  Application.CreateForm(TFrmMovimentacoes, FrmMovimentacoes);
  Application.CreateForm(TFrmGastos, FrmGastos);
  Application.CreateForm(TFrmListaVendas, FrmListaVendas);
  Application.CreateForm(TFrmCertificado, FrmCertificado);
  Application.CreateForm(TFrmCaixa, FrmCaixa);
  Application.CreateForm(TFrmFluxoCaixa, FrmFluxoCaixa);
  Application.CreateForm(TFrmRelDatas, FrmRelDatas);
  Application.CreateForm(TFrmExcluirDados, FrmExcluirDados);
  Application.CreateForm(TFrmClientes, FrmClientes);
  Application.CreateForm(TFrmTelaVenda, FrmTelaVenda);
  Application.CreateForm(TFrmCaixaTela, FrmCaixaTela);
  Application.CreateForm(TFrmCadGroup, FrmCadGroup);
  Application.Run;
end.
