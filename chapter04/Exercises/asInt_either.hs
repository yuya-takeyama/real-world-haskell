import Data.Char (digitToInt)

type ErrorMessage = String

asInt_either :: String -> Either ErrorMessage Int
asInt_either ""                 = Left "Empty string"
asInt_either (x:xs) | x == '-'  = Right (negate (asInt' xs))
                    | otherwise = Right (asInt' (x:xs))
  where
    asInt' xs = foldl f 0 xs
      where
        f x y = x * 10 + digitToInt y
