fact :: Int -> Int
fact n = if n > 0 then n * fact (n - 1) else 1

fullFact :: Integer -> Integer
fullFact n = if n > 0 then n * fullFact (n - 1) else 1

main :: IO ()
main = do
    print (fact 23)
    print (fullFact 23)