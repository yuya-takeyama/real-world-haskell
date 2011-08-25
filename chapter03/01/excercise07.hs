module Main where
    intersperse :: a -> [[a]] -> [a]
    intersperse delim []      = []
    intersperse delim [x]     = x
    intersperse delim (x:xs)  = x ++ [delim] ++ intersperse delim (xs)
