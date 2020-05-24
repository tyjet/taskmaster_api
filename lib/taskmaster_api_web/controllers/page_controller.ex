defmodule TaskmasterApiWeb.PageController do
  use TaskmasterApiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
