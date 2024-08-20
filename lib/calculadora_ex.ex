defmodule CalculadorEx do
  def calcular(:+, n1, n2), do: adicao(n1, n2)
  def calcular(:/, n1, n2), do: divisao(n1, n2)
  def calcular(:*, n1, n2), do: multiplicacao(n1, n2)

  def calcular(_, _, _), do: {:error, :operacao_indisponivel}

  def adicao(primeiro_numero, segundo_numero) do
    with {:ok, n1} <- primeiro_numero |> valida_numero(),
         {:ok, n2} <- segundo_numero |> valida_numero(),
         do: efetua_adicao(n1, n2)
  end

  def divisao(primeiro_numero, segundo_numero) do
    with {:ok, n1} <- primeiro_numero |> valida_numero(),
         {:ok, _} <- segundo_numero |> valida_numero(),
         {:ok, n2} <- segundo_numero |> valida_divisor(),
         do: efetua_divisao(n1, n2)
  end

  def subtracao(primeiro_numero, segundo_numero) do
    primeiro_numero - segundo_numero
  end

  def multiplicacao(primeiro_numero, segundo_numero) do
    with {:ok, n1} <- primeiro_numero |> valida_numero(),
         {:ok, n2} <- segundo_numero |> valida_numero(),
         do: efetua_multiplicacao(n1, n2)
  end

  def efetua_multiplicacao(n1, n2), do: n1 * n2

  def efetua_divisao(n1, n2), do: n1 / n2

  defp efetua_adicao(n1, n2), do: n1 + n2

  defp valida_divisor(divisor) when divisor != 0, do: {:ok, divisor}
  defp valida_divisor(_), do: {:error, :divisor_igual_zero}

  defp valida_numero(numero) when is_integer(numero) do
    {:ok, numero}
  end

  defp valida_numero(_), do: {:error, :numero_invalido}
end
