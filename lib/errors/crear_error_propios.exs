defmodule Raise.RaiseCalculator.ErrorPropios do
  defexception message: "Se ha producido un error de calculo"
end

defmodule Raise.RaiseCalculator do
  def dividir(a, b) do
    if(b == 0) do
      # raise("No se pudo dividir por 0")
      raise(Raise.RaiseCalculator.ErrorPropios)
    else
     a / b
    end
  end
end

IO.puts(Raise.RaiseCalculator.dividir(6, 0))
