defmodule PhoenixOverrunWeb.PageController do
  use PhoenixOverrunWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
