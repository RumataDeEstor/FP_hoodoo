module Tuple where

import Base (constant, apply, flip')
import ChurchNum (zero)

-- tuple
tuple :: t -> t1 -> (t -> t1 -> t2) -> t2
tuple a b f = f a b

-- first*
first :: ((t2 -> t1 -> t2) -> t) -> t
-- first t = t constant   
first = flip' apply constant

-- second
second :: ((t1 -> t -> t) -> t2) -> t2
--second t = t zero
second = flip' apply zero

-- swap
-- swap t = tuple (second t) (first t) 
swap t = t (flip' tuple)

-- curry'*
-- curry' :: (t1 -> t) -> t2 -> t3 -> t
curry' f a b = f (tuple a b)



-- uncurry'
uncurry' :: a -> (a -> a1) -> a1
uncurry' f t = t f

-- * write the function in the point-free form
