unit providers.conversao;

interface

type
  TipoEstoque = (TipoCompra, TipoVenda, TipoDevolucao);
  function EstoqueToStr(const T: TipoEstoque): Integer;

implementation

function EstoqueToStr(const T: TipoEstoque): Integer;
begin
  case T of
    TipoCompra:    Result := 1;
    TipoVenda:     Result := 2;
    TipoDevolucao: Result := 3;
  end;
end;

end.
