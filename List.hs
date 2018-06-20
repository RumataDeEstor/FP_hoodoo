{-# LANGUAGE NoImplicitPrelude #-}

module List where

import Prelude (Show, Integer, (+))

-- list type definition
data List a
  = Empty
  | Cons a (List a)
  deriving(Show)

-- Foldr
foldr :: List a -> (a -> a -> a) -> a -> a
foldr Empty _ x = x
foldr (Cons h t) f x = f h (foldr t f x)

-- Foldl
foldl :: List a -> (a -> a -> a) -> a -> a
foldl Empty _ x = x 
foldl (Cons h t) f x = foldl t f (f x h)
