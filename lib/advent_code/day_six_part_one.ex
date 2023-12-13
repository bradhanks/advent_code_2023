defmodule AdventCode.DaySixPartOne do
  alias AdventCode

  def calculate_ways_to_win do
    parsed_data()
    |> Enum.map(&ways_to_win/1)
    |> Enum.reduce(1, &(&1 * &2))
  end

  defp puzzle_data do
    AdventCode.get_puzzle_data(6)
  end

  defp parsed_data do
    puzzle_data() |> parse()
  end

  defp ways_to_win({time, record}) do
    Enum.reduce(0..(time - 1), 0, fn hold_time, acc ->
      speed = hold_time
      remaining_time = time - hold_time
      distance = speed * remaining_time

      if distance > record, do: acc + 1, else: acc
    end)
  end

  def parse(puzzle_data) do
    [time_line, distance_line] = String.split(puzzle_data, "\n", trim: true)

    # Binary pattern matching to remove labels and trim whitespace
    "Time: " <> times = String.trim(time_line)
    "Distance: " <> distances = String.trim(distance_line)

    # Splitting strings into lists of numbers
    times_list = String.split(times) |> Enum.map(&String.to_integer/1)
    distances_list = String.split(distances) |> Enum.map(&String.to_integer/1)

    # Zipping the lists together
    Enum.zip(times_list, distances_list)
  end
end
