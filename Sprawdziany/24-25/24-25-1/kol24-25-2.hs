słowa :: Integer -> Integer -> [String]
słowa m n = concatMap (\i ->
              concatMap (\j ->
                if i /= j
                  then [stworz i 'a' ++ stworz j 'b']
                  else []
              ) [0..n]
            ) [0..m]
  where
    -- Tworzy nieskończoną listę znaków c i bierze pierwsze k elementów
    stworz k c = take (fromIntegral k) (repeat c)