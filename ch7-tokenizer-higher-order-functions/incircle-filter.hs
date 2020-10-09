-- Problem statement isn't clear, but the circle of radius 2 is
-- centered at origin. So check for points where the hypotenuse
-- is at most of length 2 - pythagoras theorem
type Point = (Double, Double)
inCircle2 :: [Point] -> [Point]
inCircle2 = filter (\(a, b) -> sqrt (a*a + b*b) <= 2.0)

main = print $ inCircle2 [(0, 0), (2, -2), (1, -1), (1.9, 0.1), (10, 1)]