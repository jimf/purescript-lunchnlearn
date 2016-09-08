# The Luhn Algorithm

The __Luhn algorithm__ is a simple checksum formula used to validate a variety
of identification numbers, including credit card numbers. The formula is
composed of the following steps:

1. Going from right to left, double every other digit, starting with the digit that is second from the right.
1. Sum together the new result of values. For values greater than 9, either add the sum of the individual digits of the number, or add the number, minus 9.
1. Calculate the remainder when the sum is divided by 10 (i.e., modulo).
1. If the final result is `0`, the number is valid.

For example, given the number `123456`:

1. Double every other, resulting in: `2 2 6 4 10 6`
1. Sum the digits: `21`
1. Calculate the remainder: `21 mod 10` results in `1`
1. `1` is not equal to `0`, so the result is `false`

## Task

Implement the Luhn algorithm in PureScript, with the following loose guidelines:

- Define a `Luhn` module in `src/Luhn.purs`. This module should, at a minimum, export the following functions:
  - `checksum`
    - Returns an `Int` which is the remainder that is calculated when applying the Luhn formula. Again, consider the input type unspecified.
    - Should support valid credit card numbers.
    - __Optional:__ result may be wrapped in a `Maybe` or `Either`
  - `validate`
    - Returns a `Boolean` indicating whether a given card number is valid. Consider the input type unspecified.
    - Should support valid credit card numbers.
    - __Optional:__ result may be wrapped in a `Maybe` or `Either`

Any additional ancillary functions may be defined in order to break the problem
down.

## Getting Started

It is assumed that all of the following commands are operational:

- `node`
- `npm`
- `psc`
- `pulp`
- `bower`

If any of these are missing, be sure to go back and check out
[Lesson 1](https://github.com/jimf/purescript-lunchnlearn/tree/master/lesson01).
Then clone this repository and change directories to this workshop:

    $ cd some/directory
    $ git clone https://github.com/jimf/purescript-lunchnlearn.git
    $ cd purescript-lunchnlearn/workshops/luhn
    $ bower install

Make updates to `src/Luhn.purs` as per the instructions and test your solution
in the REPL (`pulp psci`) or via [tests](#tests).

## Tests

Tests are not required. However, an initial test file has been provided for
those who prefer a TDD workflow. Since we haven't covered testing in any of
our lessons, the testing library used here is just a very simple `assert`
based library. This means writing tests is just a matter of coming up with
boolean expressions. However, the error feedback as a result is not very
helpful. See `test/Test/Luhn.purs` for working with the tests, and keep in
mind that the types are unspecified. Update the tests if you do not want to
input card numbers as strings.

To run the tests:

    $ pulp test

To have the tests run automatically on write:

    $ pulp -w test

## Potentially Useful Libraries

The following libraries may be of use when coming up with a solution. Consider
these as hints and not requirements/necessary/sufficient for deriving a working
Luhn function.

### [purescript-arrays](https://pursuit.purescript.org/packages/purescript-arrays)

- `length`
- `zip`,
- `zipWith`
- `..`

### [purescript-foldable-traversable](https://pursuit.purescript.org/packages/purescript-foldable-traversable)

- `foldl`
- `foldr`
- `traverse`

### [purescript-integers](https://pursuit.purescript.org/packages/purescript-integers)

- `even`
- `fromString`
- `odd`

### [purescript-strings](https://pursuit.purescript.org/packages/purescript-strings)

- `split`

### [purescript-maybe](https://pursuit.purescript.org/packages/purescript-maybe)

- `Maybe(..)`
- `fromMaybe`
- `maybe`

## Resources

The Luhn algorithm on Wikipedia: [http://en.wikipedia.org/wiki/Luhn_algorithm](http://en.wikipedia.org/wiki/Luhn_algorithm)
