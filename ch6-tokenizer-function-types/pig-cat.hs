cat :: [a] -> [a] -> [a]
cat [] ys = ys
cat (x : xs) ys = x : cat xs ys

pig :: String -> String
pig = cat "pig "

main = putStrLn $ pig "sty"