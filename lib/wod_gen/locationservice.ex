defmodule WodGen.LocationService do
  @doc """
  Returns a WodGen.Location struct
  """
  def generate() do
    structures = WodGen.Repo.all(WodGen.Structure)
    structure = Enum.random(structures)
    events = WodGen.Repo.all(WodGen.Event)

    history = pull_events([], events, 3)

    %WodGen.Location{
      title: structure.title,
      description: structure.description,
      history: history
    }
  end

  defp pull_events(history, events, left) when left <= 1 do
    [Enum.random(events).event] ++ history
  end

  defp pull_events(history, events, left) do
    history = [Enum.random(events).event] ++ history
    pull_events(history, events, left - 1)
  end
end
