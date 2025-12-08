data Student = Student {imie :: String,
                        nazwisko :: String,
                        nrAlbumu :: Int
                        }

instance Show Student where
    show (Student i n nr) =
        "Imię: " ++ i ++ "\n" ++
        "Nazwisko: " ++ n ++ "\n" ++
        "Numer Albumu: " ++ show nr

JanKowalski = Student {nrAlbumu=1234567, imie="Jan", nazwisko="Kowalski" }