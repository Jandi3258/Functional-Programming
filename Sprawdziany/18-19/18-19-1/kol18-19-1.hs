seqIndex :: Integer -> Integer
seqIndex m = szukaj 0 1 1 1
  where
    
    szukaj :: Integer -> Integer -> Integer -> Integer -> Integer
    szukaj n an bn suma
        | suma >= m = n
        | otherwise =
          let
            
            nastepneA = n * bn - 3 * an 
            nastepneB = 3 * bn + n^2 * an - n^2
            
            nowaSuma = suma + nastepneA
          in
            szukaj (n + 1) nastepneA nastepneB nowaSuma