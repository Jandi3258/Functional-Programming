dlugoscPalindromow :: [String] -> Int
dlugoscPalindromow listaStringow = sum (map length (filter (\s -> s == reverse s) listaStringow))