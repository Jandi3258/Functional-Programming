sevens :: Int -> [Int]
sevens n = take n [x | x <- [1..], zredukuj x == 7]
  where
    sumaCyfr :: Int -> Int
    sumaCyfr 0 = 0
    sumaCyfr k = (k `mod` 10) + sumaCyfr (k `div` 10)

    zredukuj :: Int -> Int
    zredukuj k
      | k < 10    = k
      | otherwise = zredukuj (sumaCyfr k)

--drugie latwiejsze podejscie
--sevens :: Int -> [Int]
--sevens n = take n [7, 16 ..]