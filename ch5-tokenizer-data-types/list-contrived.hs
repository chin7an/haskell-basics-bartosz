data List = Cons Int List | Empty

singleton :: List -> Bool
singleton (Cons _ Empty) = True
singleton _ = False

sumList :: List -> Int
sumList (Cons i rest) = i + sumList rest
sumList Empty = 0

lst = Cons 2 (Cons 4 (Cons 6 Empty))

main = do
  print $ singleton Empty
  print $ singleton $ Cons 2 Empty
  print $ singleton $ Cons 3 $ Cons 4 Empty
  print $ sumList lst
