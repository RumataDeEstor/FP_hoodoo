import Base (constant, identity)
import ChurchNum (zero)

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


-- or


-- not


-- xor


-- toChurchNum



