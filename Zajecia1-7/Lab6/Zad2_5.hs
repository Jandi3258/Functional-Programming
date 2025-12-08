reverseL :: [a] -> [a]
reverseL = foldl (\acc x -> x : acc) []
--doklejamy na poczatek listy

reverseR :: [a] -> [a]
reverseR = foldr (\x acc -> acc ++ [x]) []
--doklejamy na koniec foldr przetwarza liste od prawej do lewej

--przyklad: [2,6,5,4]
--reverseL [] -> [2] -> [6,2] -> [5,6,2] -> [4,5,6,2]
--reverseR [] -> [4] -> [4,5] -> [4,5,6] -> [4,5,6,2]

