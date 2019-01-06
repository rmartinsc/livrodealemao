defmodule LivrodealemaoWeb.ContatoControllerTest do
  use LivrodealemaoWeb.ConnCase

  test "GET /contato", %{conn: conn} do
    conn = get(conn, "/contato")
    assert html_response(conn, 200)
  end
end