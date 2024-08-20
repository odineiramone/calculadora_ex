defmodule CalculadoraExTest do
  use ExUnit.Case
  doctest CalculadoraEx

  test "greets the world" do
    assert CalculadoraEx.hello() == :world
  end
end
