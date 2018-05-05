main :: IO ()

main = print 1 
-- constant
constant :: t1 -> t -> t1
constant x y = x

-- identity (I-combinator)
identity :: t -> t
identity x = x

-- apply

-- K - compose
-- type declaration
compose f g x = f(g(x))

-- S - sasai
-- +
