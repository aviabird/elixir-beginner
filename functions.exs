# Named functions
# They must be created inside a module

defmodule Cook do
  # Normal functions
  def boil(food) do
    f = "Boil #{food}"
    String.upcase(f)
  end

  # singleline function
  def sausage, do: boil("sausage")

  # public functions
  def cook(meat \\"Beacon" , veg), do: _cook("Grill", meat) <> _cook("boil", veg)

  # private function
  defp _cook(cook, food) do
    "#{cook} #{food} "
  end

  # Multiple clauses
  def name,           do: name("Ashish", "Singh")
  def name(0),        do: name("Avia", "bird")
  def name(f_name),   do: name("avia", f_name)
  def name(f_n, l_n), do: "#{f_n} #{l_n}"

  # Guard
  def quality(rank) when rank == 0,          do: "No rank"
  def quality(rank) when is_integer(rank),   do: "Rank is num"
  def quality(rank) when is_atom(rank),      do: "Rank is atom"
  def quality(rank) when is_binary(rank),    do: quality("Rank", rank)
  def quality(text, rank),                    do: "#{text} #{rank}"
end

# Functions
# IO.inspect Cook.boil('steak')
# IO.inspect Cook.sausage

# Public private
# IO.inspect Cook.cook "steak", "pasta"
# IO.inspect Cook._cook "steak", "pasta" # Error

# Multiple clauses
# IO.inspect Cook.name
# IO.inspect Cook.name(0)
# IO.inspect Cook.name("ashish")
# IO.inspect Cook.name("ashish", "singh")

# Guard Clause
# IO.inspect Cook.quality(0)
# IO.inspect Cook.quality(2)
# IO.inspect Cook.quality(:ok)
# IO.inspect Cook.quality("Testing rank")
# IO.inspect Cook.quality("rank", 1)

# Default arguments
# IO.inspect Cook.cook("Beans")             # Uses default arguments
# IO.inspect Cook.cook("Sausage", "Beans")  # Without them

# More advanced function guards and overlapping omitted



# Piping functions similar to unix pipe
IO.puts "trebor"
  |> String.upcase
  |> String.reverse
