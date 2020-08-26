sumSquares :: [Double] -> Double
sumSquares (i : rest) = (i * i) + sumSquares rest
sumSquares [] = 0.0

norm :: [Double] -> Double
norm lst = sqrt $ sumSquares lst

main = print $ norm [1.1, 2.2, 3.3]