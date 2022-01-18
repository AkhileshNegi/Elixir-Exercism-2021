defmodule NameBadge do
  def print(id, name, department) do
    id = if is_nil(id), do: "", else: "[#{id}] - "
    department = if is_nil(department), do: "OWNER", else: String.upcase(department)
    "#{id}#{name} - #{department}"
  end
end
