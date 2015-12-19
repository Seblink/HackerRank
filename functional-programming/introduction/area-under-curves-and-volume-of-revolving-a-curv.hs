-- https://www.hackerrank.com/challenges/area-under-curves-and-volume-of-revolving-a-curv

import Text.Printf (printf)

-- This function should return a list [area, volume].
solve :: Int -> Int -> [Int] -> [Int] -> [Double]
solve l r a b = [area, volume]
    where results = map (polynomial a b) (inputRange l r 0.001)
          area = sum $ map (areaRectangle 0.001) results
          volume = sum $ map (volumeCilinder 0.001) results

inputRange :: Int -> Int -> Double -> [Double]
inputRange start end step = [first,second..last]
    where first  = fromIntegral start
          second = first + step
          last   = fromIntegral end

polynomial :: [Int] -> [Int] -> Double -> Double
polynomial coefficients degrees x = sum $ map (\(c,d) -> c * x**d) (zip coef degr)
    where coef = map fromIntegral coefficients
          degr = map fromIntegral degrees
          
areaRectangle :: Double -> Double -> Double
areaRectangle width height = width * height

volumeCilinder :: Double -> Double -> Double
volumeCilinder height radius = (pi * radius**2) * height

--Input/Output.
main :: IO ()
main = getContents >>= mapM_ (printf "%.1f\n"). (\[a, b, [l, r]] -> solve l r a b). map (map read. words). lines
