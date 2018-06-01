defmodule TonieJwtDemo.UserView do
  use TonieJwtDemo.Web, :view

  def render("index.json", %{users: users}) do
    %{data: render_many(users, TonieJwtDemo.UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, TonieJwtDemo.UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      tonie_id: user.tonie_id,
      name: user.name}
  end
end
