defmodule ChapterTwo do
  def question_one do
    bread = 0.10
    milk = 2.00
    cake = 15.00

    total = fn q_bread, q_milk, q_cake -> bread * q_bread + q_milk * milk + q_cake * cake end

    total.(10, 3, 1)
  end

  def question_two(distance, time) do
    average_velocity = fn distance, time -> distance / time end

    "Bob traveled #{distance} km in #{time} hour(s) with an average velocity of #{
      average_velocity.(distance, time)
    } km/h"
  end

  def question_three(prices) do
    apply_tax = fn price ->
      IO.puts("Price: #{Float.round(price * 1.12, 2)} - Tax: #{Float.round(price * 0.12, 2)}")
    end

    Enum.each(prices, apply_tax)
  end
end

IO.puts(ChapterTwo.question_one())
IO.puts(ChapterTwo.question_two(200, 4))
ChapterTwo.question_three([12.5, 30.99, 250.49, 18.80])

defmodule MatchstickFactory do
  def boxes(sticks) do
    large = 50
    med = 20
    small = 5

    lg = div(sticks, large)
    rem = rem(sticks, large)

    md = div(rem, med)
    rem = rem(rem, med)

    sm = div(rem, small)
    rem = rem(rem, small)

    %{big: lg, medium: md, remaining_matchsticks: rem, small: sm}
  end
end

IO.inspect(MatchstickFactory.boxes(39))
