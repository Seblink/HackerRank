-- https://www.hackerrank.com/challenges/fp-hello-world-n-times

import Control.Monad(replicateM)

hello_worlds n = replicateM n (putStr "Hello World\n") 

-- This part is related to the Input/Output and can be used as it is
-- Do not modify it
main = do
   n <- readLn :: IO Int
   hello_worlds n
