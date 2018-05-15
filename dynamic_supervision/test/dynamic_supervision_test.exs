defmodule DynamicSupervisionTest do
  use ExUnit.Case
  doctest DynamicSupervision

  test "greets the world" do
    assert DynamicSupervision.hello() == :world
  end
end
