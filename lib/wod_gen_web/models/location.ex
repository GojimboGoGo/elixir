defmodule WodGen.Location do
  @enforce_keys [:title]
  defstruct [
    :title,
    :description,
    :history
  ]
end
