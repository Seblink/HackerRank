-- https://www.hackerrank.com/contests/projecteuler/challenges/euler001/submissions/code/4405341

main :: IO ()
main = do
    n <- getLine
    input <- getContents
    showIntList $ calculateAll $ readIntList $ words input

calculateAll :: [Int] -> [Int]
calculateAll = map calculate

calculate :: Int -> Int
calculate n = (sum [1..(div (n-1) 3)]) * 3 + (sum [1..(div (n-1) 5)]) * 5 - (sum [1..(div (n-1) 15)]) * 15

showIntList :: [Int] -> IO ()
showIntList = mapM_ (putStrLn . show)

readIntList :: [String] -> [Int]
readIntList = map (read :: String -> Int)
