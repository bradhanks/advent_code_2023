defmodule AdventCode do
  def get_puzzle_data(day) do
    advent_cookie = System.get_env("ADVENT_COOKIE")

    puzzle_data =
      Req.new(
        url: "https://adventofcode.com/2023/day/#{day}/input",
        headers: [{"Cookie", advent_cookie}]
      )
      |> Req.get!()
      |> Map.get(:body)

    puzzle_data
  end
end
