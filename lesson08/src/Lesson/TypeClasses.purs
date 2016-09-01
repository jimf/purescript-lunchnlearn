module Lesson.TypeClasses where

import Prelude
import Data.Array
import Data.Foldable

data Shape
  = Circle Point Number
  | Rectangle Point Number Number
  | Line Point Point
  | Text Point String


data Point = Point
  { x :: Number
  , y :: Number
  }


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


newtype Complex = Complex
    { real :: Number
    , imaginary :: Number
    }


data NonEmpty a = NonEmpty a (Array a)

-- | Natural transformation from NonEmpty a to Array a
nonEmptyToArray :: forall a. NonEmpty a -> Array a
nonEmptyToArray (NonEmpty x xs) = cons x xs


-- |
-- | Problems
-- |

-- | 1. Use the showShape function defined above (from last lesson) to define
-- |    a Show instance for the Shape type.
-- |
-- | Example:
-- |   instance showBoolean :: Show Boolean where
-- |     show true = "true"
-- |     show false = "false"


-- | 2. Define Show and Eq instances for the Complex newtype above.
-- |    show should return a String in the form "a + bi", where a is the
-- |    real component, and b is the imaginary component.
-- |
-- | See https://www.mathsisfun.com/numbers/complex-numbers.html


-- | 3. The NonEmpty type above defines a type for non-empty arrays. Define
-- |    Show and Semigroup instances for NonEmpty arrays.
-- |
-- | Examples:
-- |   show (NonEmpty 1 [2,3,4])
-- |   > "(NonEmpty 1 [2,3,4])"
-- |
-- |   (NonEmpty 1 [2,3]) <> (NonEmpty 4 [5,6])
-- |   > "(NonEmpty 1 [2,3,4,5,6])"
-- |
-- | HINT: Reuse the Show and Semigroup instances for arrays


-- | 4. Define a Functor instance for NonEmpty.
-- |
-- | Example:
-- |   map ((+) 1) (NonEmpty 1 [2,3,4])
-- |   > "(NonEmpty 2 [3,4,5])"
-- |
-- | HINT: Reuse the Functor instance for arrays.


-- | 5. Define a Foldable instance for NonEmpty.
-- |
-- | Examples:
-- |   foldl (+) 0 (NonEmpty 1 [2,5])
-- |   > 8
-- |
-- |   foldr (-) 0 (NonEmpty 1 [2,5])
-- |   > 4
-- |
-- |   foldMap show (NonEmpty 1 [2,3,4,5])
-- |   > "12345"
-- |
-- | HINT: Reuse the Foldable instance for arrays.
