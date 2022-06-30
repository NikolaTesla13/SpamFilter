module Main where

import Text.Printf
import Spam

main :: IO ()
main = do 
        let message = "Hello, World!"
        if isSpam message 
            then printf "\"%s\" is spam" message
            else printf "\"%s\" is not spam" message
