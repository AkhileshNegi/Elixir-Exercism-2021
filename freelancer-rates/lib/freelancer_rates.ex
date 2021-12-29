defmodule FreelancerRates do
  def daily_rate(hourly_rate), do: hourly_rate * 8 / 1

  def apply_discount(before_discount, discount),
    do: before_discount - discount * 0.01 * before_discount

  def monthly_rate(hourly_rate, discount) do
    before_discount = daily_rate(hourly_rate) * 22

    apply_discount(before_discount, discount)
    |> Float.ceil(0)
    |> trunc()
  end

  def days_in_budget(budget, hourly_rate, discount) do
    total_days = budget / monthly_rate(hourly_rate, discount) * 22

    Float.floor(total_days, 1)
  end
end
