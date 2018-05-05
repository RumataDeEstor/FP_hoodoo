main :: IO ()

main = print 1 
-- constant
constant :: t1 -> t -> t1
constant x y = x

-- identity (I-combinator)
identity :: t -> t
identity x = x

-- apply
apply :: (t -> t1) -> t -> t1
apply f x = f x

-- K - compose
compose :: (t2 -> t1) -> (t3 -> t2) -> t3 -> t1
compose f g x = f(g(x))

-- reverted constant (?)
myFunc :: t1 -> t -> t
myFunc f x = x

-- S - sasai
sasai :: (x -> g -> f) -> (x -> g) -> x -> f
sasai f g x = f x (g x)
-- flip
