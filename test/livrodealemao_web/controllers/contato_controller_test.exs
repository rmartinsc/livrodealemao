defmodule LivrodealemaoWeb.ContatoControllerTest do
  use LivrodealemaoWeb.ConnCase

  test "GET /contato/new", %{conn: conn} do
    conn = get(conn, "/contato/new")
    assert html_response(conn, 200)
  end

  @params %{
  email: "user@example.com",
  name: "meu nome",
  mensagem: "minha mensagem pode ser longa",
  }

  test "POST /contato", %{conn: conn} do
  	conn = post conn, "/contato", [contact: @params]
  	assert html_response(conn, 200)
  	assert get_flash(conn, :info) = "Obrigado pela sua mensagem!"
  end

end