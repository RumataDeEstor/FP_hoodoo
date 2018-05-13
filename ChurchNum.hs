import Base (flip', constant, apply, compose, sasai, identity)

-- zero*
zero :: t1 -> t -> t
-- zero f x = x
zero = flip' constant

-- one*
one :: (t1 -> t) -> t1 -> t
--one f x = f x
one = ($)

-- two*
two :: (t -> t) -> t -> t
--two f x = f (f x)
two = sasai compose identity 

-- inc*
inc :: ((t1 -> t2) -> t3 -> t1) -> (t1 -> t2) -> t3 -> t2
--inc n f x = f (n f x)
inc = sasai compose

-- dec

-- add
add :: (t1 -> t2 -> t3) -> (t1 -> t -> t2) -> t1 -> t -> t3
add n k f x = n f (k f x)

-- sub


-- mul*



-- church
church :: (Num n, Eq n) => n -> (f -> f) -> f -> f
church 0 f x = zero f x
church n f x = f (church (n - 1) f x)


-- unchurch*



-- isZero





-- * write the fuction in the point-free form 
