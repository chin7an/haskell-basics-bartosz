rev :: [a] -> [a]
rev = foldl (\rstr c -> c : rstr) []

main = print $ rev "spot on"