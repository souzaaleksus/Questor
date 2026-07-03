program ProvaSorteio;
{$APPTYPE CONSOLE}
uses
  System.SysUtils,
  uEntidades in 'src\uEntidades.pas',
  uBancoDados in 'src\uBancoDados.pas',
  uCadastro in 'src\uCadastro.pas';
begin
  try
    InserirNovosClientes;
    InserirNovosCarros;
    InserirVendasNovosClientes;
    Writeln('Cargas executadas com sucesso.');
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.

