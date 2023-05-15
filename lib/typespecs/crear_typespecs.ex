defmodule Typespecs.CrearTypespecs do

  @type dia() :: number()
  @type mes() :: number()
  @type anio() :: number()

  @type fechaall :: {dia(), mes(), anio()}

  @spec anunciar_nacimiento(binary(), fechaall()) :: :ok
  def anunciar_nacimiento(user, {dia, mes, anio}) do
    IO.puts("#{user} nacio el #{dia}/#{mes}/#{anio}")
  end

  def prueba do
    anunciar_nacimiento("nombre", {23, 04, 2008})
  end
end
