defmodule TypespecsPropio do
  defstruct [:nombre, :apellido, :edad, :comida]

  @type nombre() :: String.t()
  @type apellido() :: String.t()
  @type edad() :: number()
  @type comida() :: atom() | nil

  @type t() :: %__MODULE__{
          nombre: nombre(),
          apellido: apellido(),
          edad: edad(),
          comida: comida()
        }

  @spec persona(
          nombre(),
          edad(),
          comida()
        ) :: TypespecsPropio.t()
  def persona(nombre, edad, comida) do
    [n | alist] = String.split(nombre, " ")
    a = Enum.join(alist)
    %__MODULE__{nombre: n, apellido: a, edad: edad, comida: comida}
  end

  def prueba do
    persona("daniel", 34, :hello)
  end
end
