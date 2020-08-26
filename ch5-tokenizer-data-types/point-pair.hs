inc :: (Int, Int) -> (Int, Int)
inc (x, y) = ((x + 1), (y + 1))

p :: (Int, Int)
p = (-1, 3)

main = print $ inc p