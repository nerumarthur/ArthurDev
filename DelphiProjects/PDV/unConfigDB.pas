unit unConfigDB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Biblioteca;

type
  TconfigDB = class(TForm)
    Panel1: TPanel;
    edLocal: TEdit;
    Label1: TLabel;
    Button1: TButton;
    opnPastas: TOpenDialog;
    procedure Button1Click(Sender: TObject);

  private
    procedure Configura;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  configDB: TconfigDB;

implementation

{$R *.dfm}

{ TconfigDB }

procedure TconfigDB.Button1Click(Sender: TObject);
begin
  Configura;
end;

procedure TconfigDB.Configura;
var
  vFileName: string;
begin
  if opnPastas.Execute then
  begin
     edLocal.Text := opnPastas.FileName;
     vFileName := ExtractFilePath(Application.ExeName)+ 'config.ini';
     SetValorIni(vFileName, 'CONFIGURACAO', 'LOCAL_DB', edLocal.Text);
     ShowMessage('Banco Vinculado Com Sucesso, a Aplica��o Ser� Reiniciada');
     Application.Terminate;
  end;
end;



end.
