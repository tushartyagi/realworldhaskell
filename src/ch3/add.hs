module Add
       ( myNot
       , add
       , sumList
       ) where


add a b = a + b

myNot True = False
myNot False = True

sumList [] = 0
sumList (x:xs) = x + sumList xs

mySecond xs = if null (tail xs)
              then error "List too short"
              else head (tail xs)

safeSecond :: [a] -> Maybe a
safeSecond [] = Nothing
safeSecond xs = if null (tail xs)
                then Nothing
                else Just (head (tail xs))
