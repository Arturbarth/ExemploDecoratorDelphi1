unit uDecoratorLogException;

interface

uses
  uILogException;

type
  TDecoratorLogException = class(TInterfacedObject, ILogException)
  private
    FLogException: ILogException;

  public
    function ObterMensagemExcecao: String; virtual;
    function SalvarArquivoLog: ILogException; virtual;

    constructor Create(ALogException: ILogException);
    class function New(ALogException: ILogException): ILogException;
  end;

implementation

{ TDecoratorLogException }

constructor TDecoratorLogException.Create(ALogException: ILogException);
begin
  inherited Create;
  FLogException := ALogException;
end;

class function TDecoratorLogException.New(
  ALogException: ILogException): ILogException;
begin
  Result := Self.Create(ALogException);
end;

function TDecoratorLogException.ObterMensagemExcecao: String;
begin
  Result := FLogException.ObterMensagemExcecao;
end;

function TDecoratorLogException.SalvarArquivoLog: ILogException;
begin
  Result := FLogException.SalvarArquivoLog;
end;

end.
