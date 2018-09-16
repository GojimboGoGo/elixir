defmodule WodGen.Repo.Migrations.CreateStructures do
  use Ecto.Migration

  def change do
    create table(:structures) do
      add :title, :string
      add :description, :string

      timestamps()
    end

  end
end
