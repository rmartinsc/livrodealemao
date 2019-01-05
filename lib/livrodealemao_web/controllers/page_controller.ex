defmodule LivrodealemaoWeb.PageController do
  use LivrodealemaoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def contato(conn, _params) do
  	render(conn, "contato.html")
  end
  
end
