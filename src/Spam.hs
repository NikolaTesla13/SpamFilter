module Spam where 

import Data.Map (Map)
import qualified Data.Map as Map

train :: String -> Map String Float
train datasetContents = do 
                        let dataLines = lines datasetContents
                        Map.empty

isSpam :: String -> Map String Float -> Bool
isSpam message trainingData = True

-- Pr(S|W) = Pr(W|S) / (Pr(W|S) + Pr(W|H)) 
-- P = P1*P2*...*Pn / (P1*P2*...*Pn + (1-P1)*(1-P2)*...*(1-Pn))
-- https://en.wikipedia.org/wiki/Naive_Bayes_spam_filtering