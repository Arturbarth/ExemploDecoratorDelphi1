program prjDecorator;

uses
  Vcl.Forms,
  untPrincipal in 'untPrincipal.pas' {Form3},
  uILogException in 'Interfaces\uILogException.pas',
  uLogException in 'Classes\uLogException.pas',
  uDecoratorLogException in 'Classes\uDecoratorLogException.pas',
  uLogExceptionTxt in 'Classes\uLogExceptionTxt.pas',
  uLogExceptionTxt2 in 'Classes\uLogExceptionTxt2.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
