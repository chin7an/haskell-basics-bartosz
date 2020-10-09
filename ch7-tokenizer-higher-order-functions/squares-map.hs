squares :: [Int] -> [Int]
squares = map (\i -> i * i)

main = print $ squares [1..100]