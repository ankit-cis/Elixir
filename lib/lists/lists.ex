defmodule Tutorial.Lists do
  @doc """
    documentation for Sum
  """
  def add_num([]), do: 0
  def add_num([h | t]), do: h + add_num(t)

  def add_rec_num(nums, acc \\ 0)
  def add_rec_num([], acc), do: acc
  def add_rec_num([h | t], acc), do: add_rec_num(t,  acc + h)

  @spec reverse([any()], [any()]) :: [any()]
  def reverse(elements, acc \\ [])
  def reverse([], acc), do: acc
  def reverse([h | t], acc), do: reverse(t , [h | acc])

  # ___________________Map_______________________
  # @spec map([any()], (any() -> any()), [acc]) :: [any()]
  def map(elements, func, acc \\ [])
  def map([], _, acc), do: reverse(acc)
  # or we can use this line to swap above line code
  # def map([], _, acc), do: acc |> reverse()
  def map([h | t], func, acc), do: map(t, func, [func.(h) | acc])

  #__________________concat________________________

  # [1,2,3] [4,5,6]

  defp concat_func([], dst), do: dst
  defp concat_func([h | t], dst), do: concat_func(t, [h | dst])

  @spec concat([any()], [any()]) :: [any()]
  def concat(src, dst), do: concat_func(src |> reverse(), dst)

  # __________________Flat Map______________________
  def flat_map(elements, func, acc \\ [])
  def flat_map([], _func, acc), do: acc
  def flat_map([h | t], func, acc), do: flat_map(t, func, concat(acc, func.(h)))

end
