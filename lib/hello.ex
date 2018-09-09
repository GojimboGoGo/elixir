defmodule Hello do
  @moduledoc """
  Documentation for Hello.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Hello.hello()
      "hello world"

  """

  def hello do
    parent = self()
    spawn fn -> send(parent, {:string, "hello world"}) end

    receive do
      {:string, msg} ->
        msg
    end
  end
end
