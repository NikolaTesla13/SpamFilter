module Main where

import Text.Printf
import Spam

main :: IO ()
main = do 
        contents <- readFile "res/train.txt"
        let trainingData = train contents
        let message = "Hello, World!"

        if isSpam message trainingData
            then printf "\"%s\" is spam" message
            else printf "\"%s\" is not spam" message
