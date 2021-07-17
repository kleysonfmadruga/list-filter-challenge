defmodule ListFilter do
  @moduledoc """
    This module provides a function to count how much odd numbers are in a list of strings
  """

  require Integer

  @doc """
    This function counts how much odd numbers are in a list of strings

    ## Parameters
    list: A list of strings

    ## Examples
    \tiex> ListFilter.call(["a", "1", "2", "3a"])
    \t1
  """
  @spec call(list()) :: integer()
  def call(list) do
    list
    |> Enum.filter(fn elem -> String.match?(elem, ~r/^[[:digit:]]+$/) end)
    |> Enum.map(&String.to_integer/1)
    |> Enum.filter(&Integer.is_odd/1)
    |> Enum.count()
  end
end
