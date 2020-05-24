# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :taskmaster_api,
  ecto_repos: [TaskmasterApi.Repo]

# Configures the endpoint
config :taskmaster_api, TaskmasterApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "uR269wBd3IRNp1SR5VlK+RRfOUlltADur064w1II/7WncqNSp0DKFub24EPDweYu",
  render_errors: [view: TaskmasterApiWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: TaskmasterApi.PubSub,
  live_view: [signing_salt: "JL5gfX0X"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
