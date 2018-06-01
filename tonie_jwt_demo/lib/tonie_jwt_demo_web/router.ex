defmodule TonieJwtDemoWeb.Router do
  use TonieJwtDemoWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", TonieJwtDemoWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  pipeline :api do
    plug :accepts, ["json"]
    plug Guardian.Plug.VerifyHeader
    plug Guardian.Plug.LoadResource
  end

  pipeline :authenticated do
    plug Guardian.Plug.EnsureAuthenticated
  end

  scope "/api/v1", TonieJwtDemo do
    pipe_through :api

    pipe_through :authenticated # restrict unauthenticated access for routes below
    resources "/users", UserController, except: [:new, :edit]
  end
end
