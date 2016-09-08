module Test.Luhn where

import Prelude

import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (log, CONSOLE)

import Luhn

import Test.Assert (assert, ASSERT)

testLuhn :: forall eff. Eff (console :: CONSOLE, assert :: ASSERT | eff) Unit
testLuhn = do

    log "checksum returns the remainder after applying the Luhn formula"
    assert $ checksum "1234567889" == 0
    assert $ checksum "2323200577663554" == 0
    assert $ checksum "1234567887" == 8

    log "validate verifies whether a card number is valid"
    assert $ validate "1234567889"
    assert $ validate "2323200577663554"
    assert $ not $ validate "1234567887"
