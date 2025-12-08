doDziesietnego :: Int -> [Int] -> Int
doDziesietnego podstawa = 
      foldl (\acc x -> acc * podstawa + x) 0
--tego typu na sprawdzianie, wartosc poczatkowa to 0, cyfry to nasza lista 


doDziesietnego2 :: Int -> [Int] -> Int
doDziesietnego2 podstawa cyfry = 
      foldl (\acc x -> acc * podstawa + x) 0 cyfry
--tego typu na sprawdzianie, wartosc poczatkowa to 0, cyfry to nasza lista 