defmodule PhoenixOverrun.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_overrun,
    adapter: Ecto.Adapters.Postgres
end
