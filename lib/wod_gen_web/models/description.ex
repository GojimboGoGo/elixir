defmodule WodGen.Description do
  use Ecto.Schema
  import Ecto.Changeset

  schema "descriptions" do
    field(:description, :string)

    timestamps()
  end

  @doc false
  def changeset(description, attrs) do
    description
    |> cast(attrs, [:description])
    |> validate_required([:description])
  end
end
