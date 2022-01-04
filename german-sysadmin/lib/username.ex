defmodule Username do
  def sanitize(username) do
    username
      |> Enum.map(fn char ->
      case char do
        char when char in ?a..?z -> char
        char when char == ?_ -> ?_
        char when char == ?ä -> 'ae'
        char when char == ?ö -> 'oe'
        char when char == ?ü -> 'ue'
        char when char == ?ß -> 'ss'
        _ -> ''
      end
    end)
    |> List.flatten()
  end
end
