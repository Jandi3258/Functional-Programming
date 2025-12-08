dlaKazdego :: (a -> Bool) -> [a] -> Bool
dlaKazdego warunek = foldr (\x acc -> warunek x && acc) True


istnieje :: (a -> Bool) -> [a] -> Bool
istnieje warunek = foldr (\x acc -> warunek x || acc) False

dlaKazdegoL :: (a -> Bool) -> [a] -> Bool
dlaKazdegoL f xs = foldl (\x y  -> x && f y ) True xs
 
istniejeL :: (a -> Bool) -> [a] -> Bool
istniejeL f xs = foldl (\x y  -> x || f y ) False xs
