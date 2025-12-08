data Calkowite = Zero | Succ Calkowite | Pred Calkowite
 
intToCalk :: Integer -> Calkowite
intToCalk x | x == 0 = Zero
            | x > 0 = Succ (intToCalk(x - 1))
            | otherwise = Pred (intToCalk(x + 1))
 
 
calkToInt :: Calkowite -> Integer
calkToInt Zero = 0
calkToInt (Pred x) = calkToInt x - 1
calkToInt (Succ x) = calkToInt x + 1
 
 
--instance Show Calkowite
  --  where
     --   show x = show (calkToInt x)