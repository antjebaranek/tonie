defmodule TonieJwtDemo.User do
  use TonieJwtDemo.Web, :model

  schema "users" do
    field :tonie_id, :int, virtual: true
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
    |> validate_changeset
  end

  def validate_changeset(struct) do
    struct
    |> validate_length(:tonie_id, min: 8, max: 8)
    |> validate_length(:name, min: 3)
  end

#  defp generate_password_hash(changeset) do
#    case changeset do
#      %Ecto.Changeset{valid?: true, changes: %{tonie_id: tonie_id}} ->
#        put_change(changeset, :password_hash, Comeonin.Bcrypt.hashpwsalt(tonie_id))
#      _ ->
#        changeset
#    end
#  end
end
