defmodule ExampleElixirCallRustTest do
  use ExUnit.Case
  doctest ExampleElixirCallRust

  test "greets the world" do
    assert ExampleElixirCallRust.hello() == :world
  end
end
