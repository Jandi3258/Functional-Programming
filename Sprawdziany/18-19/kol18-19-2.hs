data Expr a = Value a
         | Add (Expr a) (Expr a)
         | Mul (Expr a) (Expr a)
         | Sub (Expr a) (Expr a)
         | P
         deriving (Show)
eq :: (Eq a) => Expr a -> Expr a -> Bool
--obsluga P
eq _ P = True
eq P _ = True
--jesli pojedyncze te same wartosci to prawda 
eq (Value a) (Value b) = a == b
--obslugujemy dzialania
-- Sprawdzamy czy konstruktory są te same oraz czy ich poddrzewa są rowne
eq (Add l1 r1) (Add l2 r2) = eq l1 l2 && eq r1 r2
eq (Mul l1 r1) (Mul l2 r2) = eq l1 l2 && eq r1 r2
eq (Sub l1 r1) (Sub l2 r2) = eq l1 l2 && eq r1 r2

eq _ _ = False