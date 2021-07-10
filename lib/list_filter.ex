defmodule ListFilter do
  require Integer

  @spec call(list()) :: integer()
  def call(list) do
    list
    |> Enum.filter(fn elem -> String.match?(elem, ~r/^[[:digit:]]+$/) end)
    |> Enum.map(&String.to_integer/1)
    |> Enum.filter(&Integer.is_odd/1)
    |> Enum.count()
  end
end
