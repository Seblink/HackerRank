-- https://www.hackerrank.com/challenges/fp-filter-positions-in-a-list

f :: [Int] -> [Int]
f []        = []
f (x:y:lst) = y : f lst

-- This part deals with the Input and Output and can be used as it is. Do not modify it.
main = do
   inputdata <- getContents
   mapM_ (putStrLn. show). f. map read. lines $ inputdata

