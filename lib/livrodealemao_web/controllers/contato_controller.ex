defmodule LivrodealemaoWeb.ContatoController do
  use LivrodealemaoWeb, :controller

  def contato(conn, _params) do
  	render(conn, "contato.html")
  end
  
end
