data Tree a = Empty | Node a (Tree a) (Tree a)
allEven :: Tree Integer -> Bool
allEven Empty = True
allEven (Node x left right) = 
    (x `mod` 2 == 0) &&
    allEven left &&
    allEven right


data Tree a = Empty | Node a (Tree a) (Tree a)
 
czyParzyste :: Tree Integer -> Bool
czyParzyste Empty = True
czyParzyste (Node a p l) | odd a = False
                          | otherwise = czyParzyste p && czyParzyste l