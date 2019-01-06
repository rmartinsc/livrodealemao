defmodule Livrodealemao.Repo.Migrations.CreateContacts do
  use Ecto.Migration

  def change do
    create table(:contacts) do
      add :id, :uuid
      add :nome, :string
      add :email, :string
      add :mensagem, :string
      add :ip, :string

      timestamps()
    end

  end
end
