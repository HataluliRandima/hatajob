defmodule Hatajob.Repo do
  use Ecto.Repo,
    otp_app: :hatajob,
    adapter: Ecto.Adapters.Postgres
end
