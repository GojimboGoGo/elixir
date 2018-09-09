defmodule WGTest do
  use ExUnit.Case
  doctest WG

  # TODO: figure out how to delay starting the app
  test "test app start" do
    {:error, {:already_started, pid}} = WG.start(:test, [])
    assert is_pid(pid)
  end
end
