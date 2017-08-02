# https://hexdocs.pm/elixir/Tuple.html

# Tuples can hold any value
company = {"Aviabird", 2014}

# Store related data together to form "aggregate" value

# Lists store many individual values 
# removing individual item from lists makes them smaller
# doesn't change their meaning

# Removing name from the company would actually change their
# value and it would not remain a company

# Stored contigiously in memory data retrieval is fast
# IO.puts elem(company, 0)
# "Aviabird"

# Non enumerable since they are not collection rather an aggregate of values

# tuple_size(company)
# 2

# append
IO.puts tuple_size(company)
new_tup = Tuple.append(company, :ok)
IO.puts tuple_size(new_tup) # should be 3

# convert to list
list = Tuple.to_list(company)
IO.puts list

