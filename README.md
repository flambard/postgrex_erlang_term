PostgrexErlangTerm
==================

Postgrex extension and Ecto type `ErlangTerm` for use with the PostgreSQL extension [`pg_erlang_term`](https://github.com/flambard/pg_erlang_term) for sending and storing arbitrary Erlang/Elixir terms efficiently as binaries while still being human-readable in SQL.


Installation
------------

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `postgrex_erlang_term` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:postgrex_erlang_term, "~> 0.1.0"}
  ]
end
```

Add `PostgrexErlangTerm.PostgresTypes` to your Ecto repo config:
```elixir
types: PostgrexErlangTerm.PostgresTypes
```



Usage
-----

In Ecto migrations, use `:erlang_term` as type on columns like so:

```elixir
create table(:some_table) do
  add :some_column, :erlang_table
end
```

On Ecto schemas, use the ErlangTerm type:

```elixir
alias PostgrexErlangTerm.ErlangTerm

schema "some_table" do
  field :some_column, ErlangTerm
end
```
