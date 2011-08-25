module Main where
    palindrome :: [a] -> [a]
    palindrome xs = xs ++ reverse (xs)
