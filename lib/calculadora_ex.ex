defmodule CalculadoraEx do
  def calcular(op, n1, n2) when op in [:+, :-, :*, :/] do
    with {:ok, n1} <- n1 |> valida_numero(),
         {:ok, n2} <- n2 |> valida_numero(),
         do: efetua_operacao(op, n1, n2)
  end

  def calcular(_, _, _), do: {:error, :operacao_indisponivel}

  defp efetua_operacao(:+, n1, n2), do: adicao!(n1, n2)
  defp efetua_operacao(:-, n1, n2), do: subtracao!(n1, n2)
  defp efetua_operacao(:*, n1, n2), do: multiplicacao!(n1, n2)

  defp efetua_operacao(:/, n1, n2) do
    with {:ok, n2} <- n2 |> valida_divisor(),
         do: divisao!(n1, n2)
  end

  def adicao!(n1, n2), do: n1 + n2
  def subtracao!(n1, n2), do: n1 - n2
  def multiplicacao!(n1, n2), do: n1 * n2
  def divisao!(n1, n2), do: n1 / n2

  defp valida_divisor(divisor) when divisor != 0, do: {:ok, divisor}
  defp valida_divisor(_), do: {:error, :divisor_igual_zero}

  defp valida_numero(numero) when is_integer(numero), do: {:ok, numero}
  defp valida_numero(_), do: {:error, :numero_invalido}
end
