defmodule CliTest do
  use ExUnit.Case
  doctest Issues

  import Issues.CLI, only: [parse_args: 1]

  test "-h or --help -> :help" do
    assert parse_args(["-h", "asd"]) == :help
    assert parse_args(["--help", "qwe"]) == :help
  end

  test "pass 3 values ->  return 3 values" do
    assert parse_args(["user", "project", "99"]) == {"user", "project", 99}
  end

  test "pass 2values -> default 4" do
    assert parse_args(["user", "project"]) == {"user", "project", 4}
  end

end
