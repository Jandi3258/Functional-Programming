wyniki :: Double -> [(String,Double)] -> [(String,String)]
wyniki max scores = map (przetworzPare) scores
  where --zeby bylo widac zmienna max! bez tego ani rusz

   usunSpacje :: String -> String
   usunSpacje s = reverse (dropWhile (== ' ') (reverse (dropWhile (== ' ') s)))

   przetworzPare :: (String, Double) -> (String, String)
   przetworzPare (imie, pkt) = (usunSpacje imie, wyliczOcene pkt)

   wyliczOcene :: Double -> String
   wyliczOcene p
       | p < 0 || p > max = "Nieprawidlowe dane"
       | p > 0.9 * max = "5.0"
       | p > 0.8 * max = "4.5"
       | p > 0.7 * max = "4.0"
       | p > 0.6 * max = "3.5"
       | p > 0.5 * max = "3.0"
       | otherwise = "2.0"