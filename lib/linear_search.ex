defmodule LinearSearch do
  @moduledoc """
  Documentation for LinearSearch.
  """

  @doc """
  Implementation of Linear Search algorithm

  ## Examples

      iex> LinearSearch.search_enum([3,8,31,9,1,4,12,22], 9)
      3

      iex> LinearSearch.search([3,8,31,9,1,4,12,22], 9)
      3

  """
  def search_enum(enum, value) do
    Enum.find_index(enum, fn x -> x == value end)
  end

  def search(enum, value) do
    search_rec_helper(enum, value, 0)
  end

  defp search_rec_helper([value|_enum], value, counter) do
    counter
  end

  defp search_rec_helper([], _el, _counter) do
    nil
  end

  defp search_rec_helper([_el|enum], value, counter) do
    search_rec_helper(enum, value, counter + 1)
  end

end
