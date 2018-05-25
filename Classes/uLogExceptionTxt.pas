unit uLogExceptionTxt;

interface

uses uDecoratorLogException, uILogException, Vcl.Controls;

type
  TLogExceptionTxt = class(TDecoratorLogException)
  protected
    function ObterMensagemExcecao: String; override;
    function SalvarArquivoLog: ILogException; override;
  public

  end;

implementation

uses
  Vcl.StdCtrls, System.SysUtils, System.Classes;

{ TLogExceptionTxt }

function TLogExceptionTxt.ObterMensagemExcecao: String;
begin
  Result := inherited ObterMensagemExcecao;
  Result := Result + 'Data e Hora da Exceção: ' + FormatDateTime('dd/mm/yyyy hh:nn:ss', Now);
end;

function TLogExceptionTxt.SalvarArquivoLog: ILogException;
var
  oLogFile: TStringList;
begin
  oLogFile := TStringList.Create;
  oLogFile.Add(ObterMensagemExcecao);
  oLogFile.SaveToFile('c:\logs\log.txt');
  Result := inherited SalvarArquivoLog;
end;

end.
