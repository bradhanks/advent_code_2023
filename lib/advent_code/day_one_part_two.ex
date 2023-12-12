# defmodule DayOnePartTwo do
#   alias DayOnePartOne, as: One

#   @number_words ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
#   @min_bytes 3

#   @ calibrations_sum() :: integer
#   def calibrations_sum do
#     One.get_calibrations()
#     |> String.split("\n", trim: true)
#     |> Enum.reduce(0, &calibration_to_int/2)
#   end

#   @spec calibration_to_int(String.t(), integer) :: integer
#   defp calibration_to_int(calibration, acc) do
#     next_calibration_int =
#       calibration
#       |> String.codepoints()
#       |> Enum.with_index()
#       |> convert_number_words()
#       |> String.replace(~r/[a-z]+/, "")
#       |> codepoints_to_int()

#     next_calibration_int + acc
#   end

#   @spec first_number_word(String.t, list) :: list
#   def first_number_word(calibration, matches) do
#     iter_count = byte_size(calibration) - 3
#     first_number_word(calibration, matches, iter_count)
#   end

#   @spec first_number_word(String.t, list, integer) :: list
#   def first_number_word(calibration, [], 0), do: []
#   def first_number_word(calibration, matches, 0), do: matches
#   def first_number_word(_calibration, 1 = matches, _iter_count), do: matches

#   def last_number_word(calibration, 0 = matches, iter_count) do
#     scan_regex =
#       Enum.join(@number_words, "|")
#       |> Regex.compile
#     Regex.scan(scan_regex, calibration, offset: iter_count)
#   end

#   @spec last_number_word(String.t, list) :: list
#   def last_number_word(calibration, matches) do
#     iter_count = byte_size(calibration) - 3
#     scan_regex =
#       Enum.join(@number_words, "|")
#       |> Regex.compile

#     last_number_word(calibration, scan_regex, matches, iter_count)
#   end

#   @doc """
#   Start working backwards:
#   If the whole string has no matches, you are done looking
#   Stop if you have found >= two because you have the last match
#   Iterating backward through the string, if you only have the two first letter left, you're done looking.
#   Any words starting

#   """
#   @spec last_number_word(String.t, Regex.t, list, integer) :: string
#   def last_number_word(calibration,  scan_regex, matches, _iter_count) when length(matches) >= 2, do: List.last(matches)
#   def last_number_word(_calibration,  _scan_regex, matches, _iter_count)when length(matches) < 2, do: ""
#   def last_number_word(_calibration,  _scan_regex, matches, 1), do: List.last(matches)

#   def last_number_word(calibration, 0 = matches, iter_count) do

#     case
#     Regex.scan(scan_regex, calibration, offset: iter_count - 1)
#   end

#   def find_all_matches(pattern, string) when is_binary(string) and is_struct(pattern, Regex) do
#     0..(String.length(string) - 1)
#     |> Enum.flat_map(fn start_pos ->
#       check_for_matches_at_position(pattern, string, start_pos)
#     end)
#   end

#   defp number_word_match_logic([]) when is_list(matches), do: []
#   defp number_word_match_logic(matches) when length(matches) == 1, do: List.first(matches)
#   defp number_word_match_logic(matches) when length(matches) > 1, do: List.first(matches) <> List.last(matches)

#   defp something(calibration, matches, split_at, iter_count) when iter_count > length(iter_count) do (first) inter_count + 1

#   defp something(calibration, matches, split_at, iter_count) when iter_count > length(iter_count) do inter_count + 1

#   defp something(calibration, matches, split_at, iter_count, direction) do
#     {first, last} = String.split_at(calibration, split_at)

#     case direction do
#       :first -> first
#       :last  -> last
#     end

#     scan_regex =
#       Enum.join(@number_words, "|")
#       |> Regex.compile
#     Regex.scan(scan_regex, last,)
#     something(calibration, matches, split_at, iter_count + 1) do
#   end

#   defp convert_number_words(indexed_calibration_list) do
#     corrected_calibration =
#       calibration
#       |>
#   end

# end
