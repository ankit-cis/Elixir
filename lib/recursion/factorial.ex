defmodule Tutorial.Recursion.Factorial do
  def of(1), do: 1
  def of(num), do: num * of(num - 1)

  def of_tail_rec(num, acc \\ 1)
  def of_tail_rec(1, acc), do: acc
  def of_tail_rec(num, acc), do: of_tail_rec(num - 1, acc * num)
end


# of_tail_rec (3)
# of_tail_rec(3 - 1, 1 * 3) => of_tail_rec(2, 3)
# of_tail_rec(2 - 1, 3 * 2) => of_tail_rec(1, 6)
# match case of 1 and return 6
# of_tail_rec(1, 6)
