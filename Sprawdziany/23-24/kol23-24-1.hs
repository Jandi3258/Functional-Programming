ciagi :: Integer -> [String] --a wystepuje n razy a b i c 2n
ciagi n = generuj n (2 * n)
  where
     generuj 0 0 = [""]
     generuj a 0 = ['a' : s | s <- generuj (a - 1) 0]
     generuj 0 bc = [x : s | x <- ['b','c'], s <- generuj 0 (bc - 1)]
     generuj a bc =
         ['a' : s | s <- generuj (a - 1) bc] ++
         [x : s | x <- ['b','c'], s <- generuj a (bc - 1)]

--Składnia wygląda tak: [ WYNIK | GENERATOR, WARUNEK ] warunek opcjonalny
--