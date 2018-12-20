# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :hr_api, HrApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "GtGK8aNLD1dDQW6o2wITsVeKi5TSnmgx/HdharsGicvZZM4efOGBbVWqFF4F9Vyb",
  render_errors: [view: HrApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: HrApi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
