--milorzab
data Mb a = Mb {
front :: [a], 
back :: [a]    }

dnp :: Mb a-> a-> Mb a
dnp mb element = Mb {front = element : front mb, back = back mb} --back bez zmian, a na front na poczatek

dnk :: Mb a-> a-> Mb a
dnk mb element = Mb {front = front mb, back = element : back mb}

mb2list :: Mb a-> [a]
mb2list mb = front mb ++ reverse(back mb)

ull :: Mb a-> Mb a
ull mb = Mb {front = [], back = back mb}

upl :: Mb a-> Mb a
upl mb = Mb {front = front mb, back = []}