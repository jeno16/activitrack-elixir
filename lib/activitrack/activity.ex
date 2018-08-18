defmodule Activitrack.Activity do
  use Ecto.Schema
  import Ecto.Changeset


  schema "activities" do
    field :description, :string
    field :done, :boolean, default: false
    field :name, :string
    field :priority, :integer

    timestamps()
  end

  @doc false
  def changeset(activity, attrs) do
    activity
    |> cast(attrs, [:name, :description, :priority, :done])
    |> validate_required([:name, :description, :priority, :done])
  end
end
