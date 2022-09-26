defmodule SumListTest do
  use ExUnit.Case
  # doctest SumList
  describe "call/1" do
    test "Should sum the list items" do
      list = [1, 2, 3, 4]
      response = SumList.call(list)
      assert response == 10
    end
  end

  describe "call_enum_mult/2" do
    test "Should double the list items if mult = 2" do
      list = [1, 2, 3, 4]
      response = SumList.call_enum_mult(list, 2)
      assert response == [2, 4, 6, 8]
    end
  end

  describe "call_enum_mod/2" do
    test "Should return true if one item in the list divisible by 2" do
      list = [1, 3, 5, 8]
      response = SumList.call_enum_mod(list, 2)
      assert response == true
    end
  end
end
