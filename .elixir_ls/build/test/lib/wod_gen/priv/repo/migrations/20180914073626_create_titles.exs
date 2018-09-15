defmodule WodGen.Repo.Migrations.CreateTitles do
  use Ecto.Migration

  def change do
    create table(:titles) do
      add :title, :string

      timestamps()
    end

  end
end
