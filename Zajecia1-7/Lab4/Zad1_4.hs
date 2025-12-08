wielkieLitery :: [String] -> [String]
wielkieLitery = map (filter (\x -> x `elem` ['A'..'Z']))