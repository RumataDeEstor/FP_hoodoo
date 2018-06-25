module ChurchBool where

import Base (constant, identity)
import ChurchNum (zero, one)
import Tuple (tuple, uncurry', curry', first)

-- true
true :: t1 -> t -> t1
--true a b = a
true = constant

-- false
false :: t1 -> t -> t
--false a b = b
false = zero

-- cond (if)
cond :: t -> t
--cond f a b = f a b
cond = identity

-- and
and' :: (t1 -> (t3 -> t2 -> t2) -> t) -> t1 -> t
-- and' a b = cond a (cond b true false) false   
and' a b = a b false

-- or
or' :: ((t1 -> t -> t1) -> t2 -> t3) -> t2 -> t3
--or' a b = cond a true (cond b true false)
or' a b = a true b
-- not

not' :: ((t -> t1 -> t1) -> (t2 -> t3 -> t2) -> t4) -> t4
not' a = a false true

-- xor
xor a b = a (b false true) (b true false)

-- toChurchNum
toChurchNum :: (((t1 -> t) -> t1 -> t) -> (t3 -> t2 -> t2) -> t4) -> t4
toChurchNum f = f one zero

