import Data.Char

toInts :: String -> [Int]
toInts = map digitToInt

main = print $ toInts "30750"