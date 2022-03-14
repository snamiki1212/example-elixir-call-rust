# ExampleElixirCallRust

```elixir
iex> Benchee.run(
...>   %{
...>     "fib by elixir" => fn -> FibByElixir.fib(40) end,
...>     "fib by rust"   => fn -> FibByRust.fib(40) end
...>   },
...>   time: 10,
...>   formatters: [{Benchee.Formatters.Console, extended_statistics: true}]
...> )
```
