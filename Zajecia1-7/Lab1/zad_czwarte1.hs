stirling :: Int -> Int -> Int
-- 1. Przypadek bazowy s(0, 0) = 1
stirling 0 0 = 1

-- 2. Przypadek brzegowy k > n
stirling n k | k > n = 0

-- 3. Przypadek brzegowy s(n, 0) = 0
stirling n 0 = 0 

-- 4. Przypadek brzegowy s(n, n) = 1
stirling n k | k == n = 1

-- 5. Przypadek rekurencyjny (dla n > k > 0)
stirling n k = (n - 1) * stirling (n - 1) k + stirling (n - 1) (k - 1)