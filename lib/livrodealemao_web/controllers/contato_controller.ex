defmodule LivrodealemaoWeb.ContatoController do
  use LivrodealemaoWeb, :controller
  alias Livrodealemao.Contact
  alias Livrodealemao.Repo

  def new(conn, _params) do
  	changeset = Contact.changeset(%Contact{})
  	render(conn, "contato.html", changeset: changeset)
  end

  def create(conn, %{"contact" => contact_params}) do
  changeset = Contact.changeset(%Contact{}, contact_params)
  case Repo.insert(changeset) do
    {:ok, _contact} ->
      conn
      |> put_flash(:info, "Obrigado pela sua mensagem!")
      |> redirect(to: "/")
    {:error, changeset} ->
      render(conn, "contato.html", changeset: changeset)
  end
end
  
end
