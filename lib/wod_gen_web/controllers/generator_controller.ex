defmodule WodGenWeb.GeneratorController do
  use WodGenWeb, :controller

  def index(conn, _params) do
    locations = WodGen.LocationService.generate()

    json(conn, locations)
  end
end
