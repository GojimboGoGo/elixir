defmodule WG.RegistryTest do
  use ExUnit.Case, async: true

  setup do
    registry = start_supervised!(WG.Registry)
    %{registry: registry}
  end

  test "spawns buckets", %{registry: registry} do
    assert WG.Registry.lookup(registry, "shopping") == :error

    WG.Registry.create(registry, "shopping")
    assert {:ok, bucket} = WG.Registry.lookup(registry, "shopping")

    WG.Bucket.put(bucket, "milk", 1)
    assert WG.Bucket.get(bucket, "milk") == 1
  end

  test "get pid after creating bucket", %{registry: registry} do
    {:ok, pid} = WG.Registry.create(registry, "shopping")
    assert is_pid(pid)

    {:ok, list} = WG.Registry.create(registry, "shopping")
    assert is_pid(list)
  end

  test "removes buckets on exit", %{registry: registry} do
    WG.Registry.create(registry, "shopping")
    {:ok, bucket} = WG.Registry.lookup(registry, "shopping")
    Agent.stop(bucket)
    assert WG.Registry.lookup(registry, "shopping") == :error
  end
end
