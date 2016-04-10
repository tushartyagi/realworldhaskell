import Data.Char (digitToInt)

asInt xs = convert acc string
  where acc = 0
        string = xs

convert acc [] = acc
convert acc (x:xs) = let acc' = acc * 10 + digitToInt x
                     in convert acc' xs

                          
