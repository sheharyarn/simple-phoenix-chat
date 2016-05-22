ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Chatroom.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Chatroom.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Chatroom.Repo)

