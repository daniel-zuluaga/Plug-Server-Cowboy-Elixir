defmodule Recursion.Factorial do

  @spec of(integer()) :: integer()
  def of(1), do: 1
  def of(num), do: num * of(num - 1)

  @spec of_tail_rec(integer(), integer()) :: integer()
  def of_tail_rec(num, acc \\ 1)
  def of_tail_rec(1, acc), do: acc
  def of_tail_rec(num, acc) do
    IO.puts("This number #{num} and acc #{acc}")
    of_tail_rec(num - 1, acc * num)
  end
end
