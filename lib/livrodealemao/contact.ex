defmodule Livrodealemao.Contact do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "contacts" do
    field :email, :string
    field :ip, :string
    field :mensagem, :string
    field :nome, :string

    timestamps()
  end

  @doc false
  def changeset(contact, attrs) do
    contact
    |> cast(attrs, [:nome, :email, :mensagem, :ip])
    |> validate_required([:nome, :email, :mensagem, :ip])
    |> validate_format(:email, ~r/@/)
  end
end
