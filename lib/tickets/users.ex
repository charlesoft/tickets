defmodule Tickets.Users do
  @moduledoc """
  Context module for users

  This will pretend the database exists
  """

  @users [
    %{id: "1", email: "foo@email.com"},
    %{id: "2", email: "bar@email.com"},
    %{id: "3", email: "baz@email.com"}
  ]

  def users_by_ids(ids) do
    Enum.filter(@users, &(&1.id in ids))
  end
end