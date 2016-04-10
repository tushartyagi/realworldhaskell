module Fold where

-- As per the book, using foldl is not a good option because the
-- expression is evaluated lazily and therefore instead of the
-- value 6, the thunk (((0 + 1) + 2) + 3) is passed around
-- which is expensive for both space and time.
six = foldl (+) 0 [1,2,3]

-- SPACE LEAK
-- The expression `foldl (+) 0 [1..10000000]` will overflow the
-- stack because the thunk will be extremely big leading to
-- extra large space called 'space leak'.
-- For such cases, it is best to use Data.List.foldl' (notice
-- the prime symbol) as it does not create thunks. 
