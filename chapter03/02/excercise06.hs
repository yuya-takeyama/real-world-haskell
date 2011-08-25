module Main where
    sortByLength :: [[a]] -> [[a]]
    sortByLength []         = []
    sortByLength (pivot:xs) = sortByLength shorter ++ [pivot] ++ sortByLength longer
                                where
                                  shorter = [x | x <- xs, length x <  length pivot]
                                  longer  = [x | x <- xs, length x >= length pivot]
