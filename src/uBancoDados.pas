unit uBancoDados;

interface

uses
  Data.DB;

procedure InserirDadosBD( const ASql : string );
function ExecutarSql( const ASql : string ) : TDataSet;

implementation

procedure InserirDadosBD( const ASql : string );
  begin
    //
  end;

function ExecutarSql( const ASql : string ) : TDataSet;
  begin
    //
    Result := nil;
  end;

end.
