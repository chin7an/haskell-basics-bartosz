cat :: [a] -> [a] -> [a]
cat [] ys = ys
cat (x : xs) ys = x : cat xs ys

main = putStrLn $ cat "Hello " "World!"