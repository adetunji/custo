# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :custo,
  ecto_repos: [Custo.Repo]

# Configures the endpoint
config :custo, Custo.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "vJ9nQ8ywe3IArI3WQWG3vvlTo1llA4eNMUrgfqnBE2C54+N2T41zV0dPu/sob72T",
  render_errors: [view: Custo.ErrorView, accepts: ~w(json)],
  pubsub: [name: Custo.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
