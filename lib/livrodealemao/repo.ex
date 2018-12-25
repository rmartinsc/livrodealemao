defmodule Livrodealemao.Repo do
  use Ecto.Repo,
    otp_app: :livrodealemao,
    adapter: Ecto.Adapters.Postgres
end
