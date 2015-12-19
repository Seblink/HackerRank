-- https://www.hackerrank.com/challenges/jumping-bunnies

main :: IO ()
main = do 
    n <- readLn :: IO Int
    input <- getContents
    let numbers = map read (words input) :: [Int]
    print $ lcm' numbers

-- Least common divisor for array of numbers.
lcm' :: Integral a => [a] -> a
lcm' = foldl1 lcm

