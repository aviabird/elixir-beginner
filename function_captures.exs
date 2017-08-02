# Function Captures
# notation for functions name/arity
# eg. hd/1
# capture syntax can be used to create functions
# using the capture operate `&`
# &is_nil/1
# &hd/1

# fn x -> x + 1 end # explicit anonymous function
# (  x -> x + 1   ) # remove do/end and add brackets
# &(      x + 1   ) # remove body and add capture operator
# &(     &1 + 1   ) # replace x with capture arguments
# increment = &(&1+1)

# IO.inspect increment.(23)

# Multiple operators
add_and_incr = &(&1+&2+1) # Captures first and second arg

# IO.inspect add_add_incr(2,3) 
# 5

# Works with lists as well
# list = &[&1, &2]

## Referencing Module functions
# &[module].name/arity
# &String.upcase/1
# &String.upcase(&1)



