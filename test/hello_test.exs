defmodule HelloTest do
  use ExUnit.Case
  doctest Hello

  test "tests the message sent" do
    assert Hello.hello() == "hello world"
  end
end
