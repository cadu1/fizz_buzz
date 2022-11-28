defmodule FizzBuzz do
  def build(fileName) do
    fileName
    |> File.read()
    |> handleFile()
  end

  defp handleFile({:ok, result}) do
    result =
      result
      |> String.replace("\n", "")
      |> String.split(",")
      |> Enum.map(&convert_and_evaluate_numbers/1)

    {:ok, result}
  end

  defp handleFile({:error, reason}), do: {:error, "Error on reading the file: #{reason}"}

  defp convert_and_evaluate_numbers(number) do
    number
    |> String.to_integer()
    |> evaluate_number()
  end

  defp evaluate_number(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :fizzbuzz
  defp evaluate_number(number) when rem(number, 3) == 0, do: :fizz
  defp evaluate_number(number) when rem(number, 5) == 0, do: :buzz
  defp evaluate_number(number), do: number
end
