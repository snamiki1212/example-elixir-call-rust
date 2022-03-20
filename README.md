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
Operating System: macOS
CPU Information: Intel(R) Core(TM) i7-1068NG7 CPU @ 2.30GHz
Number of Available Cores: 8
Available memory: 32 GB
Elixir 1.13.3
Erlang 24.2.1

Benchmark suite executing with the following configuration:
warmup: 2 s
time: 10 s
memory time: 0 ns
reduction time: 0 ns
parallel: 1
inputs: none specified
Estimated total run time: 24 s

Benchmarking fib by elixir ...
Benchmarking fib by rust ...

Name                    ips        average  deviation         median         99th %
fib by rust            1.17         0.86 s     ±1.92%         0.86 s         0.88 s
fib by elixir          0.79         1.27 s     ±1.82%         1.26 s         1.32 s

Comparison:
fib by rust            1.17
fib by elixir          0.79 - 1.47x slower +0.41 s

Extended statistics:

Name                  minimum        maximum    sample size                     mode
fib by rust            0.84 s         0.88 s             12                     None
fib by elixir          1.25 s         1.32 s              8                     None
```

## REF

- https://simplabs.com/blog/2020/06/25/writing-rust-nifs-for-elixir-with-rustler/
