import Data.Char

toInts :: String -> [Int]
toInts [] = []
toInts (c : cs)
    | isDigit c = digitToInt c : toInts cs
    | otherwise = toInts cs

main = print $ toInts "2013"