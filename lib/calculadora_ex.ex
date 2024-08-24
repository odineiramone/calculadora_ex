defmodule CalculadoraEx do
  alias Calculadora.MotorDeCalculo, as: Motor

  import Calculadora.Validador

  defdelegate adicao!(n1, n2), to: Motor
  defdelegate subtracao!(n1, n2), to: Motor
  defdelegate multiplicacao!(n1, n2), to: Motor
  defdelegate divisao!(n1, n2), to: Motor

  def calcular(op, n1, n2) when op in [:+, :-, :*, :/] do
    with {:ok, n1} <- n1 |> valida_numero(),
         {:ok, n2} <- n2 |> valida_numero(),
         do: efetua_operacao(op, n1, n2)
  end

  def calcular(_, _, _), do: {:error, :operacao_indisponivel}

  defp efetua_operacao(:+, n1, n2), do: Motor.adicao!(n1, n2)
  defp efetua_operacao(:-, n1, n2), do: Motor.subtracao!(n1, n2)
  defp efetua_operacao(:*, n1, n2), do: Motor.multiplicacao!(n1, n2)

  defp efetua_operacao(:/, n1, n2) do
    with {:ok, n2} <- n2 |> valida_divisor(),
         do: Motor.divisao!(n1, n2)
  end
end
