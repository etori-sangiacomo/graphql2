defmodule TeamBudget2.Repo do
  use Ecto.Repo,
    otp_app: :team_budget2,
    adapter: Ecto.Adapters.Postgres
end
