defmodule Fib.ByElixir do
  @doc """
  fib by Elixir without memoization and not Tail Call Optimization.
  """
  @spec fib(num :: integer()) :: integer()
  def fib(num) when num <= 1 do
    num
  end

  def fib(num), do: fib(num - 2) + fib(num - 1)
end
