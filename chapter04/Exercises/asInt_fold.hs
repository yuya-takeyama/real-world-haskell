import Data.Char (digitToInt)

asInt_fold :: [Char] -> Int
asInt_fold ""                 = error "Empty string"
asInt_fold (x:xs) | x == '-'  = negate (asInt' xs)
                  | otherwise = asInt' (x:xs)
  where
    asInt' "" = error "Invalid format"
    asInt' xs = foldl f 0 xs
      where
        f x y | '0' <= y && y <= '9' = x * 10 + digitToInt y
              | otherwise            = error ("Invalid character: " ++ [y])
