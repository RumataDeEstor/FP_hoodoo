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
-- type declaration
compose f g x = f(g(x))

-- S - sasai
-- +
