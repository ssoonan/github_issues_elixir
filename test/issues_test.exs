defmodule CliTest do
  use ExUnit.case
  doctest Issues

  test "greets the world" do
    assert Issues.hello() == :world
  end
end
