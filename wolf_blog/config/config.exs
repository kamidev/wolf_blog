# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :wolf_blog,
  ecto_repos: [WolfBlog.Repo]

# Configures the endpoint
config :wolf_blog, WolfBlogWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "9s2ivmg44J1T+x/3MBVsfe+ydJuWZzBX/nIyNWsFEf5TT4d9qpbUKK3uudlynN45",
  render_errors: [view: WolfBlogWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: WolfBlog.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "ebkgTHP2"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
