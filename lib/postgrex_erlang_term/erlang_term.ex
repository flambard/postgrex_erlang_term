defmodule PostgrexErlangTerm.ErlangTerm do
  use Ecto.Type

  def type() do
    :erlang_term
  end

  def cast(term) do
    {:ok, term}
  end

  def dump(term) do
    {:ok, term}
  end

  def load(term) do
    {:ok, term}
  end
end
