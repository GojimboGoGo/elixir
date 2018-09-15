defmodule WodGen.Repo.Migrations.CreateEvents do
  use Ecto.Migration

  def change do
    create table(:events) do
      add :event, :string

      timestamps()
    end

  end
end
