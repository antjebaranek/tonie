defmodule TonieJwtDemo.User do
  use TonieJwtDemo.Web, :model

  schema "users" do
    field :tonie_id, :string
    field :name, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:tonie_id, :name])
    |> validate_required([:tonie_id, :name])
  end
end
