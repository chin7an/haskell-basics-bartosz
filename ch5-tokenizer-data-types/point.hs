data Point = Pt Double Double
  deriving Show

inc :: Point -> Point
inc (Pt x y) = Pt (x + 1) (y + 1)

p :: Point
p = Pt (-1) 3

main = print $ inc p