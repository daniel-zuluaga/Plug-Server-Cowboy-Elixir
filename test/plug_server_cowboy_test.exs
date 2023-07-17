defmodule PlugServerCowboyTest do
  use ExUnit.Case
  doctest PlugServerCowboy

  test "greets the world" do
    assert PlugServerCowboy.hello() == :ok
  end
end
