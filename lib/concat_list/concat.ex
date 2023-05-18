defmodule Concat_List do

  @spec concat([any()], [any()]) :: [any()]
  def concat(list, destino), do: concat_func(list, destino)

  defp concat_func([], destino), do: destino
  defp concat_func([h | t], destino), do: concat_func(t, [h| destino])
end
