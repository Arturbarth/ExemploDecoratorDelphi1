unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uLogException, uLogExceptionTxt, uLogExceptionTxt2,
  Vcl.AppEvnts;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    ApplicationEvents1: TApplicationEvents;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  Class1 = class
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.ApplicationEvents1Exception(Sender: TObject; E: Exception);
begin
  memo1.Lines.Add(TLogException.New(E).ObterMensagemExcecao);
  memo1.Lines.Add(TLogExceptionTxt.New(TLogExceptionTxt2.New(TLogException.New(E))).SalvarArquivoLog.ObterMensagemExcecao);
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  raise Exception.Create('Teste de Exception Simples!');
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  raise Exception.Create('Exception decorada');
end;

end.
