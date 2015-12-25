-- https://www.hackerrank.com/challenges/pascals-triangle

-- TODO rework
main :: IO ()
main = do
    input <- getLine
    let n = read input :: Int
    mapM_ putStrLn $ reverse $ pascalTriangle (n-1)
    
pascalTriangle :: Int -> [String]
pascalTriangle 0 = [pascalTriangleRow 0 0]
pascalTriangle k = pascalTriangleRow k k : pascalTriangle (k-1)


pascalTriangleRow :: Int -> Int -> String
pascalTriangleRow n r
    | r <= 0    = (calc n 0)
    | otherwise = (calc n r) ++ " " ++ pascalTriangleRow n (r-1)
    where calc n r = show ((factorial n) `div` ((factorial r) * factorial (n-r)))
    
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n-1)
