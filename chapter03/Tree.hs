data Tree a = Node a (Tree a) (Tree a)
            | Empty
              deriving (Show)

-- I'm confusing on this...
data Tree' a = Node' a (Maybe (Tree' a)) (Maybe (Tree' a))
               deriving (Show)
