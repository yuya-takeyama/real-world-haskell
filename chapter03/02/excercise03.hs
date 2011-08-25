module Main where
    mean xs = sum' (xs) / fromIntegral (length' (xs))

    sum' :: (Num a) => [a] -> a
    sum'     [] = 0
    sum' (x:xs) = x + sum' (xs)

    length' :: [a] -> Int
    length' []     = 0
    length' (x:xs) = 1 + length' (xs)
