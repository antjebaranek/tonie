# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :tonie_jwt_demo,
  ecto_repos: [TonieJwtDemo.Repo]

# Configures the endpoint
config :tonie_jwt_demo, TonieJwtDemoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LWHaxalMumKgWGTd608dn2IvieZIlMMZ7mbb7Dj/Zjh22ZAsEnY48w6v6Ynkqv76",
  render_errors: [view: TonieJwtDemoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TonieJwtDemo.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"