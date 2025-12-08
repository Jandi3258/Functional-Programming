funkcja :: Int -> Int -> String
funkcja x y 
     | (x * y) > (x + y) = "Iloczyn jest wiekszy od sumy"
     | otherwise = "Iloczyn jest nie wiekszy od sumy"