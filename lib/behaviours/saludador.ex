defmodule Behaviours.Saludador do
  @doc """
  Saludar receives how parameter the name of a people and return a greeting
  """
  @callback saludar(String.t()) :: String.t()


  def saludar(modulo, nombre) do
    modulo.saludar(nombre)
  end
end
