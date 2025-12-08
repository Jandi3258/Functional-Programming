mapR :: (a -> b) -> [a] -> [b]
mapR f = foldr (\x acc -> f x : acc) []
--to od konca bierze i dokleja na poczatek

mapL :: (a -> b) -> [a] -> [b]
mapL f = foldl (\acc x -> acc ++ [f x]) [] 
--to bierze od poczatku i dokleja na koniec
