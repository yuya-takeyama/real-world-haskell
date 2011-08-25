data Tree a = Node a (Tree a) (Tree a)
            | Empty
              deriving (Show)

-- has no children
insert (Node x Empty Empty) y | y < x     = Node x (Node y Empty Empty) Empty
                              | otherwise = Node x Empty (Node y Empty Empty)

-- has a child on the left
insert (Node x node Empty) y | y < x     = Node x (node `insert` y) Empty
                             | otherwise = Node x node (Node y Empty Empty)

-- has a child on the right
insert (Node x Empty node) y | y < x     = Node x (Node y Empty Empty) node
                             | otherwise = Node x Empty (node `insert` y)

-- has 2 children
insert (Node x left right) y | y < x     = Node x (left `insert` y) right
                             | otherwise = Node x left (right `insert` y)

-- Try following on your GHCi
-- (Node 5 Empty Empty) `insert` 3 `insert` 6 `insert` 4 `insert` 2 `insert` 10
