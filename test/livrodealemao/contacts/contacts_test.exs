defmodule Livrodealemao.ContactsTest do
  use Livrodealemao.DataCase

  alias Livrodealemao.Contact

  describe "contacts" do

    @valid_attrs %{nome: "some bio", email: "some@email", mensagem: "ola alguma mensagem vai aqui"}
    @update_attrs %{nome: "some bio", email: "some@email.com", mensagem: "ola alguma mensagem vai aqui"}
    @invalid_attrs %{bio: nil, email: nil, name: nil, number_of_pets: nil}

    test "create_contact/1 with valid data creates a contact" do
      changeset=Contact.changeset(%Contact{}, @valid_attrs)
      assert changeset.valid?
    end

    test "create_contact/1 with invalid data returns error changeset" do
      changeset=Contact.changeset(%Contact{}, @invalid_attrs)

      refute changeset.valid?
    end

  end
end