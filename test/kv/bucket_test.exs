defmodule KV.KeywordTest do
  use ExUnit.Case, async: true
  doctest KV.Bucket

  setup do
    bucket = start_supervised!(KV.Bucket)
    %{bucket: bucket}
  end

  test "store values by key", %{bucket: bucket} do
    assert KV.Bucket.get(bucket, "modifier") == nil

    KV.Bucket.put(bucket, "modifier", "Destined")
    assert KV.Bucket.get(bucket, "modifier") == "Destined"
  end
end
