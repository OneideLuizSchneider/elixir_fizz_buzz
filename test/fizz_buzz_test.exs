defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, returns the convert lust" do
      assert FizzBuzz.build("numbers.txt") ==
               {:ok, [1, 2, :fizz, 4, :buzz, :buzz, :fizzbuzz, :buzz]}
    end

    test "when an invalid file is provided, returns the convert lust" do
      assert FizzBuzz.build("invalid.txt") == {:error, "Error reading file: enoent"}
    end
  end
end
