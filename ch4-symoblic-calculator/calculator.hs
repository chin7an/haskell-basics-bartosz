data Token
data Expression

-- arrow '->' defines a function type
-- double colons '::' introduces a type signature - it tells you what the type of a variable is
-- The string below - variable tokenize is of the type function, that takes a String argument and returns a list of Tokens
tokenize :: String -> [Token]
tokenize = undefined

parse :: [Token] -> Expression
parse = undefined

evaluate :: Expression -> Double
evaluate = undefined

loop :: Int -> IO ()
loop n = do
    if n < 5
    then do
        putStrLn (show n)
        loop (n + 1)
    else
        return ()

-- main always has to return an IO action, as previously learned
-- The braces '()' is a unit, somewhat similar to void in c & c-like languages
main :: IO ()
main = loop 0
    