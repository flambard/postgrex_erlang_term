defmodule PostgrexErlangTerm.Extension do
  @moduledoc false
  use Postgrex.BinaryExtension, send: "erlang_term_send"

  def encode(_) do
    quote location: :keep do
      term ->
        bin = :erlang.term_to_binary(term)
        <<byte_size(bin)::size(32), bin::binary>>
    end
  end

  def decode(_) do
    quote location: :keep do
      <<byte_size::int32(), bin::binary(byte_size)>> -> :erlang.binary_to_term(bin)
    end
  end
end
