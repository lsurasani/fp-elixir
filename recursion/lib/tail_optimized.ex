defmodule TailOptimized do
  def sum_until(n, acc \\ 0)
  def sum_until(0, acc), do: acc
  def sum_until(n, acc), do: sum_until(n - 1, acc + n)

  def sum_list(list, acc \\ 0)
  def sum_list([], acc), do: acc
  def sum_list([head | tail], acc), do: sum_list(tail, head + acc)

  def descending([]), do: []
  def descending([a]), do: [a]

  def descending(list) do
    half_point = div(Enum.count(list), 2)
    {list_a, list_b} = Enum.split(list, half_point)
    merge(descending(list_a), descending(list_b))
  end

  def merge(list_a, list_b, acc_list \\ [])
  def merge([], [], acc_list), do: acc_list

  def merge(list_a = [head_a | tail_a], [], acc_list = [head_b | tail_b]) when head_a > head_b, do: merge(tail_b, [], [acc_list | head_b]) 

  def merge(list_a = [head_a | tail_a], [], acc_list = [head_b | tail_b]) when head_a <= head_b, do: merge(tail_a, [], [head_a | acc_list]) 
  def merge(list_a = [head | tail], [], acc_list) do
    IO.inspect list_a, charlists: :as_lists
    IO.inspect acc_list, charlists: :as_lists
    [head | acc_list]
  end
  def merge([], list_b = [head | tail], acc_list) do
    IO.inspect list_b, charlists: :as_lists
    IO.inspect acc_list, charlists: :as_lists
    merge([head], tail, acc_list)
  end
  def merge(list_a = [head_a | _], [head_b | tail_b], acc_list) when head_a > head_b, do: merge(list_a, tail_b, [head_b | acc_list])
  def merge([head_a | tail_a], list_b = [head_b | _], acc_list) when head_a <= head_b, do: merge(list_b, tail_a, [head_a | acc_list])
end