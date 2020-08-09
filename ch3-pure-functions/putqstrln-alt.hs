putQStrLn str = do
    putChar '"'
    putStr str
    putChar '"'
    putChar '\n'

main = do
    putStrLn "Please enter a line:"
    str <- getLine
    putQStrLn str
