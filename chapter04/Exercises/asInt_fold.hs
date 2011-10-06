import Data.Char (digitToInt)

asInt_fold :: [Char] -> Int
asInt_fold xs = foldl f 0 xs
  where
    f x y = x * 10 + digitToInt y
