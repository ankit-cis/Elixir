defmodule Tutorial.Recursion.ReverseNumber do
  def rev_num(0, acc), do: acc
  def rev_num(num, acc) do
    new_num = div(num, 10)
    new_acc = acc * 10 + rem(num, 10)
    rev_num(new_num, new_acc)
  end
end
