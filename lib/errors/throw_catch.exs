result = try do
  for x <- 0..10 do
    if x == 8, do: throw(x)
    IO.puts(x)
  end
catch
  x -> "Caught: #{x}"
end
## Utilizando throw y catch
result
