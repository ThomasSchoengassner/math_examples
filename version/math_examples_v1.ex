defmodule MathExamples2 do
  @moduledoc """
  Documentation for `MathExamples`.
  """


  #defp add_nacci2(0, series), do: series
  #defp add_nacci2(count, series) do
  #  series = [series |> Enum.take(2) |> Enum.sum | series]
  #  add_nacci2(count-1, series)
  #end

  def add_nacci([_head | tail], series) do
    series = [series |> Enum.take(2) |> Enum.sum | series]
    MathExamples2.add_nacci(tail,series)
  end
  def add_nacci([], series), do: series



  def fibonacci(count) do

    series = [1,1]

    #Enum.map(1..count-2, fn _i -> [Enum.take(series,2) |> Enum.sum | series] end)
    # Enum.map packt das Ergebnis zusammen in eine Liste -> Es entsteht hier eine Liste aus Listen
    #IO.inspect(series, label: "Ergebnis mit Enum.map")

    counts = Enum.to_list(1..count-2)
    #count2 = count - 2

    series = case count do
      1 -> series
      2 -> series
      _ -> MathExamples2.add_nacci(counts,series)
#      _ -> MathExamples.add_nacci(count2,series)

    end

    IO.inspect(hd(series), label: "n=#{count}")
    hd(series)
  end

end

#count=40
#IO.inspect(MathExamples2.fibonacci(count), label: "n=#{count}")
