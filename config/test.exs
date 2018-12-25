use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :livrodealemao, LivrodealemaoWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :livrodealemao, Livrodealemao.Repo,
  username: "livrodealemao",
  password: "password",
  database: "livrodealemao_test",
  hostname: System.get_env("DB_HOST") || "postgre",
  pool: Ecto.Adapters.SQL.Sandbox
