defmodule AdventOfCode.Day02 do
  defp is_valid_p1(entry) do
    n =
      entry.password
      |> String.to_charlist()
      |> Enum.count(fn c -> c == entry.char end)

    entry.min <= n && n <= entry.max
  end

  defp is_valid_p2(entry) do
    charlist = String.to_charlist(entry.password)

    n =
      [entry.min, entry.max]
      |> Enum.map(fn i -> Enum.at(charlist, i - 1) end)
      |> Enum.count(fn c -> c == entry.char end)

    n == 1
  end

  def part1(list) do
    Enum.count(list, &is_valid_p1/1)
  end

  def part2(list) do
    Enum.count(list, &is_valid_p2/1)
  end
end
