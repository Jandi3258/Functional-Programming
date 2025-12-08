sieve :: [Integer] -> [Integer]
sieve [] = []
sieve (p:xs) = p : sieve (filter (\x -> x `mod` p /= 0) xs)

primes :: [Integer]
primes = sieve [2..]  

eratosthenes :: Integer -> [Integer]
eratosthenes n
  | n < 2     = []
  | otherwise = takeWhile (<=n) primes
  