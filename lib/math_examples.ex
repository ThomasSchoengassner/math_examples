defmodule MathExamples do
  @moduledoc """
  Documentation for `MathExamples`.
  """

  # done: add {:memoize, "~> 1.3"} to mix.exs
  use Memoize

  defp add_nacci(0, series), do: series

  defp add_nacci(count, {a, b}) do
    series = {a + b, a}
    add_nacci(count - 1, series)
  end

  defmemo fibonacci(0), do: 0
  defmemo fibonacci(1), do: 1
  defmemo fibonacci(2), do: 1

  defmemo fibonacci(count) do
    add_nacci(count - 2, {1, 1})
    |> elem(0)
  end

  # ------------ Inspiration vom Heiko
  # Rekursiv
  # def fibonacci_recursive(1), do: 1
  # def fibonacci_recursive(2), do: 1

  # def fibonacci_recursive(number) when is_integer(number) and number > 0 do
  #   fibonacci_recursive(number - 1) + fibonacci_recursive(number - 2)
  # end

  # defp generate_fibonacci_sequence() do
  #   Stream.iterate({0, 1}, fn {n2, n1} -> {n1, n2 + n1} end)
  # end
end

# Zeit und Datum abfragen
# DateTime.utc_now() |> DateTime.to_unix(:millisecond)
# :calendar.local_time

# t1 = :os.system_time(:millisecond)

# count = 1_000
# IO.inspect(MathExamples.fibonacci(count), label: "n=#{count}")

# t2 = :os.system_time(:millisecond)
# IO.inspect((t2 - t1) / 1000, label: "seconds")
