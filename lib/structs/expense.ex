defmodule Tutorial.Structs.Expense do
  alias Tutorial.Structs.Expense

  defstruct(
    title: "",
    date: nil,
    amount: 0,
    store: ""
  )

  @type t :: %Expense{
    title: String.t(),
    date: Date | nil,
    amount: number(),
    store: String.t()
  }

  @spec sample :: [t()]
  def sample do
    [
      %Expense{title: "Boots", date: ~D[2024-06-05], amount: 18.30, store: "Air Jordan"},
      %Expense{title: "Grocery", date: ~D[2024-07-05], amount: 18.30, store: "Dmart"},
      %Expense{title: "Clothes", date: ~D[2024-06-08], amount: 18.30, store: "Lee"},
      %Expense{title: "Watches", date: ~D[2024-06-03], amount: 18.30, store: "CIGA"},
      %Expense{title: "Phones", date: ~D[2024-06-10], amount: 18.30, store: "Apple"},
      %Expense{title: "Tablets", date: ~D[2024-07-02], amount: 18.30, store: "Samsung"},
      %Expense{title: "Laptops", date: ~D[2024-08-15], amount: 18.30, store: "Honor"},
    ]
  end

  @spec total([t()]) :: number()
  def total(expenses) do
    expenses
    |> Enum.reduce(0, fn expense, acc -> expense.amount + acc  end)
  end

  @spec sort_by_date([t()]) :: [t()]
  def sort_by_date(expenses) do
    expenses
    |> Enum.sort_by(& &1.date)
  end

  @spec add_expense(t()) :: [t()]
  def add_expense(%Expense{} = expense) do
    [expense | sample()]
  end
  # For calling above method
  # expense = %Expense{title: "Laptop1", date: ~D[2024-08-15], amount: 10.30, store: "Honor"}
  # Expense.add_expense(expense)

  def update_amount(title, amount) do
    [item] = Enum.filter(sample(), fn %{title: expense_title} -> expense_title == title  end)
    new_item = %{item | amount: amount}

    [new_item | sample() |> List.delete(item)]
  end

  # ___________________With______________________

  @users []

end
