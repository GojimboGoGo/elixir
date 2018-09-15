defmodule WodGen.Title do
  use Ecto.Schema
  import Ecto.Changeset

  schema "titles" do
    field(:title, :string)

    timestamps()
  end

  @doc false
  def changeset(title, attrs) do
    title
    |> cast(attrs, [:title])
    |> validate_required([:title])
  end
end
