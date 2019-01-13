defmodule Livrodealemao.Contact do
  use Ecto.Schema
  import Ecto.Changeset
  alias Livrodealemao.Contact

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "contacts" do
    field :email, :string
    field :mensagem, :string
    field :nome, :string

    timestamps()
  end

  @doc false
  def changeset(%Contact{}=contact, attrs \\ %{}) do
    contact
    |> cast(attrs, [:nome, :email, :mensagem])
    |> validate_required([:nome, :email, :mensagem])
    |> validate_format(:email, ~r/@/)
  end
end
