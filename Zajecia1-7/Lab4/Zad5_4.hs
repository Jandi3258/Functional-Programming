slowaDlugosci :: Char -> Char -> Integer -> [String]
slowaDlugosci _ _ n | n < 0 = [] --podstawa rekurencji
slowaDlugosci _ _ 0 = [""]
slowaDlugosci x y z =
   let krotszeslowa = slowaDlugosci x y (z - 1)
   in [c : slowo | slowo <- krotszeslowa, c <- [x, y]]

--tego typu zad na sprawdzian

slowaDlugosci2 :: Char -> Char -> Integer -> [String]
slowaDlugosci2 a b 0 = [""]
slowaDlugosci2 a b n = [x:slowo | x <- [a,b], slowo <- slowaDlugosci2 a b (n-1)]
 
slowaDlugosci3 :: Char -> Char -> Integer -> [String]
slowaDlugosci3 a b 0 = [""]
slowaDlugosci3 a b n = concatMap (\xs -> [a:xs, b:xs]) (slowaDlugosci3 a b (n-1))