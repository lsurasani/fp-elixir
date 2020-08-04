defmodule WordBuilder do
  def build(alphabet, positions) do
    Enum.map(positions, &(String.at(alphabet, &1)))
    |> Enum.join()
  end
end