module Test.Main where

import Prelude (Unit)

import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE)

import Test.Assert (ASSERT)
import Test.Luhn (testLuhn)

main :: forall eff. Eff (console :: CONSOLE, assert :: ASSERT | eff) Unit
main = do
    testLuhn
