# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :tonie_jwt_demo, TonieJwtDemoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "rYoqzI1W8XaLDd/+wJFiZJgNDiB5nQKVjrkUzPbtfL5fwLka/EXAxXbovwTEVWfz",
  render_errors: [view: TonieJwtDemoWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: TonieJwtDemo.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :my_app, TonieJwtDemo.Guardian,
       issuer: "TonieJwtDemo",
       secret_key: "woNzh8tnX7KGEvnX56FKsrz0Fn2cMrEPoIbKaZVMHmZJB5MiAeN3mBSmOT8MLgpt"