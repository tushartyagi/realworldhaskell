import Data.Char (toUpper)

square [] = []
square (x:xs) = x*x : square xs

upperCase [] = []
upperCase (x:xs) = toUpper x : upperCase xs

