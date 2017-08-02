# Lists in Elixir

my_list = [1, 2, :ok]

# Returns the first/last in list
> IO.puts List.first my_list
1
> IO.puts List.last my_list
ok

# Add/Remove from list
> IO.puts ['ashish'] ++ my_list
['ashish', 1, 2, :ok]
IO.puts my_list -- [1]
['ashish', 2, :ok]

# Length/Size of list
> IO.puts Kernel.length my_list
3
> IO.puts length(a)
3

# Charlist: the output would be string
> IO.puts [104,101,108,108,111]
'hello'

# List works with Enum module 
# Provides helpers that enumerate over enumerables
# Map/Reduce/Filter
> Enum.map([1, 2, 3], fn(x) -> x * 2 end)
[2, 4, 6]

> Enum.reduce([1, 2, 3, 4], fn(x, acc) -> x * acc end)
24

> Enum.filter([1, 2, 3], fn(x) -> rem(x, 2) == 0 end)
[2]



