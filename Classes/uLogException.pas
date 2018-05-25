unit uLogException;

interface

uses uILogException, System.SysUtils;

type
  TLogException = class(TInterfacedObject, iLogException)
  private
    FException: Exception;
    function ObterMensagemExcecao: String;
    function SalvarArquivoLog: ILogException;
  public
    constructor Create(AException: Exception);
    class function New(AException: Exception): iLogException;

  end;

implementation

{ TLogException }

constructor TLogException.Create(AException: Exception);
begin
  inherited Create;
  FException := AException;
end;

class function TLogException.New(AException: Exception): iLogException;
begin
  Result := Self.Create(AException);
end;

function TLogException.ObterMensagemExcecao: String;
begin
  Result := FException.Message;
end;

function TLogException.SalvarArquivoLog: ILogException;
begin
  Result := Self;
end;

end.
