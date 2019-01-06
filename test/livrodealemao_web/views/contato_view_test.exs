defmodule LivrodealemaoWeb.ContatoViewTest do
  use LivrodealemaoWeb.ConnCase, async: true

  # Bring render/3 and render_to_string/3 for testing custom views
  import Phoenix.View

  test "renders contato.html" do
    assert render_to_string(LivrodealemaoWeb.ContatoView, "contato.html", [])
  end

end
