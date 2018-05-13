import Base (constant)
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
cond x a b = x a b

-- and


-- or


-- not


-- xor


-- toChurchNum



