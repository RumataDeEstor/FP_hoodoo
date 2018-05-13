module ChurchNum where

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


-- sub


-- mul*



-- church



-- unchurch*



-- isZero





-- * write the fuction in the point-free form 
