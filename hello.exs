card = 88

bingo = fn
  (88) -> "Bingo"
  (_)  -> "No Win"
end

IO.puts bingo.(card)

# Matching function arguments
card = 88
win88 = fn (88) -> "Bingo" end
nowin = fn (_)  -> "no win" end
win88.(card)
nowin.(card)
