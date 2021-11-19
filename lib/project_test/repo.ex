defmodule ProjectTest.Repo do
  use Ecto.Repo,
    otp_app: :project_test,
    adapter: Ecto.Adapters.Postgres
end
