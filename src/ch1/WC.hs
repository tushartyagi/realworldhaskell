module Main where

main = interact countWords
       where countWords string = show (wordCount string) ++ "\n"

wordCount :: String -> Int
wordCount string = length . words $ string



