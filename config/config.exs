# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenixtailwind,
  ecto_repos: [Phoenixtailwind.Repo]

# Configures the endpoint
config :phoenixtailwind, PhoenixtailwindWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "A6+B1sNgp80l8MJdKXrnvYEoslNcWJWeCP93/F+tijcGcNxbxMZkLKfxdw4IzhHP",
  render_errors: [view: PhoenixtailwindWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Phoenixtailwind.PubSub,
  live_view: [signing_salt: "ZLQLgDjE"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
