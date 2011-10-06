import Data.Char (digitToInt)

asInt_fold :: [Char] -> Int
asInt_fold (x:xs) | x == '-'  = negate (asInt' xs)
                  | otherwise = asInt' (x:xs)
  where
    asInt' xs = foldl f 0 xs
      where
        f x y = x * 10 + digitToInt y
