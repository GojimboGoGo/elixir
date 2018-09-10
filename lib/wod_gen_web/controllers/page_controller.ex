defmodule WodGenWeb.PageController do
  use WodGenWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
