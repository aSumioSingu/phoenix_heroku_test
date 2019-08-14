defmodule PhoenixHerokuTest.PageController do
  use PhoenixHerokuTest.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
