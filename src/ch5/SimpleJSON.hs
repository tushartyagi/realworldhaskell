module SimpleJSON
       (
         JValue(..)
       , getString
       , getInt
       , getDouble
       , getBool
       , getArray
       , isNull
       ) where

data JValue = JString String
            | JNumber Double
            | JBool Bool
            | JNull
            | JObject [(String, JValue)]
            | JArray [JValue]
            deriving (Eq, Ord, Show)

getString :: JValue -> Maybe String
getString (JString s) = Just s
getString _ = Nothing
  
getInt (JNumber n) = Just (truncate n)
getInt _ = Nothing

getDouble (JNumber n) = Just n
getDouble _ = Nothing

getBool (JBool b) = Just b
getBool _ = Nothing

getObject (JObject b) = Just b
getObject _ = Nothing

getArray (JArray b) = Just b
getArray _ = Nothing

isNull v = v == JNull
