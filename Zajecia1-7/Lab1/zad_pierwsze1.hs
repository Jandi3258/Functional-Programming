{- dwuargumentowe -}
funkcja :: Double -> Double -> Double
funkcja x y = (x * x + 2 * x * y) / (y * y)

{- jednoargumentowe -}
funkcjaY :: Double -> Double
funkcjaY y = funkcja 5.0 y 
-- nie moga byc te same nazwy funkcji