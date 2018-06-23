{-# LANGUAGE NoImplicitPrelude #-}

module List where

import Prelude (foldr, Show, Integer, (+))

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

append :: List a -> a -> List a
append (Cons h t) x = foldr' (Cons h t) Cons (Cons x Empty)
