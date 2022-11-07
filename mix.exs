defmodule PostgrexErlangTerm.MixProject do
  use Mix.Project

  def project do
    [
      app: :postgrex_erlang_term,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      source_url: "https://github.com/flambard/postgrex_erlang_term"
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
      {:ecto_sql, "~> 3.6"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp description do
    "PostgrexErlangTerm extends Postgrex with a type for storing Erlang terms directly in PostgreSQL. Requires the PostgreSQL extension pg_erlang_term."
  end

  defp package do
    [
      licenses: ["Apache-2.0"],
      links: %{
        "GitHub" => "https://github.com/flambard/postgrex_erlang_term",
        "pg_erlang_term" => "https://github.com/flambard/pg_erlang_term"
      }
    ]
  end
end
