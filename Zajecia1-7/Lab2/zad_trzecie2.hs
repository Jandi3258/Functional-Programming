--rozwiazanie Łukasza
zadanie3a = filter (\x -> x `mod` 6 == 5 && x `mod` 7 == 3 && x `mod` 8 == 5) [1 ..]

zadanie3b =
  filter (\x -> x `mod` 6 == 5) $
    filter (\x -> x `mod` 7 == 3) $
      filter (\x -> x `mod` 8 == 5) [1 ..]

zadanie3c = [x | x <- [1 ..], x `mod` 6 == 5, x `mod` 7 == 3, x `mod` 8 == 5]
 