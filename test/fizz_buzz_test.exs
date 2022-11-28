defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a file is provided, it returns a converted list" do
      result = {:ok, [1, 2, :buzz, 7, 98, :buzz, 16, :fizzbuzz, :buzz, 29, :fizzbuzz]}
      assert FizzBuzz.build("numbers.txt") == result
    end

    test "when a file is invalid, it returns a error message" do
      result = {:error, "Error on reading the file: enoent"}
      assert FizzBuzz.build("invalid.txt") == result
    end
  end
end
