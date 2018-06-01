defmodule TonieJwtDemo.UserTest do
  use TonieJwtDemo.ModelCase

  alias TonieJwtDemo.User

  @valid_attrs %{name: "some name", tonie_id: "some tonie_id"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
