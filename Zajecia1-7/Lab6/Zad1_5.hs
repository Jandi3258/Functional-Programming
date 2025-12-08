Działanie: (-) (odejmowanie)

Wartość początkowa (akumulator): 0

Lista: [1, 2, 3]

foldl jest lewostronny. Zaczyna obliczenia od lewej strony listy, "przenosząc" akumulator przez listę.

Wywołanie: foldl (-) 0 [1, 2, 3]

Można to zwizualizować jako: (((0 - 1) - 2) - 3)

Wynik foldl: -6

Wywołanie: foldr (-) 0 [1, 2, 3]

Można to zwizualizować jako: (1 - (2 - (3 - 0)))

foldr jest prawostronny. Zaczyna obliczenia od prawej strony listy, rekurencyjnie "zwijając" listę od końca.

Wynik foldr: 2