{- Uzycie guards zamiast dopasowania do wzorca -}
ocena :: Double -> String
ocena x | x == 2.0 = "niezaliczone" | x == 5.0 = "brawo!" | otherwise = "wpisane masz " ++ show x
