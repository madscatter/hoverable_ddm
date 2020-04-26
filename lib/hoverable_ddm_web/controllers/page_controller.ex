defmodule HoverableDdmWeb.PageController do
  use HoverableDdmWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
