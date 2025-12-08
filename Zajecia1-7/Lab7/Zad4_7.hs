data Tree a = Empty | Node a (Tree a) (Tree a)

preorder :: Tree a -> [a]
preorder Empty = []
preorder (Node x left right) = 
    [x] ++ preorder left ++ preorder right

inorder :: Tree a -> [a]
inorder Empty = []
inorder (Node x left right) = 
    inorder left ++ [x] ++ inorder right


postorder :: Tree a -> [a]
postorder Empty = []
postorder (Node x left right) = 
    postorder left ++ postorder right ++ [x]

treeEx :: Tree Integer
treeEx = Node 10 
            (Node 5 (Node 2 Empty Empty) (Node 8 Empty Empty))
            (Node 15 Empty Empty)

