{-# LANGUAGE NoImplicitPrelude #-}

module List where

import Prelude (Show, Integer, (+), Num, (*), Int, (>), Bool(True, False), (==), (-), otherwise)
import ChurchBool (true, false, cond)

-- list type definition
data List a
  = Empty
  | Cons a (List a)
  deriving(Show)

-- Foldr
foldr' :: List a -> (a -> b -> b) -> b -> b
foldr' Empty _ x = x
foldr' (Cons h t) f x = f h (foldr' t f x)

-- Foldl
foldl' :: List a -> (b -> a -> b) -> b -> b
foldl' Empty _ x = x 
foldl' (Cons h t) f x = foldl' t f (f x h)

-- Prepend
prepend :: List a -> a -> List a
prepend (Cons h t) x = Cons x (Cons h t)

-- Append
append :: List a -> a -> List a
append (Cons h t) x = foldr' (Cons h t) Cons (Cons x Empty)

-- Sum
sum :: (Num a) => List a -> a
sum (Cons h t) = foldr' (Cons h t) (+) 0

-- Product 
product :: (Num a) => List a -> a
product (Cons h t) = foldr' (Cons h t) (*) 1

-- Length
length :: List a -> Int
length (Cons h t) = foldl' (Cons h t) (\x h -> x + 1) 0

-- Reverse
reverse :: List a -> List a
reverse (Cons h t) = foldl' t prepend (Cons h Empty)

-- Map
map :: List a -> (a -> b) -> List b
map (Cons h t) f = foldr' (Cons h t) (\h1 t1 -> Cons (f h1) t1) Empty

-- Filter
filter :: List a -> (a -> (List a -> List a -> List a)) -> List a
filter (Cons h t) f = foldr' (Cons h t) (\h1 t1 -> ((f h1) (Cons h1 t1) t1)) Empty

-- ZeroTo
zeroTo :: Int -> List Int
zeroTo 0 = Cons 0 Empty
zeroTo a = append (zeroTo (a - 1)) a

-- Range
range :: Int -> Int -> List Int
range a b 
  | a == b = Cons b Empty
  | otherwise = append (range a (b-1)) b

-- Repeat
repeat :: Int -> t1 -> List t1
repeat 1 b = Cons b Empty
repeat a b = append (repeat (a - 1) b) b