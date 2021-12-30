defmodule LogLevel do
  def to_label(level, legacy?) do
    cond do
      level == 0 && legacy? == false -> :trace
      level == 1 -> :debug
      level == 2 -> :info
      level == 3 -> :warning
      level == 4 -> :error
      level == 5 && legacy? == false -> :fatal
      legacy? == false -> :unknown
      true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    label = to_label(level, legacy?)

    cond do
      label == :error || label == :fatal -> :ops
      label == :unknown && legacy? == true -> :dev1
      label == :unknown && legacy? == false -> :dev2
      true -> false
    end
  end
end
