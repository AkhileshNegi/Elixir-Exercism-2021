defmodule FreelancerRates do
  @daily_rate 8.0
  @monthly_billable_days 22

  def daily_rate(hourly_rate), do: hourly_rate * @daily_rate

  def apply_discount(before_discount, discount),
    do: before_discount - discount * 0.01 * before_discount

  def monthly_rate(hourly_rate, discount) do
    before_discount = daily_rate(hourly_rate) * @monthly_billable_days

    apply_discount(before_discount, discount)
    |> ceil()
  end

  def days_in_budget(budget, hourly_rate, discount) do
    total_days = budget / monthly_rate(hourly_rate, discount) * @monthly_billable_days

    Float.floor(total_days, 1)
  end
end
