# Lesson 8: Type Classes (pt. 1)

In this lesson we'll continue our journey with the PureScript type system by
looking at type classes, which will allow us to build richer types and leverage
tools we've seen before with our custom types.

This lesson is built upon chapter 6 of [PureScript by Example](https://leanpub.com/purescript/read#leanpub-auto-type-classes).
Be sure to check it out for a more in-depth look of everything covered.

[Slides](https://speakerdeck.com/jimf/purescript-lunch-n-learn-lesson-8)

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
    $ cd purescript-lunchnlearn/lesson07
    $ bower install
    $ pulp psci
    > import Prelude
    > import Lesson.TypeClasses
    > import Data.Foldable

Take a look at the slides and [`src/Lesson/TypeClasses.purs`](src/Lesson/TypeClasses.purs)
and play around with code.

## What's New

### Type Classes

- Define implementations of functions that are ultimately specialized to a type
  - __Show__
    - Defines `show` for a type
  - __Eq__
    - Defines how `==` behaves for a type
  - __Ordering__
    - Defines `compare` for a type, which can then be used to define comparison operator behavior
  - __Field__
    - Defines how math operators behave for a type
  - __Semigroup__
    - Defines how `<>` (append) behaves for a type
  - __Monoid__
    - Semigroup that also defines how to create an "empty" element of the type
  - __Foldable__
    - Defines `foldl`, `foldr`, and `foldMap` for a type
    - `foldMap`, as one might expect at this point, operates like a `map` followed by a fold
  - __Functor__
    - Defines how `<$>` (map) behaves for a type
