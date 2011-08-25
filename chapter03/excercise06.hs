module Main where
    sortByLength :: [[a]] -> [[a]]
    sortByLength []         = []
    sortByLength (pivot:xs) = sortByLength [x | x <- xs, length x < length pivot] ++ [pivot] ++ sortByLength [x | x <- xs, length x >= length pivot]
