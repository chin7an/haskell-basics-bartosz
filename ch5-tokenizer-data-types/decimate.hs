decimate :: [a] -> [a]
decimate (x : _ : rest) = x : decimate rest
decimate (x : _) = [x]
decimate _ = []

main = print $ decimate [1, 2, 3, 4, 5]