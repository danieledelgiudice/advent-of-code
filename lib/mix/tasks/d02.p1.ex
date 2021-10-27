defmodule Mix.Tasks.D02.P1 do
  use Mix.Task

  import AdventOfCode.Day02

  @shortdoc "Day 02 Part 1"
  def run(args) do
    input =
      "inputs/day_02.txt"
      |> File.stream!([], :line)
      |> Stream.map(&String.trim/1)
      |> Stream.map(&String.split(&1, ~r/[-: ]/, trim: true))
      |> Enum.map(fn [a, b, c, d] ->
        %{
          min: String.to_integer(a),
          max: String.to_integer(b),
          char: Enum.at(String.to_charlist(c), 0),
          password: d
        }
      end)

    if Enum.member?(args, "-b"),
      do: Benchee.run(%{part_1: fn -> input |> part1() end}),
      else:
        input
        |> part1()
        |> IO.inspect(label: "Part 1 Results")
  end
end
