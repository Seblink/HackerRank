-- https://www.hackerrank.com/contests/projecteuler/challenges/euler005

main :: IO ()
main = do
    n <- getLine
    input <- getContents
    showIntList $ calculateAll $ readIntList $ words input
    
calculateAll :: [Int] -> [Int]
calculateAll = map (lcmList . (\i -> [1..i]))
    
lcmList :: [Int] -> Int
lcmList = foldl1 lcm

showIntList :: [Int] -> IO ()
showIntList = mapM_ (putStrLn . show)

readIntList :: [String] -> [Int]
readIntList = map (read :: String -> Int)
