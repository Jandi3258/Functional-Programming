data Tree a = Empty | Node a (Tree a) (Tree a) --W definicjach typów w Haskellu (data) pionowa kreska | służy do rozdzielania różnych wariantów (konstruktorów), jakie może przyjąć dany typ.
    deriving(Show, Eq)

findPath :: Eq a => a-> Tree a-> [a]
findPath x Empty = []
findPath x (Node root left right)
    | x == root = [root]
    | leftPath /= [] = root:leftPath
    | rightPath /= [] = root:rightPath
    | otherwise = []
    where
      leftPath = findPath x left
      rightPath = findPath x right
