dzielniki :: (Int,[Int]) -> [Int] --udaje petle z imperatywnego programowania
dzielniki (_, []) = []
dzielniki (x, y:ys)
               | y * y > x  = ys 
               | y * y == x = y : ys
               | x `mod` y == 0 = dzielniki (x, (y+1) : y : (x `div` y) : ys)
               | otherwise = dzielniki (x, (y+1) : ys)

sumaListy :: [Int] -> Int
sumaListy [] = 0
sumaListy(x:xs) = x + sumaListy xs

czyDoskonala :: Int -> Bool
czyDoskonala x | sumaListy(dzielniki (x,[1])) == (2 * x) = True -- dzielniki(x,[1]) tworzy liste dzielnikow, musimy umiescic 1 na liscie y = 1, ys puste na poczatku
               | otherwise = False



