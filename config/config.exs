# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :gymotion,
  ecto_repos: [Gymotion.Repo]

# Configures the endpoint
config :gymotion, GymotionWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6yLOxaUqjzyUScm46XGIdkkNgoD2slO+reUiqTheRrueFA0npAFUseQT7LhSsG5b",
  render_errors: [view: GymotionWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Gymotion.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Configure Guardian
config :gymotion, Gymotion.Auth.Guardian,
  issuer: "gymotion",
  secret_key: "0qNg6AiCyPhbsjCXU9EP0c27RDbgbewhiK4FwFu7Cd9aY1QorOVt+Hg2QKy0RE4Q"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
