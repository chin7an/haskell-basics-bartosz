import Data.Char

data Operator = Plus | Minus | Times | Div
    deriving (Show, Eq)

data Token = TokOp Operator
            | TokIdent String
            | TokNum Int
    deriving (Show, Eq)

data Expression

operator :: Char -> Operator
operator c | c == '+' = Plus
           | c == '-' = Minus
           | c == '*' = Times
           | c == '/' = Div

-- arrow '->' defines a function type
-- double colons '::' introduces a type signature - it tells you what the type of a variable is
-- The string below - variable tokenize is of the type function, that takes a String argument and returns a list of Tokens
tokenize :: String -> [Token]
tokenize [] = []
tokenize (c : cs)
    | elem c "+-*/" = TokOp (operator c) : tokenize cs
    | isDigit c = TokNum (digitToInt c)  : tokenize cs
    | isAlpha c = TokIdent [c]           : tokenize cs
    | isSpace c = tokenize cs
    | otherwise = error $ "Cannot tokenize " ++ [c]

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

-- main has to return an IO action, as previously learned
-- The braces '()' is a unit, somewhat similar to void in c & c-like languages
main :: IO ()
main = print $ tokenize " 1 + 4 / x "