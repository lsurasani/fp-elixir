defmodule GeneralStore do
  def test_data do
    [
      %{title: "Longsword", price: 50, magic: false},
      %{title: "Healing Potion", price: 60, magic: true},
      %{title: "Rope", price: 10, magic: false},
      %{title: "Dragon's Spear", price: 100, magic: true}
    ]
  end

  def filter_items(items, magic: true), do: Enum.filter(items, fn x -> x.magic end)
  def filter_items(items, magic: false), do: Enum.filter(items, fn x -> !x.magic end)
end
