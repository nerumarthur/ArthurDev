unit untConsultaCepViaCep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, xmldom, XMLIntf, StdCtrls, msxmldom, XMLDoc, Buttons,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,  Mask,
  Vcl.ExtCtrls;

type
  TfrmConsultaCepViaCep = class(TForm)
    XMLDocument1: TXMLDocument;
    Memo1: TMemo;
    Label1: TLabel;
    SSLIO: TIdSSLIOHandlerSocketOpenSSL;
    editCep: TMaskEdit;
    btn1: TSpeedButton;
    pnl1: TPanel;
    Label2: TLabel;
    procedure btnOKClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
   procedure ConsultaCEP(Cep: String);
  public
    { Public declarations }
  end;

var
  frmConsultaCepViaCep: TfrmConsultaCepViaCep;

implementation

{$R *.dfm}

{ TForm1 }

procedure TfrmConsultaCepViaCep.ConsultaCEP(Cep: String);
var
  tempXML :IXMLNode;
  tempNodePAI :IXMLNode;
  tempNodeFilho :IXMLNode;
  I :Integer;
begin
   Memo1.Clear;
   XMLDocument1.FileName := 'https://viacep.com.br/ws/'+Trim(Cep)+ '/xml/';
   XMLDocument1.Active := true;
   tempXML := XMLDocument1.DocumentElement;


   tempNodePAI := tempXML.ChildNodes.FindNode('logradouro');

   for i := 0 to tempNodePAI.ChildNodes.Count - 1 do
   begin
      tempNodeFilho := tempNodePAI.ChildNodes[i];
      memo1.Lines.Add('Logradouro: ' +  tempNodeFilho.Text);
   end;

   tempNodePAI := tempXML.ChildNodes.FindNode('bairro');
   for i := 0 to tempNodePAI.ChildNodes.Count - 1 do
   begin
      tempNodeFilho := tempNodePAI.ChildNodes[i];
      memo1.Lines.Add('Bairro: ' +  tempNodeFilho.Text);
   end;


  tempNodePAI := tempXML.ChildNodes.FindNode('localidade');
   for i := 0 to tempNodePAI.ChildNodes.Count - 1 do
   begin
      tempNodeFilho := tempNodePAI.ChildNodes[i];
      memo1.Lines.Add('Localidade: ' +  tempNodeFilho.Text);
   end;


  tempNodePAI := tempXML.ChildNodes.FindNode('uf');
   for i := 0 to tempNodePAI.ChildNodes.Count - 1 do
   begin
      tempNodeFilho := tempNodePAI.ChildNodes[i];
      memo1.Lines.Add('UF: ' +  tempNodeFilho.Text);
   end;

end;

procedure TfrmConsultaCepViaCep.btn1Click(Sender: TObject);
begin
 if editCep.Text = '' then
   begin
     ShowMessage('Adicione um CPF');
   end
   else
     begin
       ConsultaCEP(editCep.Text);
     end;
end;

procedure TfrmConsultaCepViaCep.btnOKClick(Sender: TObject);
begin
 if editCep.Text = '' then
   begin
     ShowMessage('Adicione um CPF');
   end
   else
     begin
       ConsultaCEP(editCep.Text);
     end;
end;

end.
