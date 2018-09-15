defmodule WodGen.LocationService do
  @doc """
  Returns a WodGen.Location struct
  """
  def generate do
    titles = WodGen.Repo.all(WodGen.Title)
    descriptions = WodGen.Repo.all(WodGen.Description)
    events = WodGen.Repo.all(WodGen.Event)

    %WodGen.Location{
      title: hd(titles).title,
      description: hd(descriptions).description,
      history: [
        Enum.at(events, 0).event,
        Enum.at(events, 1).event,
        Enum.at(events, 2).event
      ]
    }
  end
end
