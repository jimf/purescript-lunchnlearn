module Lesson.Recursion where

import Prelude
import Control.MonadZero
import Data.Array
import Data.Foldable


-- Factors.
factors :: Int -> Array (Array Int)
factors n = filter (\xs -> product xs == n) $ do
    i <- 1 .. n
    j <- i .. n
    pure [i, j]

factors' :: Int -> Array (Array Int)
factors' n = do
    i <- 1 .. n
    j <- i .. n
    guard $ i * j == n
    pure [i, j]


-- |
-- | Problems
-- |

-- | 1. Write a function isPrime that takes an Int and returns a Boolean, by
-- |    using our factors function to determine whether the input is prime.


-- | 2. Write a function xprod that takes two arrays of integers and uses do
-- |    notation to return the cartesian product of those arrays (all possible
-- |    pairs from the two lists).


-- | 3. A pythagorean triple is an array of numbers [a, b, c] such that
-- |    a² + b² = c². Write a function triples that takes an Integer and
-- |    uses the guard function to calculate and return all Pythagorean
-- |    triples whose components are less than n.
