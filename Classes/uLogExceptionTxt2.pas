unit uLogExceptionTxt2;

interface

uses uDecoratorLogException, uILogException, Vcl.Controls;

type
  TLogExceptionTxt2 = class(TDecoratorLogException)
  protected
    function ObterMensagemExcecao: String; override;
    function SalvarArquivoLog: ILogException; override;
  public

  end;

implementation

uses
  Vcl.StdCtrls, System.SysUtils, System.Classes;

{ TLogExceptionTxt }

function TLogExceptionTxt2.ObterMensagemExcecao: String;
begin
  Result := inherited ObterMensagemExcecao;
  Result := Result + 'Exeption 2';
end;

function TLogExceptionTxt2.SalvarArquivoLog: ILogException;
var
  oLogFile: TStringList;
begin
  oLogFile := TStringList.Create;
  oLogFile.Add(ObterMensagemExcecao);
  oLogFile.SaveToFile('c:\logs\log1.txt');
  Result := inherited SalvarArquivoLog;
end;

end.


implementation

end.
