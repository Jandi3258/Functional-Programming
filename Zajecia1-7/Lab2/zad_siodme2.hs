przeksztalcListe :: (Int -> Int) -> [Int] -> [Int]
przeksztalcListe _ []     = []            
przeksztalcListe f (x:xs) = f x : przeksztalcListe f xs 