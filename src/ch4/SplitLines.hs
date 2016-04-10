splitLines [] = []
splitLines cs =
  -- the break function will return 2 values, which we
  -- bind to pre, suf resp. and then use these values
  -- in the 'in' clause of the let expression.
  -- let..in is an expression.
  let (pre, suf) = break isLineTerminator cs
  in pre : case suf of
    ('\r':'\n':rest) -> splitLines rest
    ('\r':rest) -> splitLines rest
    ('\n':rest) -> splitLines rest
    _ -> []

isLineTerminator c = c == '\r' || c == '\n'
