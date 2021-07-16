# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :team_budget2,
  ecto_repos: [TeamBudget2.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :team_budget2, TeamBudget2Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "VCoHpB6ZjfNmzyYDOWOF1mcePbiludamtzsArm5zV8h84WpISCZ0R1Hw9AZ6ILMH",
  render_errors: [view: TeamBudget2Web.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: TeamBudget2.PubSub,
  live_view: [signing_salt: "B20eew2y"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
