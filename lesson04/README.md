# Lesson 4: Recursion, Maps, & Folds (pt. 2)

In this lesson we'll continue our foray into recursion, looking at `filter`
and `do` notation.

This lesson is built upon chapter 4 of [PureScript by Example](https://leanpub.com/purescript/read#leanpub-auto-recursion-maps-and-folds).
Be sure to check it out for a more in-depth look of everything covered.

[Slides](https://speakerdeck.com/jimf/purescript-lunch-n-learn-lesson-4)

## Getting Started

It is assumed that all of the following commands are operational:

- `node`
- `npm`
- `psc`
- `pulp`
- `bower`

If any of these are missing, be sure to go back and check out
[Lesson 1](https://github.com/jimf/purescript-lunchnlearn/tree/master/lesson01).
Then clone this repository and change directories to this lesson:

    $ cd some/directory
    $ git clone https://github.com/jimf/purescript-lunchnlearn.git
    $ cd purescript-lunchnlearn/lesson04
    $ bower install
    $ pulp psci
    > import Prelude
    > import Data.Array
    > import Data.Foldable
    > import Control.MonadZero
    > import Lesson.Recursion

Take a look at the slides and [`src/Lesson/Recursion.purs`](src/Lesson/Recursion.purs)
and play around with code.

## What's New

### `filter`

- Applies a predicate function over the value(s) of a collection and returns a new collection of the same type that contains a subset of the values that "passed" the truth test
- Does not mutate the original collection
- Provided by both `Data.Array` and `Data.List`

### `concat`

- Flattens a collection by a single level
- Provided by both `Data.Array` and `Data.List`

### `concatMap`

- Similar to a composition of a `map` into `concat`

### `Data.Foldable`

- Comes from purescript-foldable-traversable
- `Data.Foldable.product` will reduce an array of Ints down to their product

### `do` Notation

- Powerful sugar that defines a block with a number of capabilities
  - can assign names to expressions using `<-` or `let`
  - can do filtering with the `guard` function (via `Control.ModadZero` from purescript-control)
  - can leverage the type system by using the `pure` keyword
