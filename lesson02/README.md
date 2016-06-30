# Lesson 2: Functions and Records

In this lession, we’ll start by taking a closer look at functions and records,
which make up the building blocks of interesting applications. We'll then spend
the remainder of the time building upon what we've learned by working on
constructing a simple address book program in a _dojo_ style format.

There are different dojo styles, but depending on the number of participants we
have, the idea is to have a computer hooked up to the big screen with the code
and problems, and then for an individual or pairs (the driver(s)) to work
directly at that computer for a set period of time (e.g., somewhere between 3-5
minutes), working to solve the problem at hand.  Everyone else in the room (the
navigators) are free to guide the driver along, but the driver is free to do
with that input what he/she chooses. Once time is up, or the problem is solved,
one of the navigators trades places with the driver for the next problem.  This
continues until the session ends, or all problems are solved.

This style of learning is meant to encourage knowledge sharing, and is hopefully
engaging and fun. For more information on coding dojos, check out
[this blog post](http://code.joejag.com/2009/the-coding-dojo.html) by
[Joe Wright](https://twitter.com/joe_jag).

[Slides](https://speakerdeck.com/jimf/purescript-lunch-n-learn-lesson-2)

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
    $ cd purescript-lunchnlearn/lesson02
    $ bower install
    $ pulp psci
    > import Prelude
    > import Data.AddressBook

Take a look at the slides and `src/Data/AddressBook.purs` and play around with
the address book code.

## Refresher

In our last lesson we breezed through basic syntax. Now would be a good time to
take a quick refresher of the Record and Function material:

- [Basic Syntax: Records](https://github.com/jimf/purescript-lunchnlearn/tree/master/lesson01#records)
- [Basic Syntax: Applying and Defining Functions](https://github.com/jimf/purescript-lunchnlearn/tree/master/lesson01#applying-functions)

## What's New

This lesson is built upon chapter 3 of [PureScript by Example](https://leanpub.com/purescript/read#leanpub-auto-functions-and-records).
Be sure to check it out for a more in-depth look of everything covered.

### Types and Signatures

- Quick introduction
- `type` keyword to define a type
- _<function name>_ followed by `::` to define a function signature using types

### Operators

- `where` keyword: used to define auxiliary names inside a function's scope
- [`<<<`](https://github.com/purescript/purescript-prelude/blob/v0.1.5/docs/Prelude.md#-2): compose operator
- [`>>>`](https://github.com/purescript/purescript-prelude/blob/v0.1.5/docs/Prelude.md#-2): pipe operator

### `Maybe`

- `Maybe` is a typeclass for "optional" values
- Often used to capture failures and/or to represent null values (reminder: PureScript does not have `null`)
- Comes from [purescript-maybe](https://github.com/purescript/purescript-maybe)
- A value of type `Maybe` is either:
  - type a (represented as `Just a`)
  - "empty" (represented as `Nothing`)
- Full docs can be found on [Pursuit](https://pursuit.purescript.org/packages/purescript-maybe)

### `Data.List`

- Is the PureScript library for linked lists
- Comes from [purescript-lists](https://github.com/purescript/purescript-lists)
- Full docs can be found on [Pursuit](https://pursuit.purescript.org/packages/purescript-lists)
- We'll make use of:
  - `Data.List.Cons`: cons (prepend) operation for linked lists
    - NOTE: the infix alias for `Cons` is `:`
  - [`Data.List.head`](https://github.com/purescript/purescript-lists/blob/v0.7.9/docs/Data/List.md#head): returns the first element in the linked list as a `Maybe`
  - [`Data.List.null`](https://github.com/purescript/purescript-lists/blob/v0.7.9/docs/Data/List.md#null): returns whether a linked list is empty
  - [`Data.List.nubBy`](https://github.com/purescript/purescript-lists/blob/v0.7.9/docs/Data/List.md#nubby): removes duplicates from a linked list using a predicate function
