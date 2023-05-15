resul = try do
  x = 5
  y = 3
  x / y
rescue
  e in ArithmeticError -> "cannot be divided by zero gives infinity" <> e.message # para ca´turar el mesaje del error
  Protocol.UndefinedError -> "Error Indefinido"
  _ -> "Catch to all error"
end

IO.puts(resul)
