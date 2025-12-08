type DirectedGraph = ([Int], Int -> Int -> Bool)
atDistance :: DirectedGraph -> Int -> Int -> [Int]

atDistance _ 0 v = [v]
atDistance (vertices, f) d v =
    concat [atDistance (vertices, f) (d-1) u | u <- vertices, f v u]

-- ==========================================
-- 2. DANE TESTOWE (PRZYKŁADOWY GRAF)
-- ==========================================
-- Definiujemy wierzchołki: 1, 2, 3, 4, 5, 6
wierzcholki :: [Int]
wierzcholki = [1, 2, 3, 4, 5, 6]

-- Definiujemy krawędzie jako listę par, żeby było łatwiej czytać
-- Graf wygląda tak:
-- 1 -> 2
-- 1 -> 3
-- 2 -> 4
-- 3 -> 4  (Z 1 do 4 można dojść dwiema drogami!)
-- 4 -> 5
-- 5 -> 6
-- 6 -> 1  (Cykl: powrót do początku)
listaKrawedzi :: [(Int, Int)]
listaKrawedzi = [(1,2), (1,3), (2,4), (3,4), (4,5), (5,6), (6,1)]

-- Funkcja pomocnicza, która mówi czy jest krawędź (zgodna z Twoim typem)
czyJestKrawedz :: Int -> Int -> Bool
czyJestKrawedz a b = (a, b) `elem` listaKrawedzi

-- Składamy to w całość
mojGrafTestowy :: DirectedGraph
mojGrafTestowy = (wierzcholki, czyJestKrawedz)

-- ==========================================
-- 3. URUCHOMIENIE (MAIN)
-- ==========================================
main :: IO ()
main = do
    putStrLn "--- Testowanie funkcji atDistance ---"
    
    putStrLn "\nTest 1: Start z 1, dystans 0"
    putStrLn "Oczekiwane: [1]"
    print (atDistance mojGrafTestowy 0 1)

    putStrLn "\nTest 2: Start z 1, dystans 1"
    putStrLn "Oczekiwane: [2,3] (kolejność dowolna)"
    print (atDistance mojGrafTestowy 1 1)

    putStrLn "\nTest 3: Start z 1, dystans 2"
    putStrLn "Oczekiwane: [4,4] (bo idzie przez 2 i przez 3)"
    print (atDistance mojGrafTestowy 2 1)

    putStrLn "\nTest 4: Start z 5, dystans 2 (test cyklu)"
    putStrLn "Oczekiwane: [1] (bo 5->6->1)"
    print (atDistance mojGrafTestowy 2 5)