unit uILogException;

interface

type
  ILogException = interface
    ['{35871A0E-7A3E-4584-AC91-86A29151B5F8}']
    function ObterMensagemExcecao: String;
    function SalvarArquivoLog: ILogException;
  end;

implementation

end.
