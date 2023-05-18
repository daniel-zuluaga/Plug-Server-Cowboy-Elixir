defmodule Recursion.ReverseNumber do

  @spec of(integer(), integer()) :: integer()
  def of(0, acc), do: acc

  def of(num, acc) do
    new_num = num / 10
    IO.puts("This number is #{num}")
    new_acc = acc * 10 + rem(num, 10)
    of(new_num, new_acc)
  end
end
