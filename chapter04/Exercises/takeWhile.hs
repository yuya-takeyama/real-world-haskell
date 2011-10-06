takeWhile' :: (a -> Bool) -> [a] -> [a]
takeWhile' _ []                 = []
takeWhile' p (x:xs) | p x       = x : takeWhile' p xs
                    | otherwise = []

takeWhile'' :: (a -> Bool) -> [a] -> [a]
takeWhile'' p xs = foldr f [] xs
  where
    f x acc | p x       = x : acc
            | otherwise = []
