defmodule WG.Bucket do
  use Agent

  @moduledoc """
  Data to be used for generation.
  """

  @doc """
  Start the data key-value map.

  ## Examples

      iex> {:ok, pid} = WG.Bucket.start_link([])
      iex> is_pid pid
      true

  """
  def start_link(_opts) do
    Agent.start_link(fn -> %{} end)
  end

  def get(pid, key) do
    Agent.get(pid, fn map -> Map.get(map, key) end)
  end

  def put(pid, key, value) do
    Agent.update(pid, fn map -> Map.put(map, key, value) end)
  end
end
