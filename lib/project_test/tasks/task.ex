defmodule ProjectTest.Tasks.Task do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tasks" do
    field :description, :string

    timestamps()
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:description])
    |> validate_required([:description])
    |> validate_length(:description, min: 2)
    |> IO.inspect()
  end
end
