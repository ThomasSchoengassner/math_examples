defmodule MathExamplesTest do
  use ExUnit.Case
  doctest MathExamples

  describe "fibonacci" do
    test "number = 1" do
      assert MathExamples.fibonacci(1) == 1
    end

    test "number = 2" do
      assert MathExamples.fibonacci(2) == 1
    end

    test "number = 3" do
      assert MathExamples.fibonacci(3) == 2
    end

    test "number = 40" do
      assert MathExamples.fibonacci(40) == 102_334_155
    end

    test "number = 1_000" do
      assert MathExamples.fibonacci(1_000) > 1_000_000_000
    end

    test "number = 1_000_000" do
      assert MathExamples.fibonacci(1_000_000) > 1_000_000_000
    end

    test "again: number = 1_000_000" do
      assert MathExamples.fibonacci(1_000_000) > 1_000_000_000
    end

    test "one more time: number = 1_000_000" do
      assert MathExamples.fibonacci(1_000_000) > 1_000_000_000
    end

    test "the last time: number = 1_000_000" do
      assert MathExamples.fibonacci(1_000_000) > 1_000_000_000
    end

  end
end
