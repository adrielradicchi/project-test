import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :project_test, ProjectTest.Repo,
  username: "postgres",
  password: "postgres",
  database: "project_test_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :project_test, ProjectTestWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "yZRyVehBrqDHfH4/sZNIg/yvX4yUQQTYToYzrwQla5I0yixB7O2s2/ymPEmsr+iZ",
  server: false

# In test we don't send emails.
config :project_test, ProjectTest.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
