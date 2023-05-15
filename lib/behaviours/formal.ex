defmodule Behaviours.Formal do
  @behaviour Behaviours.Saludador

  @spec saludar(String.t()) :: String.t()
  def saludar(nombre), do: "Good afternoon, #{nombre}"
  
end
