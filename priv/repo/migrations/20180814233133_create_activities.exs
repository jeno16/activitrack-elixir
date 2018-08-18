defmodule Activitrack.Repo.Migrations.CreateActivities do
  use Ecto.Migration

  def change do
    create table(:activities) do
      add :name, :string
      add :description, :text
      add :priority, :integer
      add :done, :boolean, default: false, null: false

      timestamps()
    end

  end
end
