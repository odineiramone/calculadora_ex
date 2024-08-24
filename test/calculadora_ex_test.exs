defmodule CalculadoraExTest do
  use ExUnit.Case

  test "adicao!/2 soma dois valores" do
    assert CalculadoraEx.adicao!(1, 2) == 3
  end

  test "subtracao!/2 subtrai dois valores" do
    assert CalculadoraEx.subtracao!(3, 2) == 1
  end

  test "multiplicacao!/2 multiplica dois valores" do
    assert CalculadoraEx.multiplicacao!(4, 2) == 8
  end

  test "divisao!/2 divide dois valores" do
    assert CalculadoraEx.divisao!(6, 2) == 3
  end

  test "calcular/3 realiza somas" do
    assert CalculadoraEx.calcular(:+, 1, 2) == 3
  end

  test "calcular/3 realiza subtrações" do
    assert CalculadoraEx.calcular(:-, 5, 3) == 2
  end

  test "calcular/3 realiza multiplicações" do
    assert CalculadoraEx.calcular(:*, 4, 3) == 12
  end

  test "calcular/3 realiza divisões" do
    assert CalculadoraEx.calcular(:/, 9, 3) == 3
  end

  test "calcular/3 retorna tupla de erro com operações inválidas" do
    assert CalculadoraEx.calcular(:=, 9, 3) == {:error, :operacao_indisponivel}
  end

  test "calcular/3 retorna tupla de erro com valores não-inteiros" do
    assert CalculadoraEx.calcular(:+, "teste", 2.0) == {:error, :numero_invalido}
  end

  test "calcular/3 retorna tupla de erro com divisão por zero" do
    assert CalculadoraEx.calcular(:/, 1, 0) == {:error, :divisor_igual_zero}
  end
end
