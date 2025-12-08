dzielniki :: Int -> [Int]
dzielniki x = [y | y <- [1..x], x `mod` y == 0]
--operator gdzie