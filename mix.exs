defmodule Ecto.Adapters.CockroachDB.MixProject do
  use Mix.Project

  def project do
    [
      app: :ecto_crdb,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "CockroachDB Ecto Adaptor",
      description: "CockroachDB adaptor for Ecto",
      source_url: "https://github.com/cypherfox/ecto_crdb",
      docs: docs(),
      # package: package(),
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp docs do
    [
      source_ref: "v#{@version}",
      main: "readme",
      extras: ["README.md"]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.20", only: :dev},
      {:ecto, "~> 3.6"},
      {:ecto_sql, "~> 3.6"},
      {:postgrex, "~> 0.15"}
  ]
  end
end
