module Main where

import Hello (hello)

main :: IO ()
main = do
    putStrLn "Enter your name:"
    name <- getLine
    putStrLn (hello name)
