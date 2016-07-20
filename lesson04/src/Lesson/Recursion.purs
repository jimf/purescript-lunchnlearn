module Lesson.Recursion where

import Prelude
import Control.MonadZero (guard)
import Data.Array ((..), filter)
import Data.Foldable (product)


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

-- | 1. Write a function isEven that takes an Int and returns a Boolean
-- |    indicating whether the value is even.
-- |
-- |    HINT: The `mod` function will perform a modulus operation. Include
-- |    backticks to use inline.


-- | 2. Use pattern matching to write a boolToInt function that takes a
-- |    Boolean and returns 1 if true and 0 if false.


-- | 3. Write a function defaultZero that takes a Maybe Int and, in the case
-- |    of Just a returns a, and in the case of Nothing, returns 0.
-- |
-- |    HINT: fromMaybe (from Data.Maybe) has the following signature:
-- |        fromMaybe :: forall a. a -> Maybe a -> a
-- |    That is, it takes a default value and a Maybe, and returns the Maybe
-- |    value if a Just, and otherwise the default given.


-- | 4. Write a function evalEvens that takes an array of integers and uses
-- |    map or <$> to return a new array whose values are the Ints 0 or 1,
-- |    depending on whether the corresponding value in the orginal array is
-- |    odd (0) or even (1).


-- | 5. Write a recursive function countEvens that takes an array of integers
-- |    (Array Int) and returns the number of even integers in the array.
-- |
-- |    HINTS:
-- |      - null from Data.Array will return whether an array is empty
-- |      - uncons from Data.Array will return a record of { head, tail }
-- |        - handy for pattern matching, case of, and the like:
-- |            f arr = case uncons arr of
-- |              Just { head: x, tail: xs } -> something
-- |              Nothing -> somethingElse
-- |      - our previous functions can be composed together with <<< as needed
