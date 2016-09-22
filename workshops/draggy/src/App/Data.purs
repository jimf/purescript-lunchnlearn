module App.Data where

import Prelude
import Data.Int (fromString)
import Data.Maybe (Maybe(..))


newtype Pixel = Pixel Int

data Point = Point
    { x :: Pixel
    , y :: Pixel
    }

data Shape = Rectangle Point Pixel Pixel

instance showPixel :: Show Pixel where
    show (Pixel px) = show px <> "px"

instance showPoint :: Show Point where
    show (Point { x, y }) = "(" <> show x <> ", " <> show y <> ")"

instance showShape :: Show Shape where
    show (Rectangle p w h) = "[Rectangle " <> show p <> ", " <> show w <> " x " <> show h <> "]"

pixelFromString :: String -> Maybe Pixel
pixelFromString s = case fromString s of
    Just px -> Just $ Pixel px
    _       -> Nothing

setWidth :: Pixel -> Shape -> Shape
setWidth w (Rectangle p _ h) = Rectangle p w h

setHeight :: Pixel -> Shape -> Shape
setHeight h (Rectangle p w _) = Rectangle p w h
