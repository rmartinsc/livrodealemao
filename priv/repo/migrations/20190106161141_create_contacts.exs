defmodule Livrodealemao.Repo.Migrations.CreateContacts do
  use Ecto.Migration

  def change do
    create table(:contacts, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :nome, :string
      add :email, :string
      add :mensagem, :string
      add :ip, :string

      timestamps()
    end

  end
end
