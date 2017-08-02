# Keyword list
# List of tuples where first item in tuple is
# an ATOM

# Basic
# List of tuple pairs
# k = [{:a, 1}, {:b, 2}]
# k = [a: 1, b: 2]



# Like lists
# [a: 1, b: 2] ++ [c: 3]
# [a: 1, b: 2] -- [b: 2]




# Keyword lists are slow
# Same key names unlike maps
# Generally not used for partern matching.




# Uses
# Passing options to functions
# cook = fn (heat, foods) -> Keyword.values(foods) |> Enum.map(&(heat <> &1)) end
# cook.("Heat ", [meat: "sausage", veg: "beans"])
# in such a call we can omit the square brackets

## Option passing like "if"
# if false, do: :this, else: :that 
# if(false, [do: :this, else: :that])







