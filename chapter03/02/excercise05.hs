module Main where
    isPalindrome :: (Eq a) => [a] -> Bool
    isPalindrome []     = True
    isPalindrome [a]    = True
    isPalindrome (x:xs) | x == last xs = isPalindrome (take ((length xs) - 1) xs)
                        | otherwise    = False
