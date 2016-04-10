module PrettyStub where

import SimpleJSON

data Doc = ToBeDefined
         deriving (Show)

string :: String -> Doc
string s = undefined

text :: String -> Doc
text s = undefined

double :: Double -> Doc
double n = undefined

(<>) :: Doc -> Doc -> Doc
a <> b = undefined

char :: Char -> Doc
char c = undefined

hcat :: [Doc] -> Doc
hcat xs = undefined

