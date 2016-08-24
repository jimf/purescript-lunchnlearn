# Lesson 7: Pattern Matching (pt. 2)

In this lesson we'll finish our focus on pattern matching, covering case-of
expressions, algebraic data types, and `newtypes`.

This lesson is built upon chapter 5 of [PureScript by Example](https://leanpub.com/purescript/read#leanpub-auto-pattern-matching).
Be sure to check it out for a more in-depth look of everything covered.

[Slides](https://speakerdeck.com/jimf/purescript-lunch-n-learn-lesson-7)

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
    > import Lesson.PatternMatching

Take a look at the slides and [`src/Lesson/PatternMatching.purs`](src/Lesson/PatternMatching.purs)
and play around with code.

## What's New

### `case of` expressions

- Used to pattern match on the result of computation

### Totality

- Functions that return a value for all possible inputs are "total" functions
- Functions that do not are "partial"
- Total functions are always preferred

### Algebraic Data Types

- Abbreviated ADT
- Not to be confused with Abstract Data Types
- Type-safe way to solve the same sorts of problems that Interfaces or Abstract Classes solve in object oriented programming
- Encompassed by one or more constructors defined using the `data` keyword
- Constructor arguments may be of any type and may be recursive
- Constructors may have the same name as the ADT itself
- Constructors are applied in the same way as functions
- Values are extracted from ADT instances using pattern matching
- Shorthand similar to ES6 object destructuring/assignment can be used with records

### newtypes

- Special form of ADT
- Uses the `newtype` keyword to define type-level aliases for existing types
