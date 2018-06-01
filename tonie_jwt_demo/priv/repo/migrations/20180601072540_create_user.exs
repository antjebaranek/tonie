defmodule TonieJwtDemo.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :tonie_id, :string
      add :name, :string

      timestamps()
    end
  end
end
