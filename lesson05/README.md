# Lesson 5: Recursion, Maps, & Folds (pt. 3)

In this lesson we'll continue our foray into recursion by looking at folds.

This lesson is built upon chapter 4 of [PureScript by Example](https://leanpub.com/purescript/read#leanpub-auto-recursion-maps-and-folds).
Be sure to check it out for a more in-depth look of everything covered.

[Slides](https://speakerdeck.com/jimf/purescript-lunch-n-learn-lesson-3)

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
    > import Data.Foldable
    > import Data.Array

Take a look at the slides and [`src/Lesson/Recursion.purs`](src/Lesson/Recursion.purs)
and play around with code.

## What's New

### `Data.Foldable`

- Supplies the functions `foldl` and `foldr` for performing folds "from the left" and "from the right" respectively
- Comes from [purescript-foldable-traversable](https://github.com/purescript/purescript-foldable-traversable)
- Full docs can be found on [Pursuit](https://pursuit.purescript.org/packages/purescript-foldable-traversable)

### `Partial.Unsafe`

- Required for working with "unsafe" implementations of Array `head` and `tail` that can throw
- General utilities for working with partial functions, that is, functions that cannot handle every possible input
- Comes from [purescript-partial](https://github.com/purescript/purescript-partial)
- Full docs can be found on [Pursuit](https://pursuit.purescript.org/packages/purescript-partial)

### Tail-call optimization

- By writing recursive functions in "tail position" (only recursive call occurs at the very end of the function), the PureScript compiler will implement the recursion with a `while` loop in JS
- Functions can have an extra param added (an accumulator) to their signature to accumulate a result, aiding in moving the recursion to tail position

### Recursion Tips

- Prefer folds to explicit recursion
- When writing recursive functions, try to keep the recursion in tail position
