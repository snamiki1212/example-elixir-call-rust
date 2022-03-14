defmodule FibByRust do
  use Rustler, otp_app: :example_elixir_call_rust, crate: "fib"

  # When your NIF is loaded, it will override this function.
  def fib(_num), do: :erlang.nif_error(:nif_not_loaded)
end
