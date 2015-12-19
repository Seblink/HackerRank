-- https://www.hackerrank.com/challenges/fp-reverse-a-list

rev lst = reverse lst []
    where reverse [] lst = lst
          reverse (x:xs) lst = reverse xs (x:lst)
