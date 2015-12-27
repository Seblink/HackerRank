-- https://www.hackerrank.com/contests/projecteuler/challenges/euler001/submissions/code/4405341

main :: IO ()
main = do
    n <- getLine
    input <- getContents
    showIntList $ calculateAll $ readIntList $ words input

calculateAll :: [Int] -> [Int]
calculateAll = map calculate

calculate :: Int -> Int
calculate = sum . filter multiple3or5 . (\i -> [1..(i-1)])

multiple3or5 :: Int -> Bool
multiple3or5 n = (mod n 3 == 0) || (mod n 5 == 0)

showIntList :: [Int] -> IO ()
showIntList = mapM_ (putStrLn . show)

readIntList :: [String] -> [Int]
readIntList = map (read :: String -> Int)
