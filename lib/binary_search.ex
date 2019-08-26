defmodule BinarySearch do
  @moduledoc """
  Documentation for BinarySearch.
  """

  @doc """
  Implementation of Binary Search algorithm

  ## Examples

      iex> BinarySearch.search([3,8,9,12,22,39,41,44,48,61], 48)
      8

  """
  def search(enum, value) do
    start = 0
    final = length(enum) - 1
    bsearch(enum, value, start, final)
  end

  defp bsearch(_enum, _value, start, start) do
      nil
  end

  defp bsearch(enum, value, start, final) do
    middle = div((start + final), 2)
    middle_value = Enum.at(enum, middle)
    case value do
        x when x > middle_value ->
            bsearch(enum, value, middle + 1, final)
        x when x < middle_value ->
            bsearch(enum, value, start, middle - 1)
        x when x == middle_value ->
            middle
    end
  end

end
