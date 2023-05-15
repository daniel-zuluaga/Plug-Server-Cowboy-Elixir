defmodule Behaviours.Informal do
  @behaviour Behaviours.Saludador

  @spec saludar(String.t()) :: String.t()
  def saludar(nombre), do: "Ey, #{nombre}"
end
