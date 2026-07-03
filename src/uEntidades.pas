unit uEntidades;

interface

type
  TCliente = class
    private
      FIdCliente : Integer;
      FNome : string;
      FCpf : string;
    public
      property IdCliente : Integer
        read FIdCliente
        write FIdCliente;
      property Nome : string
        read FNome
        write FNome;
      property Cpf : string
        read FCpf
        write FCpf;
  end;

  TCarro = class
    private
      FIdCarro : Integer;
      FModelo : string;
      FDataLancamento : TDate;
    public
      property IdCarro : Integer
        read FIdCarro
        write FIdCarro;
      property Modelo : string
        read FModelo
        write FModelo;
      property DataLancamento : TDate
        read FDataLancamento
        write FDataLancamento;
  end;

  TVenda = class
    private
      FIdVenda : Integer;
      FIdCliente : Integer;
      FIdCarro : Integer;
      FDataVenda : TDate;
    public
      property IdVenda : Integer
        read FIdVenda
        write FIdVenda;
      property IdCliente : Integer
        read FIdCliente
        write FIdCliente;
      property IdCarro : Integer
        read FIdCarro
        write FIdCarro;
      property DataVenda : TDate
        read FDataVenda
        write FDataVenda;
  end;

implementation

end.
