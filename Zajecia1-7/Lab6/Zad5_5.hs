ktoraCwiartka :: [(Int, Int)] -> Int
zliczCwiartki :: [(Int, Int)] -> [Int]
zliczCwiartki lst = foldl (\counters pt -> [mapCounter i pt (counters !! (i - 1)) | i <-[1..4]]) [0, 0, 0, 0] lst
  where mapCounter 1 (a, b) ct = if (a >= 0 && b >= 0) then ct + 1 else ct
        mapCounter 2 (a, b) ct = if (a <= 0 && b >= 0) then ct + 1 else ct
        mapCounter 3 (a, b) ct = if (a <= 0 && b <= 0) then ct + 1 else ct
        mapCounter 4 (a, b) ct = if (a >= 0 && b <= 0) then ct + 1 else ct
 
 
ktoraCwiartka lst | mx == (counters !! 0) = 1
                  | mx == (counters !! 1) = 2
                  | mx == (counters !! 2) = 3
                  | mx == (counters !! 3) = 4
  where counters = zliczCwiartki lst
        mx = maximum counters