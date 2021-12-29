defmodule LanguageList do
  def new(), do: []

  def add(list, language), do: List.insert_at(list, 0, language)

  def remove(list), do: List.delete_at(list, 0)

  def first(list) do
    {elem, _list} = List.pop_at(list, 0)
    elem
  end

  def count(list), do: list |> length

  def exciting_list?(list), do: Enum.member?(list, "Elixir")
end
