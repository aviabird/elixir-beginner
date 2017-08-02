# Maps
# Key-Value data structure in Elixir
# Key can be anything and so can value
# 

## Basics
# map = %{:a => 1, :b => 2}
# map = %{a: 1, b: 2}  # shorthand notation
# map[:a] 1 # 1
# map[:z]   # nil, would return nil silently
# map.a     # works only when a is an atom
# map.z     # would fail explicitly
# Map.fetch(map, :a) # also works using module
# Always use explicit notation 















## Patern Matching
# %{} = %{a: 1, b: 2}
# %{b: 2} = %{a: 1, b: 2}
# %{a: a, b: 2} = %{a: 1, b: 2}
# a = 1







## Map module
# Map.get(%{a: 1, b: 2}, :b)
# Map.to_list(%{a: 1, b: 2})



# Updating existing elements
# map = %{a: 1, b: 2, c: 3}
# new_map = %{ map | b: "new_val"}
# new_map = %{ map | z: "new_val"} # fails explicit


# New map
# Map.new([{:b, 1}, {:a, 2}])
# %{a: 2, b: 1}


# get_and_update | get_and_update! (explicit)
# Map.get_and_update(%{a: 1}, :a, fn val ->
#  {val, "test"}
# end)
# {1, %{a: "test"}}


# get keys
# Map.keys(%{a: 1, b: 2})
# [:a, :b]



## Modules & Kernel
# Kernel.is_map(map) # Check if map
# Kernel.map_size(map) # no of key-value pairs
