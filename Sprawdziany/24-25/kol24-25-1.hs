wypłata :: Integer -> Integer -> Integer -> [Integer]
wypłata a b n = filter (\x -> any (\k -> (x - k * a) `mod` b == 0)[0..x `div` a])[1..n]