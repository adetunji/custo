defmodule Custo.PageController do
  use Custo.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
