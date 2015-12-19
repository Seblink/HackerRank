-- https://www.hackerrank.com/challenges/eval-ex

solve :: Double -> Double
solve x = sum [ x**n / (product [1..n]) | n <- [0..9]]

main :: IO ()
main = getContents >>= mapM_ print. map solve. map (read::String->Double). tail. words
