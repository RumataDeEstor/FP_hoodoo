module Base where

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

-- S - sasai
sasai :: (t2 -> t1 -> t) -> (t2 -> t1) -> t2 -> t
sasai f g x = f x (g x)

-- flip
flip' :: (t2 -> t1 -> t) -> t1 -> t2 -> t
flip' f x y = f y x
