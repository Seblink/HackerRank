-- https://www.hackerrank.com/challenges/string-mingling

main :: IO ()
main = do
    p <- getLine
    q <- getLine
    putStrLn $ alternate p q
    
alternate :: [Char] -> [Char] -> [Char]
alternate [] [] = []
alternate a  [] = a
alternate [] b  = b
alternate (a:as) (b:bs) = a : b : alternate as bs
