module Lesson.PatternMatching where

import Prelude

gcd :: Int -> Int -> Int
gcd n 0 = n
gcd 0 m = m
gcd n m = if n > m
          then gcd (n - m) m
          else gcd n (m - n)

-- gcd rewritten to use guards
gcd' :: Int -> Int -> Int
gcd' n 0 = n
gcd' 0 m = m
gcd' n m | n > m     = gcd' (n - m) m
         | otherwise = gcd' n (m - n)

stringToBool :: String -> Boolean
stringToBool "true" = true
stringToBool _      = false

boolToString :: Boolean -> String
boolToString true  = "true"
boolToString false = "false"

isEmpty :: forall a. Array a -> Boolean
isEmpty [] = true
isEmpty _  = false

takeFive :: Array Int -> Int
takeFive [0, 1, a, b, _] = a * b
takeFive _ = 0

showPerson :: { first :: String, last :: String } -> String
showPerson { first: x, last: y } = y <> ", " <> x

type Address = { street :: String, city :: String }

type Person = { name :: String, address :: Address }

livesInLA :: Person -> Boolean
livesInLA { address: { city: "Los Angeles" } } = true
livesInLA _ = false

sortPair :: Array Int -> Array Int
sortPair arr@[x, y]
  | x <= y = arr
  | otherwise = [y, x]
sortPair arr = arr


-- |
-- | Problems
-- |

-- | 1. Write a function fact that takes an integer and returns the factorial
-- |    of that integer. Use pattern matching to consider zero and non-zero
-- |    cases (HINT: fact 0 == 1).


-- | 2. Use the fact function and pattern matching to write a function binom
-- |    that takes two integers and returns an integer, where that integer
-- |    is the binomial coefficient for the given values. The rules are as
-- |    follows:
-- |
-- |    Given n and r, return 0 if n < r, OR if r < 0.
-- |    Otherwise return:
-- |          n!
-- |       --------
-- |       r!(n-r)!
-- |
-- |    Example:
-- |    > binom 5 4
-- |    5


-- | 3. Write a sameCity function that takes two Person records and uses
-- |    record pattern matching to return whether the two people live in the
-- |    same city.


-- | 4. Write a fromSingleton function that takes a default value and an array
-- |    of anything and uses array pattern matching to return the first
-- |    element of the array if the array has length 1, and the provided
-- |    default value otherwise.
fromSingleton :: forall a. a -> Array a -> a
