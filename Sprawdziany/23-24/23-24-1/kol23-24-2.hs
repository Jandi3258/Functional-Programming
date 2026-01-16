collatz :: Integer -> [Integer]
collatz n = map liczbaKrokow [1..n]

liczbaKrokow :: Integer -> Integer
liczbaKrokow 1 = 0
liczbaKrokow x
    | x `mod` 2 == 0 = 1 + liczbaKrokow (x `div` 2)
    | otherwise = 1 + liczbaKrokow (3 * x + 1)