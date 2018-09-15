defmodule WodGen.Repo.Migrations.CreateDescriptions do
  use Ecto.Migration

  def change do
    create table(:descriptions) do
      add :description, :string

      timestamps()
    end

  end
end
