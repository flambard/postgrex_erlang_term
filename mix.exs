defmodule PostgrexErlangTerm.MixProject do
  use Mix.Project

  def project do
    [
      app: :postgrex_erlang_term,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:postgrex, "~> 0.16.5"},
      {:ecto, "~> 3.9"},
      {:ecto_sql, "~> 3.6"}
    ]
  end
end
