# CalculadoraEx

Calculadora simples feita em Elixir 😊.

## Instalação

Não pretendo deixar esse código disponivel via Hex. Para instalá-lo direto do github:

```elixir
Mix.install([
  calculadora_ex: [github: "odineiramone/calculadora_ex"]
])
```

## Como utilizar

```elixir
CalculadoraEx.calcular(:+, 1, 2)
#=> 3

CalculadoraEx.calcular(:-, 5, 3)
#=> 2

CalculadoraEx.calcular(:*, 4, 3)
#=> 12

CalculadoraEx.calcular(:/, 9, 3)
#=> 3
```
