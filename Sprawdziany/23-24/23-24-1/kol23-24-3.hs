data Wnr a = SzczetMaker {
                segmenty :: [[a]],
                maksima :: [a],
                minima :: [a],
                dlugosci :: [Integer]
            }
instance Show a => Show (Wnr a) where
    show szczet = show (segmenty szczet)
 
wp :: Wnr a
wp = SzczetMaker [[]] [] [] [0]
 
dl :: (Num a, Ord a) => Wnr a -> a -> Wnr a
dl szczet x  
    | head (dlugosci szczet) == 0      = SzczetMaker ([x] : tail (segmenty szczet)) (x : maksima szczet)  (x : minima szczet) (((head(dlugosci szczet)) + 1) : tail (dlugosci szczet))
    | x > head (maksima szczet)           = SzczetMaker ( (x : head (segmenty szczet)) : tail (segmenty szczet) ) ( x : tail (maksima szczet) ) ( minima szczet) (((head(dlugosci szczet)) + 1) : tail (dlugosci szczet))
    | x < head (minima szczet)            = SzczetMaker ( (x : head (segmenty szczet)) : tail (segmenty szczet) ) ( maksima szczet ) ( x : tail (minima szczet) ) (((head(dlugosci szczet)) + 1) : tail (dlugosci szczet))
    | otherwise                         = SzczetMaker ( (x : head (segmenty szczet)) : tail (segmenty szczet) ) ( maksima szczet ) (minima szczet) (((head(dlugosci szczet)) + 1) : tail (dlugosci szczet))
 
ts :: Wnr a -> Wnr a
ts szczet
    | head (dlugosci szczet) == 0   = szczet
    | otherwise                     = SzczetMaker ([] : (segmenty szczet)) (maksima szczet)  (minima szczet) (0:(dlugosci szczet))
 
wmax :: Wnr a -> [a]
wmax = maksima
 
wmin :: Wnr a -> [a]
wmin = minima