defmodule Tickets do
  @moduledoc """
  Context module for tickets

  This will pretend the database exists
  """

  def tickets_available?(_event) do
    Process.sleep(Enum.random(100..200))

    true
  end

  def insert_all(messages) do
    # Normally it would be `Repo.insert_all/3` if using Ecto
    Process.sleep(Enum.count(messages) * 250)

    messages
  end

  def create_ticket(_user, _event) do
    Process.sleep(Enum.random(250..1000))
  end

  def send_email(_user) do
    Process.sleep(Enum.random(100..200))
  end
end