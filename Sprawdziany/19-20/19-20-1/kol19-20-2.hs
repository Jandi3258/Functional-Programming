bp :: Int -> [String]
bp n
    | n `mod` 4 /= 0 = []  -- Warunek konieczny: n musi być podzielne przez 4
    | otherwise      = [ s ++ reverse s | s <- generujPolowki k k ]
  where
    k = n `div` 4
    generujPolowki :: Int -> Int -> [String]
    generujPolowki 0 0 = [""]
    generujPolowki x y = wariantx ++ warianty
      where
        wariantx 
         | x > 0 = map ('a':) (generujPolowki (x - 1) y) 
         | otherwise = []

        warianty
         | y > 0 = map ('b':) (generujPolowki x (y - 1)) 
         | otherwise = []