defmodule ElixirAlgoTest do
  use ExUnit.Case
  doctest ElixirAlgo

  test "greets the world" do
    assert ElixirAlgo.hello() == :world
  end
end
