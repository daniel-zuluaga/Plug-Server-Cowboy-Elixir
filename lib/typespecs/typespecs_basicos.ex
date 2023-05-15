defmodule TypespecsBasicos do

  @spec resta(number(),number()) :: number()
  ## esto es un typespecs nos ayuda a saber de que tipo recibe esa funcion
  defp resta(a, b) do
    a - b
  end

  def prueba do
    resta(45, 23)
  end
end
