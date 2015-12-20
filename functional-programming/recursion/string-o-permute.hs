-- https://www.hackerrank.com/challenges/string-o-permute

main :: IO ()
main = do
    n <- getLine
    input <- getContents
    mapM_ putStrLn $ map swap $ words input
    
swap :: String -> String
swap []              = []
swap (odd:even:rest) = even : odd : swap rest
