defmodule MyList do
  def max_item(list, largest \\ 0)
  def max_item([], largest), do: largest
  def max_item([head | list], largest) when largest < head, do: max_item(list, head)
  def max_item([head | list], largest) when largest > head, do: max_item(list, largest)

  def min_item(list, smallest \\ 1_000_000)
  def min_item([], smallest), do: smallest
  def min_item([head | list], smallest) when smallest < head, do: min_item(list, smallest)
  def min_item([head | list], smallest) when smallest > head, do: min_item(list, head)
end
