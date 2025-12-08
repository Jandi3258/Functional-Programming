dlugosc :: [a] -> Int
dlugosc xs = sum (map (const 1) xs)
--lub tak: dlugosc l = sum (map (\_ -> 1) l)