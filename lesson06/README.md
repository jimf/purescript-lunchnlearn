# Lesson 6: Pattern Matching (pt. 1)

In this lesson we'll focus on pattern matching, covering simple cases, guards,
arrays, and records.

This lesson is built upon chapter 5 of [PureScript by Example](https://leanpub.com/purescript/read#leanpub-auto-pattern-matching).
Be sure to check it out for a more in-depth look of everything covered.

[Slides](https://speakerdeck.com/jimf/purescript-lunch-n-learn-lesson-6)

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

Take a look at the slides and [`src/Lesson/PatternMatching.purs`](src/Lesson/PatternMatching.purs)
and play around with code.

## What's New

### Pattern Matching

- Commonly used in functional programming
- Allows for functions to be defined in terms of declarative cases of input
- Maps well to mathematical definitions/formulas
- Cases:
  - are tried in order
  - can bind names to values
  - can match literal values
  - can match wildcard values using the `_` symbol
  - can be constrained with guards using the `|` and `otherwise` symbols
  - can match arrays of fixed length
  - can match record fields using row polymorphism
  - can be arbitarily nested
  - can be named using the `@` symbol
