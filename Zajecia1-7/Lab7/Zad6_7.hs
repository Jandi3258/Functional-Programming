data Macierz = Macierz Int Int Int Int

instance Show Macierz where
    show (Macierz a b c d) = 
        "| " ++ show a ++ " " ++ show b ++ " |\n" ++
        "| " ++ show c ++ " " ++ show d ++ " |"

dodaj :: Macierz -> Macierz -> Macierz
dodaj (Macierz a1 b1 c1 d1) (Macierz a2 b2 c2 d2) = 
    Macierz (a1 + a2) (b1 + b2) (c1 + c2) (d1 + d2)

mnoz :: Macierz -> Macierz -> Macierz
mnoz (Macierz a1 b1 c1 d1) (Macierz a2 b2 c2 d2) = 
    Macierz (a1*a2 + b1*c2) (a1*b2 + b1*d2)
            (c1*a2 + d1*c2) (c1*b2 + d1*d2)

main :: IO ()
main = do
    let m1 = Macierz 1 2 3 4
    let m2 = Macierz 2 0 1 2
    
    putStrLn "Macierz 1:"
    print m1
    
    putStrLn "\nSuma:"
    print (dodaj m1 m2)
    
    putStrLn "\nIloczyn:"
    print (mnoz m1 m2)