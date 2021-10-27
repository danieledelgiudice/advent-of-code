defmodule AdventOfCode.Day01 do
  def part1(list) do
    [result | _] =
      for a <- list,
          b <- list,
          a + b == 2020,
          do: a * b

    result
  end

  def part2(list) do
    [result | _] =
      for a <- list,
          b <- list,
          c <- list,
          a + b + c == 2020,
          do: a * b * c

    result
  end
end
