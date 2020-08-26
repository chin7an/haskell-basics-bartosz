zipLst :: ([a], [b]) -> [(a, b)]
zipLst ((a : ra), (b : rb)) = (a, b) : zipLst (ra, rb)
zipLst (_, _) = []

main = print $ zipLst ([1, 2, 3, 4], "Hello")