defmodule Raise.RaiseCalculator do
  def dividir(a, b) do
    if(b == 0) do
      # raise("No se pudo dividir por 0")
      raise(ArgumentError, "No se pudo dividir por 0")
    else
     a / b
    end
  end
end

IO.puts(Raise.RaiseCalculator.dividir(6, 0))
