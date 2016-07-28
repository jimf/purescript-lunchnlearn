module Lesson.Recursion where

import Prelude
import Data.Array (snoc, (:))
import Data.Array.Partial
import Data.Foldable
import Partial.Unsafe

fact :: Int -> Int -> Int
fact 0 acc = acc
fact n acc = fact (n - 1) (acc * n)

-- Recursively reverse an array by appending elements at
-- the head of the input array to the end of the result.
-- NOT tail-recursive!
reverse :: forall a. Array a -> Array a
reverse [] = []
reverse xs = snoc (reverse (unsafePartial tail xs))
                  (unsafePartial head xs)

-- Tail-recursive reverse that uses an accumulator.
reverse' :: forall a. Array a -> Array a
reverse' = reverse'' []
  where
  reverse'' acc [] = acc
  reverse'' acc xs = reverse'' (unsafePartial head xs : acc)
                               (unsafePartial tail xs)

-- reverse implemented as a fold.
reverse'' :: forall a. Array a -> Array a
reverse'' = foldr (\x xs -> xs <> [x]) []


-- |
-- | Problems
-- |

-- | 1. Write a function allTrue which takes an array of booleans and returns
-- |    whether all the boolean values are true.


-- | 2. Rewrite our reverse'' function above in terms of foldl.


-- | 3. Rewrite count in tail-recursive form using an accumulator parameter.
count :: forall a. (a -> Boolean) -> Array a -> Int
count _ [] = 0
count p xs = if p (unsafePartial head xs)
             then count p (unsafePartial tail xs) + 1
             else count p (unsafePartial tail xs)
