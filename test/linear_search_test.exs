defmodule LinearSearchTest do
  use ExUnit.Case
  doctest LinearSearch

  test "enum implementation" do
    assert LinearSearch.search_enum([3,8,31,9,1,4,12,22], 9) == 3
  end

  test "enum implementation with element not present" do
    assert LinearSearch.search_enum([3,8,31,9,1,4,12,22], 99) == nil
  end

  test "iterative implementation" do
    assert LinearSearch.search([3,8,31,9,1,4,12,22], 9) == 3
  end

  test "iterative implementation with element not present" do
    assert LinearSearch.search([3,8,31,9,1,4,12,22], 99) == nil
  end

end
