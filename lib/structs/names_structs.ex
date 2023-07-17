defmodule Structs.NamesStructs do
  defstruct name: "", country: ""

  alias Structs.NamesStructs

  @type names() :: %NamesStructs{
    name: String.t(),
    country: String.t()
  }

  @spec all :: [names()]
  def all() do
    [
      %NamesStructs{name: "Cristian Sanchez", country: "Colombia"},
      %NamesStructs{name: "Fernando", country: "Peru"},
      %NamesStructs{name: "Laura Qintero", country: "España"},
      %NamesStructs{name: "Pickachu", country: "Mexico"},
      %NamesStructs{name: "Taj Mahal", country: "India"},
      %NamesStructs{name: "Petra", country: "Argentina"},
      %NamesStructs{name: "Salome", country: "Italy"},
    ]
  end

  @spec print_name_country([names()], boolean()) :: :ok
  def print_name_country(names, printNameCountry?) when(printNameCountry? == true) do
    print_names(names, printNameCountry?)
  end

  def print_name_country(names, printNameCountry?) when (printNameCountry? != true) do
    print_names(names, printNameCountry?)
  end

  @spec filter_by_country([names()], String.t()) :: [names()]
  def filter_by_country(wonders, country) do
    wonders
    |> Enum.filter(
      fn %{country: country_name} ->
        country_name == country
      end
    )
  end

  defp print_names(names, whatPrint?)do
    if(whatPrint? == true) do
      names
      |> Enum.each(
      fn %{name: name} ->
        IO.puts(name)
      end
      )
    else
      names
      |> Enum.each(
      fn %{country: country} ->
        IO.puts(country)
      end
      )
    end
  end
end
