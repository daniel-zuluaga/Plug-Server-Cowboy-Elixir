defmodule FlatMap do
  alias(Concat_List, as: Concat)
  def flat_map(elements, func, acc \\ [])
  def flat_map([], _func, acc), do: acc
  def flat_map([h | t], func, acc), do: flat_map(t, func, Concat.concat(acc, func.(h)))
end

