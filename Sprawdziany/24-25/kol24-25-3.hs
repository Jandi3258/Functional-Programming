--najpierw okreslmy gekona
data Gkt a = Gkt {
elementy :: [a],
predykat :: Gkt a -> Bool,
licznikodrzucen :: Int
}

instance Show a => Show (Gkt a) where
    show g = "Gkt " ++ show (elementy g) ++ " " ++ show (licznikodrzucen g)

-- gp: Tworzy pustego gekona
gp :: (Gkt a-> Bool)-> Gkt a
gp poczatkowy = Gkt {
    elementy = [],
    predykat = poczatkowy,
    licznikodrzucen = 0
}
--gp p = Gkt [] p 0

-- de: Dołącza element (z mechanizmem odrzucania ogona)
de :: a-> Gkt a-> Gkt a
de x lista =
     if (predykat lista) lista -- Czy predykat jest spełniony dla obecnego stanu?
     then Gkt [x] (predykat lista) (licznikodrzucen lista + 1)-- TAK: Odrzucamy ogon, zostaje tylko nowy x
     else Gkt (x : elementy lista) (predykat lista) (licznikodrzucen lista)-- NIE: Doklejamy x do listy

-- oe: Odczytuje głowę (pierwszy element)
oe :: Gkt a-> a
--glowa = head . elementy
oe g = head (elementy g)

-- ue: Usuwa głowę (pierwszy element)
ue :: Gkt a-> Gkt a
ue g 
    | null (elementy g) = g
    | otherwise = Gkt (tail (elementy g)) (predykat g) (licznikodrzucen g)

-- loo: Zwraca liczbę odrzuceń
loo :: Gkt a-> Int
loo ileOdrzucen = licznikodrzucen ileOdrzucen 

-- g2l: Zamienia gekona na listę
g2l :: Gkt a-> [a]
g2l g = elementy g