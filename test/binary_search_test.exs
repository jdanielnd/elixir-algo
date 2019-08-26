defmodule BinarySearchTest do
  use ExUnit.Case
  doctest BinarySearch

  test "recursive implementation" do
    assert BinarySearch.search([3,8,9,12,22,39,41,44,48,61], 48) == 8
  end

  test "recursive implementation with element not present" do
    assert BinarySearch.search([3,8,9,12,22,39,41,44,48,61], 99) == nil
  end

end
