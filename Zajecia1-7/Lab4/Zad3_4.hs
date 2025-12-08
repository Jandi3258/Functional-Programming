fib :: (Integer, Integer) -> [(Integer, Integer)]
fib startPair = iterate (\(x, y) -> (y, x + y)) startPair
--bez arg tez dziala mozna usunac to startPair