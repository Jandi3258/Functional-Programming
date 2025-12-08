merge:: [Int] -> [Int] -> [Int]

merge [] ys = ys
merge xs [] = xs

merge (x:xs) (y:ys) | x <= y = x : merge xs (y:ys) | otherwise = y : merge (x:xs) ys
{- x to poczatek 1 listy, xs reszta listy, y to poczatek 2 listy, ys to reszta 2 listy -}

mergeSort :: [Int] -> [Int]

mergeSort [] = []

mergeSort [x] = [x]

mergeSort xs = 
   let 
            n = length xs 
            k = n `div` 2
            left = take k xs
            right = drop k xs
   in
            merge (mergeSort left) (mergeSort right)

{- wywolania dla mniejszych list -}