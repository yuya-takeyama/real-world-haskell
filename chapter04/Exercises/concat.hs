concat' :: [[a]] -> [a]
concat' xs = foldr f [] xs
  where
    f x y = x ++ y
