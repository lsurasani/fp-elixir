defmodule Exercises do
  def one(%{strength: strength, dexterity: dex, intelligence: intel}) do
    strength * 2 + (dex + intel) * 3
  end
end

defmodule TicTacToe do
  def winner(board) do
    case board do
      {w, w, w, _, _, _, _, _, _} -> {:winner, w}
      {_, _, _, w, w, w, _, _, _} -> {:winner, w}
      {_, _, _, _, _, _, w, w, w} -> {:winner, w}
      {w, _, _, w, _, _, w, _, _} -> {:winner, w}
      {_, w, _, _, w, _, _, w, _} -> {:winner, w}
      {_, _, w, _, _, w, _, _, w} -> {:winner, w}
      {w, _, _, _, w, _, _, _, w} -> {:winner, w}
      {_, _, w, _, w, _, w, _, _} -> {:winner, w}
      _ -> :no_winner
    end
  end
end

defmodule IncomeTax do
  def calculate(salary) do
    cond do
      salary <= 2000 -> 0
      salary <= 3000 -> 0.05 * salary
      salary <= 6000 -> 0.10 * salary
      salary > 6000 -> 0.15 * salary
    end
  end
end

total = Exercises.one(%{strength: 9, dexterity: 4, intelligence: 9})
IO.puts(total)

winner =
  TicTacToe.winner({
    :x,
    :o,
    :x,
    :o,
    :x,
    :o,
    :o,
    :x,
    :o
  })

IO.inspect(winner)

IO.puts(IncomeTax.calculate(8500))
