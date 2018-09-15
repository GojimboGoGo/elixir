defmodule WodGen.Event do
  use Ecto.Schema
  import Ecto.Changeset

  schema "events" do
    field(:event, :string)

    timestamps()
  end

  @doc false
  def changeset(event, attrs) do
    event
    |> cast(attrs, [:event])
    |> validate_required([:event])
  end
end
