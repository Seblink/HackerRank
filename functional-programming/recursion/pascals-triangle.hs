-- https://www.hackerrank.com/challenges/pascals-triangle

import Data.List(intercalate)

main :: IO ()
main = do
    input <- getLine
    let n = read input :: Int
    mapM_ (putStrLn . makeReadable) $ take n pascalTriangle

makeReadable :: [Int] -> String
makeReadable = intercalate " " . map show

pascalTriangle :: [[Int]]
pascalTriangle = map row [0..]

row :: Int -> [Int]
row rowNumber = map calc [0..rowNumber]
    where calc e = (factorial rowNumber) `div` ((factorial e) * factorial (rowNumber-e))

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n-1)
