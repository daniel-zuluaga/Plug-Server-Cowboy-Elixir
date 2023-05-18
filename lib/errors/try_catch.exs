
result = try do
  exit "oh no!"
catch
  :exit, _ -> "exit blocked"
end
"exit blocked"

result
