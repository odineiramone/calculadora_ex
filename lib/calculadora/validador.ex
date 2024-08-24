defmodule Calculadora.Validador do
  def valida_divisor(divisor) when divisor != 0, do: {:ok, divisor}
  def valida_divisor(_), do: {:error, :divisor_igual_zero}

  def valida_numero(numero) when is_integer(numero), do: {:ok, numero}
  def valida_numero(_), do: {:error, :numero_invalido}
end
