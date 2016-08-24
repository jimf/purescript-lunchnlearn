module Lesson.PatternMatching where

import Prelude

import Data.Array
import Data.Maybe
import Data.String


-- Simplified palindrome test
isPalindrome :: String -> Boolean
isPalindrome str = case reverseString str of
  reversed -> str == reversed
  _        -> false
  where
    reverseString :: String -> String
    reverseString = toCharArray >>> reverse >>> fromCharArray


data Shape
  = Circle Point Number
  | Rectangle Point Number Number
  | Line Point Point
  | Text Point String


data Point = Point
  { x :: Number
  , y :: Number
  }


newtype Pixels = Pixels Number
newtype Inches = Inches Number


showPoint :: Point -> String
showPoint (Point { x, y }) =
  "(" <> show x <> ", " <> show y <> ")"


showShape :: Shape -> String
showShape (Circle p r)      = "[Circle " <> showPoint p <> ", " <> show r <> "]"
showShape (Rectangle p w h) = "[Rectangle " <> showPoint p <> ", " <> show w <> "x" <> show h <> "]"
showShape (Line start end)  = "[Line from " <> showPoint start <> " to " <> showPoint end <> "]"
showShape (Text p text)     = "[Text " <> showPoint p <> " " <> show text <> "]"


origin :: Point
origin = Point { x, y }
  where
    x = 0.0
    y = 0.0


-- |
-- | Problems
-- |

-- | 1. Write a function baseCircle that uses the `origin` function above and
-- |    returns a circle centered at the origin with radius 10.0.


-- | 2. Write a function extractText that takes a Shape and returns the text in
-- |    that shape as a Maybe String. Use the Just constructor for Text shapes,
-- |    and the Nothing constructor otherwise.


-- | 3. Write a function scaleShape that takes a Number and a Shape and returns
-- |    a new shape of the same subtype that is centered around the origin and
-- |    whose size attribute(s) are scaled by the first argument given.
