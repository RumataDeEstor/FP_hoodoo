{-# LANGUAGE NoImplicitPrelude #-}

module List where

import Prelude (Show, Integer)

-- list type definition
data List a
  = Empty
  | Cons a (List a)
  deriving(Show)





