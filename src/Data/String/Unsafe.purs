-- | Unsafe string and character functions.
module Data.String.Unsafe
  ( char
  , charAt
  , charCodeAt
  ) where

import Prelude

import Data.Char
import Data.Int ()

-- | Returns the numeric Unicode value of the character at the given index.
-- |
-- | **Unsafe:** throws runtime exception if the index is out of bounds.
foreign import charCodeAt :: Int -> String -> Int

-- | Returns the character at the given index.
-- |
-- | **Unsafe:** throws runtime exception if the index is out of bounds.
foreign import charAt :: Int -> String -> Char

-- | Converts a string of length `1` to a character.
-- |
-- | **Unsafe:** throws runtime exception if length is not `1`.
foreign import char :: String -> Char
