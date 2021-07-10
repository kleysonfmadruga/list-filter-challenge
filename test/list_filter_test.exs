defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "when there are odd numbers, returns the quantity" do
      list = ["1", "2", "3", "lucario", "o9", "1a", "one", "banana"]
      response = ListFilter.call(list)
      expected_response = 2
      assert expected_response == response
    end
  end
end
