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

## REF

- https://simplabs.com/blog/2020/06/25/writing-rust-nifs-for-elixir-with-rustler/
