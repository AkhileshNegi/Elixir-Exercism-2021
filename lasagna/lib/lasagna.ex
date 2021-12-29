defmodule Lasagna do
  @expected_oven_time 40

  def expected_minutes_in_oven(), do: @expected_oven_time

  def remaining_minutes_in_oven(remaining_min), do: expected_minutes_in_oven() - remaining_min

  def preparation_time_in_minutes(layers), do: layers * 2

  def total_time_in_minutes(layers, time_in_oven) do
    preparation_time_in_minutes(layers) + time_in_oven
  end

  def alarm(), do: "Ding!"
end
