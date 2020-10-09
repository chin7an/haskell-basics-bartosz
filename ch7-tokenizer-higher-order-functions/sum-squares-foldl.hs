squares :: [Int] -> Int
squares = foldl (\acc i -> acc + i * i) 0

main = print $ squares [3, 4, 5]