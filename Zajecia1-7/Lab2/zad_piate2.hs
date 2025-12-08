ktoraCwiartka :: [(Int, Int)] -> Int
ktoraCwiartka list
    | (cwiartka1 >= cwiartka2) && (cwiartka1 >= cwiartka3) && (cwiartka1 >= cwiartka4) = 1
    | (cwiartka2 >= cwiartka1) && (cwiartka2 >= cwiartka3) && (cwiartka2 >= cwiartka4) = 2
    | (cwiartka3 >= cwiartka1) && (cwiartka3 >= cwiartka2) && (cwiartka3 >= cwiartka4) = 3
    | otherwise = 4
    where
        cwiartka1 = length [(x, y) | (x, y) <- list, x >= 0, y >= 0]
        cwiartka2 = length [(x, y) | (x, y) <- list, x <= 0, y >= 0]
        cwiartka3 = length [(x, y) | (x, y) <- list, x <= 0, y <= 0]
        cwiartka4 = length [(x, y) | (x, y) <- list, x >= 0, y <= 0]