defmodule BirdCount do
  def today(list), do: List.first(list)

  def increment_day_count(list) when length(list) == 0, do: [1]
  def increment_day_count(list), do: List.update_at(list, 0, &(&1 + 1))

  def has_day_without_birds?(list), do: Enum.member?(list, 0)

  def total(list), do: Enum.reduce(list, 0, &(&2 + &1))

  def busy_days(list), do: Enum.reduce(list, 0, &if(&1 > 4, do: &2 + 1, else: &2))
end
