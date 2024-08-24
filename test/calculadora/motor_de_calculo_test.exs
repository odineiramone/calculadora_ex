defmodule Calculadora.MotorDeCalculoTest do
  use ExUnit.Case

  alias Calculadora.MotorDeCalculo, as: Motor

  test "adicao!/2 soma dois valores" do
    assert Motor.adicao!(1, 2) == 3
  end

  test "subtracao!/2 subtrai dois valores" do
    assert Motor.subtracao!(3, 2) == 1
  end

  test "multiplicacao!/2 multiplica dois valores" do
    assert Motor.multiplicacao!(4, 2) == 8
  end

  test "divisao!/2 divide dois valores" do
    assert Motor.divisao!(6, 2) == 3
  end
end
