module List where
    data List a = Cons a (List a)
                | Nil
                  deriving (Show)

    fromList []     = Nil
    fromList (x:xs) = Cons x (fromList xs)

    toList Nil          = []
    toList (Cons a b)   = a : (toList b)

    cons x xs = Cons x xs
