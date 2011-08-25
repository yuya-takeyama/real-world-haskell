data Tree a = Node a (Tree a) (Tree a)
            | Empty
              deriving (Show)

depth Empty                                        = 0
depth (Node _ Empty Empty)                         = 1
depth (Node _ left right) | leftDepth > rightDepth = 1 + leftDepth
                          | otherwise              = 1 + rightDepth
                              where
                                leftDepth  = depth left
                                rightDepth = depth right
