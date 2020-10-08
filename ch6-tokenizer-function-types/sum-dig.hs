import Data.Char

toInts :: String -> [Int]
toInts [] = []
toInts (c : cs) = digitToInt c : toInts cs

sumDig :: String -> Int
sumDig str = acc 0 (toInts str)

acc :: Int -> [Int] -> Int
acc a [] = a
acc a (i : is) = acc (a + i) is

main = print $ sumDig "30750"