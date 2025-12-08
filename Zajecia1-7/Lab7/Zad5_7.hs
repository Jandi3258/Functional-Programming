data GaussInt = GaussInt {
    re :: Integer,
    im :: Integer
}
 
instance Show GaussInt
    where
    show (GaussInt a b) = show a ++ "+" ++ show b ++ "i"
 
instance Num GaussInt
    where
    (+) (GaussInt a b) (GaussInt c d) = GaussInt (a + c) (b + d)
    (*) (GaussInt a b) (GaussInt c d) = GaussInt (a * b - c * d) (b * c + a * d)
    (-) (GaussInt a b) (GaussInt c d) = GaussInt (a - c) (b - d)
    negate (GaussInt a b) = GaussInt (-a) (-b)
    abs x = x
    signum x = 1
    fromInteger a = GaussInt a 0