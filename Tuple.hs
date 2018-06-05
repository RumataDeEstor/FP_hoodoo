import Base (constant, apply, flip')

-- tuple
tuple :: t -> t1 -> (t -> t1 -> t2) -> t2
tuple a b f = f a b

-- first*
first :: ((t2 -> t1 -> t2) -> t) -> t
-- first t = t constant   
first = flip' apply constant
-- second


-- swap



-- curry*



-- uncurry


-- * write the function in the point-free form
