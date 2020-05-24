defmodule TaskmasterApi.Repo do
  use Ecto.Repo,
    otp_app: :taskmaster_api,
    adapter: Ecto.Adapters.Postgres
end
