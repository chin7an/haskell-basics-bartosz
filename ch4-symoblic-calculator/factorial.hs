fact :: Int -> Int
fact n = if n > 0 then n * fact (n - 1) else 1

main :: IO ()
main = print (fact 20)