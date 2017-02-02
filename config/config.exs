# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :exheroku,
  ecto_repos: [Exheroku.Repo]

# Configures the endpoint
config :exheroku, Exheroku.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "spQGTsYgkkEaq9F13ZI72UKyiLYUugOZ5c1Jphf0RVhmwHbiks5jorgcOh/yo9dT",
  render_errors: [view: Exheroku.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Exheroku.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
