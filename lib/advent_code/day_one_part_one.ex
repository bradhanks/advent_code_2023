defmodule AdventCode.DayOnePartOne do
  alias AdventCode, as: AC

  @spec calibrations_sum :: integer
  def calibrations_sum do
    get_calibrations()
    |> String.split("\n", trim: true)
    |> Enum.reduce(0, &calibration_to_int/2)
  end

  @spec get_calibrations :: String.t()
  def get_calibrations do
    AC.get_puzzle_data(1)
  end

  @spec calibration_to_int(String.t(), integer) :: integer
  defp calibration_to_int(calibration, acc) do
    next_calibration_int =
      calibration
      |> String.replace(~r/[a-z]+/, "")
      |> String.codepoints()
      |> codepoints_to_int()

    next_calibration_int + acc
  end

  @spec codepoints_to_int(list(String.t())) :: integer
  defp codepoints_to_int(codepoints) when is_list(codepoints) do
    (List.first(codepoints) <> List.last(codepoints))
    |> String.to_integer()
  end
end
