defmodule WodGenWeb.PageController do
  use WodGenWeb, :controller

  def index(conn, _params) do
    loc = WodGen.LocationService.generate()
    conn = assign(conn, :loc, loc)

    render(conn, "index.html")
  end
end
