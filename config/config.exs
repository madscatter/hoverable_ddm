# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :hoverable_ddm, HoverableDdmWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "jiHsIHRYMQzgpoA2uzJFkbpdsNykW3sWzlbBlQgUA+FMWtSm2xeJTN573VM3CVyr",
  render_errors: [view: HoverableDdmWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: HoverableDdm.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "0Jjh9N/E"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
