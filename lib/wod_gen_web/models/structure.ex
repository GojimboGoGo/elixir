defmodule WodGen.Structure do
  use Ecto.Schema
  import Ecto.Changeset

  schema "structures" do
    field(:description, :string)
    field(:title, :string)

    timestamps()
  end

  @doc false
  def changeset(structure, attrs) do
    structure
    |> cast(attrs, [:title, :description])
    |> validate_required([:title, :description])
  end
end
