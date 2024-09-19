defmodule Tutorial.Recursion.SumDigits do
  def upto(0), do: 0

  def upto(num) do
    num + upto(num - 1)
  end
  def upto_tail_rec(num, acc \\ 0)
  def upto_tail_rec(0, acc), do: acc

  def upto_tail_rec(num, acc) do
    upto_tail_rec(num - 1, acc + num)
    IO.puts(acc)
  end
end

# acc = 0
# num = 3
# upto_tail_rec(num - 1, acc + num)
# upto_tail_rec(3 -1,  0 + 3) => upto_tail_rec(2, 3)
# upto_tail_rec(2 -1,  3 + 2) => upto_tail_rec(1, 5)
# upto_tail_rec(1 -1,  5 + 1) => upto_tail_rec(0, 6)
