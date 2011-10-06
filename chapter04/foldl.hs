module MyFoldl where
    foldl' :: (a -> b -> b) -> a -> [a] -> b
    foldl' f zero (x:xs) = f (zero x) xs
