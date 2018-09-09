defmodule WG.KeywordTest do
  use ExUnit.Case, async: true
  doctest WG.Bucket

  setup do
    bucket = start_supervised!(WG.Bucket)
    %{bucket: bucket}
  end

  test "store values by key", %{bucket: bucket} do
    assert WG.Bucket.get(bucket, "modifier") == nil

    WG.Bucket.put(bucket, "modifier", "Destined")
    assert WG.Bucket.get(bucket, "modifier") == "Destined"
  end
end
