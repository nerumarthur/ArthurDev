unit Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, ShellApi;

type
  TFrmMenu = class(TForm)
    MainMenu1: TMainMenu;
    Ca1: TMenuItem;
    Produtos1: TMenuItem;
    Fornecedores1: TMenuItem;
    Estoque1: TMenuItem;
    Movimentaes1: TMenuItem;
    Relatrios1: TMenuItem;
    Sair1: TMenuItem;
    Usurios1: TMenuItem;
    Funcionrios1: TMenuItem;
    Cargos1: TMenuItem;
    Sair2: TMenuItem;
    EntradasdeProdutos1: TMenuItem;
    SadasdeProdutos1: TMenuItem;
    Nvel1: TMenuItem;
    Vendas1: TMenuItem;
    Movimentaes2: TMenuItem;
    Gastos1: TMenuItem;
    Pagamentos1: TMenuItem;
    ConsultarVendas1: TMenuItem;
    CertificadoDigital1: TMenuItem;
    FluxodeCaixa1: TMenuItem;
    FluxodeCaixa2: TMenuItem;
    Movimentaes3: TMenuItem;
    Produtos2: TMenuItem;
    Ferramentas1: TMenuItem;
    BackupdoBanco1: TMenuItem;
    ExcluirDadosVendas1: TMenuItem;
    ExcluirDadosCaixa1: TMenuItem;
    gridCaixa: TDBGrid;
    gridVendas: TDBGrid;
    Panel1: TPanel;
    lblHora: TLabel;
    Label1: TLabel;
    lblData: TLabel;
    Image1: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Image2: TImage;
    lblCargo: TLabel;
    lblUsuario: TLabel;
    Label5: TLabel;
    Image3: TImage;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lblEntradas: TLabel;
    lblSaidas: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    lblEstoque: TLabel;
    pnlEstoque: TPanel;
    Image4: TImage;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    lblCaixaAberto: TLabel;
    Timer1: TTimer;
    Image10: TImage;
    Label14: TLabel;
    Image11: TImage;
    Label15: TLabel;
    Image5: TImage;
    Image6: TImage;
    Vendas2: TMenuItem;
    ExcluirDadosMovimentaes1: TMenuItem;
    Timer2: TTimer;
    lblSaldo: TLabel;
    Clientes: TMenuItem;
    procedure Usurios1Click(Sender: TObject);
    procedure Funcionrios1Click(Sender: TObject);
    procedure Cargos1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Sair2Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure EntradasdeProdutos1Click(Sender: TObject);
    procedure SadasdeProdutos1Click(Sender: TObject);
    procedure Nvel1Click(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
    procedure Movimentaes2Click(Sender: TObject);
    procedure Gastos1Click(Sender: TObject);
    procedure ConsultarVendas1Click(Sender: TObject);
    procedure Pagamentos1Click(Sender: TObject);
    //procedure CertificadoDigital1Click(Sender: TObject);
    procedure FluxodeCaixa1Click(Sender: TObject);
    procedure FluxodeCaixa2Click(Sender: TObject);
    procedure Movimentaes3Click(Sender: TObject);
    procedure Produtos2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure pnlEstoqueClick(Sender: TObject);
    procedure lblEstoqueClick(Sender: TObject);
    procedure Vendas2Click(Sender: TObject);
    procedure ExcluirDadosVendas1Click(Sender: TObject);
    procedure ExcluirDadosCaixa1Click(Sender: TObject);
    procedure ExcluirDadosMovimentaes1Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure BackupdoBanco1Click(Sender: TObject);
  private
    { Private declarations }
     procedure totalizarEntradas;
      procedure totalizarSaidas;
       procedure totalizar;
       procedure totalizarCaixas;
       procedure verificarEstoque;

       procedure listarVendas;
       procedure listarCaixas;

  public
    { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;
  TotEntradas: double;
  TotSaidas: double;
  TotCaixas : integer;
  backup_bd : boolean;

implementation

{$R *.dfm}

uses Usuarios, Funcionarios, Cargos, Modulo, Fornecedores, Produtos,
  EntradasProdutos, SaidasProdutos, EstoqueBaixo, Vendas, Movimentacoes, Gastos,
  ListaVendas, CertificadoDigital, FluxoCaixa, RelatoriosPorDatas, ExcluirDados;


//FUNCAO PARA CONVERTER EM RGB
function ConverterRGB(r, g, b : Byte) : TColor;
begin
  Result := RGB(r, g, b);
end;



procedure TFrmMenu.BackupdoBanco1Click(Sender: TObject);
var
caminhoBd : string;
caminhoDump : string;
nome : string;

begin
backup_bd := true;
nome := FormatDateTime('dd-mm-yyyy', now);
caminhoDump := GetCurrentDir + '\bd\mysqldump.exe';
caminhoBd := GetCurrentDir + '\bd\';
caminhoBd := caminhoBd + nome + '.sql';

//BACKUP NO SERVIDOR LOCAL
ShellExecute(handle,'open', 'cmd.exe',Pchar('/c ' + caminhoDump + ' pdv -u root -hlocalhost -p --opt -v> ' + caminhoBd),nil, SW_SHOW );

//BACKUP NO SERVIDOR HOSPEDADO
//ShellExecute(handle,'open', 'cmd.exe',Pchar('/c ' + caminhoDump + ' pdv_delphi -u sistema_pdv -hmysql669.umbler.com:41890 -ppdv_sistema --opt -v> ' + caminhoBd),nil, SW_SHOW );

end;

procedure TFrmMenu.Cargos1Click(Sender: TObject);
begin
FrmCargos := TFrmCargos.Create(self);
FrmCargos.ShowModal;
end;
{
procedure TFrmMenu.CertificadoDigital1Click(Sender: TObject);
var
addLinha: boolean;
i: integer;
serie: string;

caminhoNFCE: string;
begin

FrmCertificado := TFrmCertificado.Create(self);

try

  //APONTANDO PARA A PASTA ONDE ESTAO OS COMPONENTES NFCE
  caminhoNFCE := ExtractFilePath(Application.ExeName) + 'nfe\';
  FrmVendas.nfce.Configuracoes.Arquivos.PathSchemas := caminhoNFCE;

  FrmVendas.nfce.SSL.LerCertificadosStore;


  addLinha := true;

  with FrmCertificado.StringGrid1 do
  begin
     ColWidths[0] := 220;
     ColWidths[1] := 250;
     ColWidths[2] := 120;
     ColWidths[3] := 80;
     ColWidths[4] := 150;

     Cells[0,0] := 'Num S�rie';
     Cells[1,0] := 'Raz�o Social';
     Cells[2,0] := 'CNPJ';
     Cells[3,0] := 'Validade';
     Cells[4,0] := 'Certificadora';

  end;

  for i := 0 to FrmVendas.nfce.SSL.ListaCertificados.Count -1 do
  begin

  with FrmVendas.nfce.SSL.ListaCertificados[i] do
  begin
  serie := NumeroSerie;


  with FrmCertificado.StringGrid1 do
  begin

  if addLinha then
  begin

     RowCount := RowCount + 1;


     Cells[0, RowCount - 1] := NumeroSerie;
     Cells[1, RowCount - 1] := RazaoSocial;
     Cells[2, RowCount - 1] := CNPJ;
     Cells[3, RowCount - 1] := FormatDateBr(DataVenc);
     Cells[4, RowCount - 1] := Certificadora;
     addLinha := true;

  end;




  end;


  end;
end;

FrmCertificado.ShowModal;
if FrmCertificado.ModalResult = mrOk then
begin
  certificadoDig := FrmCertificado.StringGrid1.Cells[0, FrmCertificado.StringGrid1.Row];

end;

 FrmVendas.nfce.Configuracoes.Certificados.NumeroSerie := certificadoDig;

  FrmVendas.nfce.WebServices.StatusServico.Executar;
  ShowMessage(certificadoDig);
  ShowMessage(FrmVendas.nfce.WebServices.StatusServico.Msg);




finally
FrmCertificado.Free;
end;

end;
  }
procedure TFrmMenu.ConsultarVendas1Click(Sender: TObject);
begin
FrmListaVendas := TFrmListaVendas.Create(self);
FrmListaVendas.ShowModal;
end;

procedure TFrmMenu.EntradasdeProdutos1Click(Sender: TObject);
begin
FrmEntradaProdutos := TFrmEntradaProdutos.Create(self);
FrmEntradaProdutos.ShowModal;
end;

procedure TFrmMenu.ExcluirDadosCaixa1Click(Sender: TObject);
begin
if backup_bd = true then
begin
excluir := 'Caixa';
FrmExcluirDados := TFrmExcluirDados.Create(self);
FrmExcluirDados.ShowModal;
end
else
begin
MessageDlg('Fa�a Primeiro o Backup do Banco!!', mtInformation, mbOKCancel, 0);

end;

end;

procedure TFrmMenu.ExcluirDadosMovimentaes1Click(Sender: TObject);
begin

if backup_bd = true then
begin
excluir := 'Movimentacoes';
FrmExcluirDados := TFrmExcluirDados.Create(self);
FrmExcluirDados.ShowModal;
end
else
begin
MessageDlg('Fa�a Primeiro o Backup do Banco!!', mtInformation, mbOKCancel, 0);

end;
end;

procedure TFrmMenu.ExcluirDadosVendas1Click(Sender: TObject);
begin
if backup_bd = true then
begin
excluir := 'Vendas';
FrmExcluirDados := TFrmExcluirDados.Create(self);
FrmExcluirDados.ShowModal;
end
else
begin
MessageDlg('Fa�a Primeiro o Backup do Banco!!', mtInformation, mbOKCancel, 0);

end;


end;

procedure TFrmMenu.FluxodeCaixa1Click(Sender: TObject);
begin
FrmFluxoCaixa := TFrmFluxoCaixa.Create(self);
FrmFluxoCaixa.ShowModal;
end;

procedure TFrmMenu.FluxodeCaixa2Click(Sender: TObject);
begin
rel := 'Caixa';
FrmRelDatas := TFrmRelDatas.Create(self);
FrmRelDatas.ShowModal;
end;

procedure TFrmMenu.FormActivate(Sender: TObject);
begin
totalizarEntradas;
totalizarSaidas;
totalizar;
totalizarCaixas;
verificarEstoque;
listarVendas;
listarCaixas;
end;

procedure TFrmMenu.FormShow(Sender: TObject);
begin

if (cargoUsuario = 'admin') or (cargoUsuario = 'Gerente') then
begin
      Usurios1.Enabled := true;
end;

if cargoUsuario = 'admin' then
begin
      ExcluirDadosVendas1.Enabled := true;
      ExcluirDadosCaixa1.Enabled := true;
      ExcluirDadosMovimentaes1.Enabled := true;
end;



lblUsuario.Caption := nomeUsuario;
lblCargo.Caption := cargoUsuario;
lblHora.Caption := TimeToStr(Time);
lblData.Caption := DateToStr(Date);



end;

procedure TFrmMenu.Fornecedores1Click(Sender: TObject);
begin
FrmFornecedores := TFrmFornecedores.Create(self);
FrmFornecedores.ShowModal;
end;

procedure TFrmMenu.Funcionrios1Click(Sender: TObject);
begin
FrmFuncionarios := TFrmFuncionarios.Create(self);
FrmFuncionarios.ShowModal;
end;

procedure TFrmMenu.Gastos1Click(Sender: TObject);
begin
FrmGastos := TFrmGastos.Create(self);
FrmGastos.Show;
end;

procedure TFrmMenu.lblEstoqueClick(Sender: TObject);
begin
FrmEstoqueBaixo := TFrmEstoqueBaixo.Create(self);
FrmEstoqueBaixo.Show;
end;

procedure TFrmMenu.listarCaixas;
begin
  dm.query_caixa_Coringa.Close;
  dm.query_caixa_Coringa.SQL.Clear;
  dm.query_caixa_Coringa.SQL.Add('select * from caixa where data_abertura = curDate() order by num_caixa asc');
  dm.query_caixa_Coringa.Open;
end;

procedure TFrmMenu.listarVendas;
begin
  dm.query_coringa_vendas.Close;
  dm.query_coringa_vendas.SQL.Clear;
  dm.query_coringa_vendas.SQL.Add('select * from vendas where data = curDate() order by id desc limit 10');
  dm.query_coringa_vendas.Open;
end;

procedure TFrmMenu.Movimentaes2Click(Sender: TObject);
begin
FrmMovimentacoes := TFrmMovimentacoes.Create(self);
FrmMovimentacoes.ShowModal;
end;

procedure TFrmMenu.Movimentaes3Click(Sender: TObject);
begin
rel := 'Movimentacoes';
FrmRelDatas := TFrmRelDatas.Create(self);
FrmRelDatas.ShowModal;
end;

procedure TFrmMenu.Nvel1Click(Sender: TObject);
begin
FrmEstoqueBaixo := TFrmEstoqueBaixo.Create(self);
FrmEstoqueBaixo.Show;
end;

procedure TFrmMenu.Pagamentos1Click(Sender: TObject);
begin
MessageDlg('Crie a tela de pagamentos conforme mostrado a de gastos!!', mtInformation, mbOKCancel, 0);
end;

procedure TFrmMenu.pnlEstoqueClick(Sender: TObject);
begin
FrmEstoqueBaixo := TFrmEstoqueBaixo.Create(self);
FrmEstoqueBaixo.Show;
end;

procedure TFrmMenu.Produtos1Click(Sender: TObject);
begin
FrmProdutos := TFrmProdutos.Create(self);
FrmProdutos.ShowModal;
end;

procedure TFrmMenu.Produtos2Click(Sender: TObject);
begin

       dm.query_produtos.Close;
       dm.query_produtos.SQL.Clear;
       dm.query_produtos.SQL.Add('SELECT * from produtos order by nome asc');
       dm.query_produtos.Open;


 dm.rel_produtos.LoadFromFile(GetCurrentDir + '\rel\produtos.fr3');
 dm.rel_produtos.ShowReport();
end;

procedure TFrmMenu.SadasdeProdutos1Click(Sender: TObject);
begin
FrmSaidaProdutos := TFrmSaidaProdutos.Create(self);
FrmSaidaProdutos.ShowModal;
end;

procedure TFrmMenu.Sair2Click(Sender: TObject);
begin
close;
end;

procedure TFrmMenu.Timer1Timer(Sender: TObject);
begin
lblHora.Caption := TimeToStr(Time);
end;

procedure TFrmMenu.Timer2Timer(Sender: TObject);
begin
totalizarEntradas;
totalizarSaidas;
totalizar;
totalizarCaixas;
verificarEstoque;
listarVendas;
listarCaixas;
end;

procedure TFrmMenu.totalizar;
var
tot: real;
begin
tot := TotEntradas - TotSaidas;
if tot >= 0 then
begin
  lblSaldo.Font.Color := clLime;
  end
  else
  begin
  lblSaldo.Font.Color := ConverterRGB(247, 179, 179);
end;

lblSaldo.Caption := FormatFloat('R$ #,,,,0.00', tot);


end;



procedure TFrmMenu.totalizarCaixas;
begin
       dm.query_coringa_caixa.Close;
       dm.query_coringa_caixa.SQL.Clear;
       dm.query_coringa_caixa.SQL.Add('SELECT * from caixa where data_abertura = curDate() and status = "Aberto"');
       //dm.query_caixa.ParamByName('data').Value := FormatDateTime('yyyy/mm/dd' ,dataBuscar.Date);
       dm.query_coringa_caixa.Open;
       TotCaixas :=  dm.query_coringa_caixa.RecordCount;
       lblCaixaAberto.Caption := intToStr(TotCaixas);
end;

procedure TFrmMenu.totalizarEntradas;
var
tot: real;
begin
dm.query_coringa_mov.Close;
dm.query_coringa_mov.SQL.Clear;
dm.query_coringa_mov.SQL.Add('select sum(valor) as total from movimentacoes where data = curDate() and tipo = "Entrada" ') ;
dm.query_coringa_mov.Prepare;
dm.query_coringa_mov.Open;
tot := dm.query_coringa_mov.FieldByName('total').AsFloat;
TotEntradas := tot;
lblEntradas.Caption := FormatFloat('R$ #,,,,0.00', tot);


end;

procedure TFrmMenu.totalizarSaidas;

var
tot: real;
begin
dm.query_coringa_mov.Close;
dm.query_coringa_mov.SQL.Clear;
dm.query_coringa_mov.SQL.Add('select sum(valor) as total from movimentacoes where data = curDate() and tipo = "Sa�da" ') ;
dm.query_coringa_mov.Prepare;
dm.query_coringa_mov.Open;
tot := dm.query_coringa_mov.FieldByName('total').AsFloat;
TotSaidas := tot;
lblSaidas.Caption := FormatFloat('R$ #,,,,0.00', tot);
lblSaidas.Font.Color := ConverterRGB(247, 179, 179);

end;

procedure TFrmMenu.Usurios1Click(Sender: TObject);
begin
FrmUsuarios := TFrmUsuarios.Create(self);
FrmUsuarios.ShowModal;
end;

procedure TFrmMenu.Vendas1Click(Sender: TObject);
begin
FrmVendas := TFrmVendas.Create(self);
FrmVendas.ShowModal;
end;

procedure TFrmMenu.Vendas2Click(Sender: TObject);
begin
rel := 'Vendas';
FrmRelDatas := TFrmRelDatas.Create(self);
FrmRelDatas.ShowModal;
end;

procedure TFrmMenu.verificarEstoque;
begin
        dm.query_coringa_produtos.Close;
       dm.query_coringa_produtos.SQL.Clear;
       dm.query_coringa_produtos.SQL.Add('SELECT * from produtos where estoque <= 10');
       dm.query_coringa_produtos.Open;

       if dm.query_coringa_produtos.RecordCount > 0 then
       begin
       pnlEstoque.Color := ConverterRGB(234, 139, 139);
       lblEstoque.Caption := 'Estoque Baixo';
       end
       else
       begin
       pnlEstoque.Color := ConverterRGB(142, 234, 139);
       lblEstoque.Caption := 'Estoque Bom';
       end;
end;

end.
