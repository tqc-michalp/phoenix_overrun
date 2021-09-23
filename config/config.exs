# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_overrun,
  ecto_repos: [PhoenixOverrun.Repo]

# Configures the endpoint
config :phoenix_overrun, PhoenixOverrunWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "rxcTbVX3mcnKJt3uUkroVYMDehhqomybOCT9Pt9C25Lm1kXnDG0o8cBCn8JlKSPL",
  render_errors: [view: PhoenixOverrunWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhoenixOverrun.PubSub,
  live_view: [signing_salt: "6X8mt268"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
