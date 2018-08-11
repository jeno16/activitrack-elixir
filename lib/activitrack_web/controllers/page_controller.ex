defmodule ActivitrackWeb.PageController do
  use ActivitrackWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
