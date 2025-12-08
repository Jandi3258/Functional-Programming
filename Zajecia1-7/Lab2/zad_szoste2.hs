podzbioryZX :: Integer -> [[Integer]] -> [[Integer]]
podzbioryZX  _ [] = []
podzbioryZX  x (xs:xss) = (x : xs) : podzbioryZX  x xss
 
podlisty :: [Integer] -> [[Integer]]
podlisty []  = [[]]
podlisty (x:xs) = podzbioryZX  x (podlisty xs) ++ podlisty xs
 
podlisty2 :: [Integer] -> [[Integer]]
podlisty2 [] = [[]]
podlisty2 (x:xs) = [x:ys | ys <- podlisty2 xs] ++ podlisty2 xs
 
podlistyDlugosci :: Integer -> [Integer] -> [[Integer]]
podlistyDlugosci n xs = [ys | ys <- (podlisty xs), toInteger (length ys) == n]