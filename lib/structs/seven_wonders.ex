defmodule Tutorial.Structs.SevenWonders do
  defstruct name: "",  country: ""
  alias Tutorial.Structs.SevenWonders

  @type t :: %SevenWonders{
    name: String.t(),
    country: String.t()
  }

  # ________________________All_____________________________

  @spec all :: [t()]
  def all() do
    [
      %SevenWonders{name: "Taj Mahal", country: "India"},
      %SevenWonders{name: "The Great Wall of China", country: "China"},
      %SevenWonders{name: "Petra", country: "Jordan"},
      %SevenWonders{name: "The Colosseum,", country: "Italy"},
      %SevenWonders{name: "Christ the Redeemer", country: "Brazil"},
      %SevenWonders{name: "Chichén Itzá", country: "Mexico"},
      %SevenWonders{name: "Machu Picchu", country: "Peru"},
    ]
  end

  # ________________________Print Names_______________________

  @spec print_names([t()]) :: :ok
  def print_names(wonders) do
    wonders
    |> Enum.each(fn %{name: name} -> IO.puts(name)  end)
  end

  # ________________________Filter_______________________

  def filter_by_country(wonders, country) do
    wonders
    |> Enum.filter(fn %{country: country_name} ->  country_name == country end)
  end

end
