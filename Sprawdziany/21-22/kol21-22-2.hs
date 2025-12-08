wIluListach :: Int -> [[Int]] -> [Int]
wIluListach n listy = map liczWystapienia [1..n]
  where
   liczWystapienia x = length(filter(elem x) listy)
