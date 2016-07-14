# Lesson 3: Recursion, Maps, & Folds (pt. 1)

In this lesson we'll begin looking into how to use recursion for iteration and
problem solving. We'll also look at the `map` function and how it relates to
recursion, defining the term "functor" along the way.

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
Then clone this repository and change directories to `lesson02/`:

    $ cd some/directory
    $ git clone https://github.com/jimf/purescript-lunchnlearn.git
    $ cd purescript-lunchnlearn/lesson03
    $ bower install
    $ pulp psci
    > import Prelude
    > import Data.Array
    > import Data.Maybe
    > import Lesson.Recursion

Take a look at the slides and `src/Lesson/Recursion.purs` and play around with
code.

## Refresher

In our previous lessons we were introduced to pattern matching and the `Maybe`
type. Check the links below for a quick refresher.

- [Basic Syntax: Defining Functions](https://github.com/jimf/purescript-lunchnlearn/blob/master/lesson01/README.md#defining-functions)
- [Records and Functions: Maybe](https://github.com/jimf/purescript-lunchnlearn/tree/master/lesson02#maybe)

## What's New

### `map`

- Applies a function over the value(s) within a [Functor](#functors)
- Has in infix alias, `<$>`

### Functors

- Anything that can be mapped over
  - This is a simplified definition. There's more to it, but we'll keep things simple for now.
- Examples include, but are not limited to:
  - Array
  - List
  - Maybe

### `Data.Array`

- Is the PureScript library for arrays
- Comes from [purescript-arrays](https://github.com/purescript/purescript-arrays)
- Full docs can be found on [Pursuit](https://pursuit.purescript.org/packages/purescript-arrays)
- We'll make use of
  - [`Data.Array.null`](https://pursuit.purescript.org/packages/purescript-arrays/1.0.0/docs/Data.Array#v:null): tests whether an array is empty
  - [`Data.Array.uncons`](https://pursuit.purescript.org/packages/purescript-arrays/1.0.0/docs/Data.Array#v:uncons): destructures an array into a `Maybe { head, tail }` record
  - [`Data.Array.head`](https://pursuit.purescript.org/packages/purescript-arrays/1.0.0/docs/Data.Array#v:head) returns a Maybe with the first element of a given array
  - [`Data.Array.tail`](https://pursuit.purescript.org/packages/purescript-arrays/1.0.0/docs/Data.Array#v:tail) returns a Maybe with all elements but the first of a given array

### `Data.Maybe`

- [`Data.Maybe.fromMaybe`](https://pursuit.purescript.org/packages/purescript-maybe/1.0.0/docs/Data.Maybe#v:fromMaybe): takes a default value and a Maybe and returns the value of the Maybe, or the default value, if the Maybe is `Nothing`
