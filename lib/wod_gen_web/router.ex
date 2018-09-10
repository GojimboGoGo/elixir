defmodule WodGenWeb.Router do
  use WodGenWeb, :router

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

  scope "/", WodGenWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/v1/locations", GeneratorController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", WodGenWeb do
  #   pipe_through :api
  # end
end
