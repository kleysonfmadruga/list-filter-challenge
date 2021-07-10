defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "when there are odd numbers, returns the quantity" do
      list = ["1", "2", "3", "lucario", "o9", "1a", "one", "banana"]
      response = ListFilter.call(list)
      expected_response = 2
      assert expected_response == response
    end

    test "when there aren't odd numbers, returns 0" do
      list = ["kimi", "tokyo", "2", "pringles", "0", "1a", "394", "banana"]
      response = ListFilter.call(list)
      expected_response = 0
      assert expected_response == response
    end
  end
end
