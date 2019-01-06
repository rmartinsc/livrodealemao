defmodule Livrodealemao.Contact do
  use Ecto.Schema
  import Ecto.Changeset


  schema "contacts" do
    field :email, :string
    field :id, Ecto.UUID
    field :ip, :string
    field :mensagem, :string
    field :nome, :string

    timestamps()
  end

  @doc false
  def changeset(contact, attrs) do
    contact
    |> cast(attrs, [:id, :nome, :email, :mensagem, :ip])
    |> validate_required([:id, :nome, :email, :mensagem, :ip])
  end
end
