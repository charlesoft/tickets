defmodule Tickets.MixProject do
  use Mix.Project

  def project do
    [
      app: :tickets,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Tickets.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:broadway, "~> 1.0.7"},
      {:broadway_rabbitmq, "~> 0.7"},
      {:amqp, "~> 3.3"}
    ]
  end
end
