module PutJSON
       ( putJValue ) where

-- intercalate inserts the given list in between the elements of the
-- second param
import Data.List (intercalate)
import SimpleJSON

renderJValue :: JValue -> String

-- show gives a string repr of the value. If it is already a string,
-- the quotes are escaped.
renderJValue (JString s) = show s
renderJValue (JNumber n) = show n
renderJValue (JBool True) = "true"
renderJValue (JBool False) = "false"
renderJValue JNull = "null"

renderJValue (JObject o) = "{" ++ pairs o ++ "}"
  where pairs [] = ""
        pairs ps = intercalate ", " (map renderPair ps)
        renderPair (k, v) = show k ++ ":" ++ renderJValue v

renderJValue (JArray a) = "[" ++ values a ++ "]"
  where values [] = ""
        values vs = intercalate ", " (map renderJValue vs)


putJValue :: JValue -> IO ()
putJValue v = putStrLn (renderJValue v)
