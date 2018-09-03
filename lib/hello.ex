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
    send(self(), {:string, "hello world"})

    receive do
      {:string, msg} ->
        msg
    end
  end
end
