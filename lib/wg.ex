defmodule WG do
  use Application

  @moduledoc """
  Documentation for WG.
  """

  @doc """
  Application for WOD Generator.
  """

  def start(_type, _args) do
    WG.Supervisor.start_link(name: WG.Supervisor)
  end
end
