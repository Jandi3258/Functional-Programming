iloczynListy :: [Integer] -> Integer
iloczynListy [] = 1
iloczynListy (x:xs) = x * iloczynListy xs