putQStrLn str = do
    putChar '"'
    putStr str
    putChar '"'
    putChar '\n'

main = putQStrLn "You can quote me."
