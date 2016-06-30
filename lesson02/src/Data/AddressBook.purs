module Data.AddressBook where

import Prelude

import Data.List
import Data.Maybe

import Control.Plus (empty)

--
-- Types
--
type Address =
  { street :: String
  , city   :: String
  , state  :: String
  }

type Entry =
  { firstName :: String
  , lastName  :: String
  , address   :: Address
  }

type AddressBook = List Entry


-- Convert an Address to a string for display purposes.
showAddress :: Address -> String
showAddress addr = addr.street <> ", " <> addr.city <> ", " <> addr.state


-- Convert a full Entry to a string for display purposes.
showEntry :: Entry -> String
showEntry entry = entry.lastName <> ", " <> entry.firstName <> ": " <> showAddress entry.address


-- Value that represents an empty AddressBook.
emptyBook :: AddressBook
emptyBook = empty


-- Given an Entry and an AddressBook, return a copy of the AddressBook that
-- contains the given entry.
insertEntry :: Entry -> AddressBook -> AddressBook
insertEntry = Cons


-- Given a firstName, lastName, and AddressBook, return the first entry in the
-- AddressBook that contains the given first and last names. Since it may be
-- the case that no entries match, this function is "safe" and return Maybe Entry.
findEntry firstName lastName book = head $ filter containsName book
  where
  containsName entry = entry.firstName == firstName && entry.lastName == lastName

--
-- Alternative implementations that use compose (<<<) and pipe (>>>) operators:
--
-- findEntry firstName lastName = head <<< filter containsName
--   where
--   containsName entry = entry.firstName == firstName && entry.lastName == lastName
--
-- findEntry firstName lastName = filter containsName >>> head
--   where
--   containsName entry = entry.firstName == firstName && entry.lastName == lastName


-- |
-- | Problems
-- |

-- | 1. Test your understanding of the findEntry function and type annotation by
-- |    filling in the types for findEntry itself, as well as containsName.


-- | 2. Write a function findEntryByAddress that, given an Address and AddressBook,
-- |    returns the first Entry in the AddressBook that contains that address. This
-- |    function should be "safe" and return a Maybe Entry.


-- | 3. Write a function hasEntryWithName that, given a firstname, lastname, and
-- |    AddressBook, returns a Boolean indicating whether *any* entry in the
-- |    AddressBook contains that firstname+lastname pair.
-- |
-- |    HINT: Data.List.null can be used to evaluate whether a List is empty.


-- | 4. Write a function removeDuplicates that, given a firstname, lastname, and
-- |    AddressBook, returns an AddressBook that *AT MOST* contains a single
-- |    Entry with that firstname+lastname pair.
-- |
-- |    HINT: Data.List.nubBy will remove duplicate elements from a List based on
-- |          a given equality predicate.
