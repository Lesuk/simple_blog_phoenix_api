use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :simple_blog, SimpleBlog.Endpoint,
  secret_key_base: System.get_env("SECRET_KEY_BASE")

# Configure your database
config :simple_blog, SimpleBlog.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL") || "ecto://postgres:postgres@localhost/simple_blog_prod",
  # username: "postgres",
  # password: "postgres",
  # database: "simple_blog_prod",
  pool_size: 20
