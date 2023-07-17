defmodule Structs.NamesStructs.MetodCountry do
  alias Structs.NamesStructs

  @spec inCountries_starting_with([NamesStructs.names()], String.t()) :: [any()]
  def inCountries_starting_with(wonders, letterContainCountry) do
    wonders
    |> Enum.filter(
      fn %{country: country} ->
        String.starts_with?(country, letterContainCountry)
      end
    )
  end

  @spec search_country_func([NamesStructs.names()], String.t()) :: [NamesStructs.names()]
  def search_country_func(wonders, letterContainCountry) do
    wonders
    |> Enum.filter(
      fn %{country: country} ->
        String.contains?(country, letterContainCountry)
      end
    )
  end

  @spec sort_by_country_length(NamesStructs.names()) :: [NamesStructs.names()]
  def sort_by_country_length(wonders) do
    wonders
    |> Enum.sort(
      fn (x, y) ->
        String.length(x.country) < String.length(y.country)
      end
    )
  end

  def name_country_list(wonders) do
    wonders
    |> Enum.reduce([], fn (wonder, acc) -> [[wonder.name, wonder.country] | acc] end)
  end

  def country_name_keyword_list(wonders) do
    # [{:a, 1}] = [a: 1] // RT/= [a: 1]
    wonders
    |> Enum.reduce([], fn (wonder, acc) -> [{String.to_atom(wonder.name), wonder.country} | acc] end)
  end

  def all_names(wonders, sorted) when (sorted) do
    wonders
    |> Enum.map(&(&1.name)) # &(&1.name) es lo mismo decir: fn x -> x.name end
    |> Enum.sort_by(&(byte_size/1)) # &(byte_size/1) es lo mismo decir: byte_size(x)
  end

  def all_names(wonders, sorted) when (not sorted) do
    wonders
    |> Enum.map(&(&1.name))
  end

end
