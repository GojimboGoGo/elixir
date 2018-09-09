defmodule KV.KeywordTest do
  use ExUnit.Case, async: true
  doctest KV.Keyword

  test "store values by key" do
    {:ok, keywords} = KV.Keyword.start_link([])
    assert KV.Keyword.get(keywords, "modifier") == nil

    KV.Keyword.put keywords, "modifier", "Destined"
    assert KV.Keyword.get(keywords, "modifier") == "Destined"
  end
end
