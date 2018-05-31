defmodule TonieJwtDemoWeb.Router do
  use TonieJwtDemoWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", TonieJwtDemoWeb do
    pipe_through :api
  end
end
