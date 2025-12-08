funkcja4x :: Int -> Int
funkcja4x x = 4 * x

funkcja3y :: Int -> Int
funkcja3y y = 3 * y

{- przyjmuje wartosci f(int), g(int), x, y -}
{- uzywa innych zdefiniowanych funkcji -}
sumaWartosci :: (Int -> Int) -> (Int -> Int) -> Int -> Int -> Int
sumaWartosci f g x y = (f x) + (g y)

suma :: Int -> Int -> Int
suma = sumaWartosci funkcja4x funkcja3y 
{- suma czeka na argumenty x i y, my wywolujemy funkcje majac parametry jakby funkcji dlatego 2 Inty -}