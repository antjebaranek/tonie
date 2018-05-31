# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :tonie_jwt, TonieJwtWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "qIoZQMmm9J5HuD35y0mxBXxzzAJ4nG52pXvMs6xraRBibbYOCjlIqL+MUDxl6rNz",
  render_errors: [view: TonieJwtWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TonieJwt.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
