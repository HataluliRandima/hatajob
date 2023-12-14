defmodule Hatajob.Workers.Basic do
  use Oban.Worker

  alias Hatajob.Accounts

  @impl Oban.Worker
  def perform(%Oban.Job{args: %{"id" => id} = args}) do
    model = Hatajob.Repo.get(Hatajob.Accounts.User, id)

    IO.inspect(model)
    case args do
      %{"in_the" => "business"} ->
        IO.inspect(model)

      %{"vote_for" => vote} ->
        IO.inspect([vote, model])

      _ ->
        IO.inspect(model)
        Hatajob.Accounts.create_user(%{name: "musanda", age: 14})
    end

    :ok
  end
end
