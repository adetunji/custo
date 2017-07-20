defmodule Custo.Router do
  use Custo.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Custo do
    pipe_through :api
  end
end
