defmodule Sort do
  def quick_sort([]), do: []
  def quick_sort([a]), do: [a]
  def quick_sort(list) do
    middle = Enum.at(list, div(Enum.count(list), 2))
    {list_a, list_b} = Enum.split_with(List.delete(list, middle), fn x -> x < middle end)
    Enum.concat(quick_sort(list_a), [middle])
    |> Enum.concat(quick_sort(list_b))
  end
end