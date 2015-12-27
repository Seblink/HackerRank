-- https://www.hackerrank.com/contests/projecteuler/challenges/euler001/submissions/code/4405341

import Data.List(union)

main :: IO ()
main = do
    n <- getLine
    input <- getContents
    showIntList $ calculateAll $ readIntList $ words input

calculateAll :: [Int] -> [Int]
calculateAll = map calculate

calculate :: Int -> Int
calculate n = sum $ union [3,6..(n-1)] [5,10..(n-1)]

showIntList :: [Int] -> IO ()
showIntList = mapM_ (putStrLn . show)

readIntList :: [String] -> [Int]
readIntList = map (read :: String -> Int)
