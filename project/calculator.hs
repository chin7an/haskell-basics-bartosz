import Data.Char

data Operator = Plus | Minus | Times | Div
    deriving (Show, Eq)

data Token = TokOp Operator
            | TokAssign
            | TokLParen
            | TokRParen
            | TokIdent String
            | TokNum Int
            | TokSpace
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
    | c == '='      = TokAssign : tokenize cs
    | c == '('      = TokLParen : tokenize cs
    | c == ')'      = TokRParen : tokenize cs
    | isDigit c     = number c cs
    | isAlpha c     = identifier c cs
    | isSpace c     = tokenize cs
    | otherwise     = error $ "Cannot tokenize " ++ [c]

alnums :: String -> (String, String)
alnums str = als "" str
  where
    als acc [] = (acc, [])
    als acc (c : cs) | isAlphaNum c =
                          let (acc', cs') = als acc cs
                          in (c : acc', cs')
                     | otherwise = (acc, c : cs)

digits :: String -> (String, String)
digits str = digs "" str
  where
    digs :: String -> String -> (String, String)
    digs acc [] = (acc, [])
    digs acc (c : cs) | isDigit c =
                            let (acc', cs') = digs acc cs
                            in (c:acc', cs')
                      | otherwise = (acc, c : cs)

identifier :: Char -> String -> [Token]
identifier c cs = let (str, cs') = alnums cs in
                  TokIdent (c : str) : tokenize cs'

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