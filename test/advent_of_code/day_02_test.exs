defmodule AdventOfCode.Day02Test do
  use ExUnit.Case

  import AdventOfCode.Day02

  test "part1" do
    input = [
      %{min: 1, max: 3, char: ?a, password: "abcde"},
      %{min: 1, max: 3, char: ?b, password: "cdefg"},
      %{min: 2, max: 9, char: ?c, password: "ccccccccc"}
    ]

    result = part1(input)

    assert result == 2
  end

  test "part2" do
    input = [
      %{min: 1, max: 3, char: ?a, password: "abcde"},
      %{min: 1, max: 3, char: ?b, password: "cdefg"},
      %{min: 2, max: 9, char: ?c, password: "ccccccccc"}
    ]

    result = part2(input)

    assert result == 1
  end
end
