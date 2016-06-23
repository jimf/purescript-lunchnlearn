# Lesson 1: Build env / tools and basic syntax

In this first lesson, we'll take a look at the build tools used in a typical
PureScript project, how to scaffold out a new project, and finally use the
PureScript REPL to dive into some basic syntax.

[Slides](http://speakerdeck.com/jimf/purescript-lunchnlearn-lesson1)

## Getting Started

First, be sure to have Node.js installed (v4.0 or greater recommended), along
with npm (which generally comes bundled with Node). Recommended installation
methods:

- Via brew: `brew install node`
- Download and install from the [official site](https://nodejs.org)

Once Node.js is installed, run:

    $ npm install -g purescript pulp bower

Here, `purescript` is the PureScript compiler, `pulp` is a build tool for
PureScript, and `bower` is a JavaScript dependency manager that `purescript`
and `pulp` build on top of to manage the dependencies in a given project.

## Scaffold A New Project

We'll use `pulp` to scaffold out a new project:

    $ cd /some/path
    $ mkdir purs-lesson1 && cd $_
    $ pulp init
    $ bower install purescript-arrays --save

This will output something along the lines of:

```
.
├── bower.json
├── bower_components/
│   ├── purescript-arrays/
│   ├── purescript-bifunctors/
│   ├── purescript-console/
│   ├── purescript-control/
│   ├── purescript-eff/
│   ├── purescript-foldable-traversable/
│   ├── purescript-invariant/
│   ├── purescript-maybe/
│   ├── purescript-monoid/
│   ├── purescript-partial/
│   ├── purescript-prelude/
│   ├── purescript-psci-support/
│   ├── purescript-st/
│   ├── purescript-tuples/
│   └── purescript-unfoldable/
├── src/
│   └── Main.purs
└── test/
    └── Main.purs
```

We won't be using the `src` or `test` files, but the important bits are in the
`bower.json` file and packages installed within `bower_components/`,
particularly `purescript-prelude` and some others, which will allow us to run
the commands below.

## Start the PureScript REPL

Once scaffolding is complete, start up a PureScript REPL:

    $ pulp psci
    > import Prelude

## Basic PureScript Syntax

### Primitives

Primitive data types correspond directly to their JavaScript counterparts at
runtime.

```haskell
-- :: Number
3.2

-- :: Int
3

-- :: Boolean
true
false

-- :: String
"hello world" -- Double quotes only! Single quotes are reserved for the Char type

-- :: Char
'c'

-- null and undefined DO NOT EXIST
```

### Logic

```haskell
not true --> false
42 == 42 --> true
42 /= 42 --> false (not equal)
42 >= 42 --> true (comparisons: <, <=, >=, >)
true && false --> false
true || false --> true
```

### Arrays

Arrays translate to JavaScript arrays, but MUST be homogeneous!

```haskell
-- :: Array Int
[1, 2, 3, 5, 8]

-- :: Array Boolean
[true, true, false]
```

### Records

Records translate to JavaScript objects. They can have zero or more fields
with heterogeneous values.

```haskell
-- { title :: String
-- , completed :: Boolean
-- }
let todo = { title: "Make lunch-n-learn lesson"
           , completed: false
           }

-- Property access
todo.completed --> false
```

### Applying Functions

- Almost everything (including operators!) is a function
- To call a function, supply the function name and all parameters, separated by spaces
- Functions are left-associative
- All functions are curried
- Use parens to nest calls as needed

```haskell
add 3 5 --> 8
3 + 5 --> 8 (infix alias)

sub 8 4 --> 4
8 - 4 --> 4 (infix alias)

mul 3 5 --> 15
3 * 5 --> 15 (infix alias)

negate 3 --> -3
not true --> false

-- Use backticks to make any function an infix function
3 `add` 5 --> 8

-- Use parens to use infix functions in prefix form
(+) 3 5 --> 8

add 1 (add 2 (add 3 4)) --> 10

-- The $ operator can be used to avoid deep nesting:
add 1 $ add 2 $ add 3 4 --> 10
```

### Defining Functions

Exit `psci` with `^D` and restart it in multiline mode:

    $ pulp psci -m
    > import Prelude

Notes:
- In multiline mode, lines are terminated with `enter` followed by `^D`.
- `let` in these examples is only needed in `psci`
- Whitespace is significant

```haskell
let inc :: Int -> Int
    inc x = x + 1

inc 4 --> 5

-- Same as inc, but leverages currying
let inc' = add 1

-- Function application has higher precedence than operators:
inc 3 * inc 4 - inc 2 --> 17

-- Conditional
let abs :: Int -> Int
    abs x = if x >= 0 then x else -x

-- Guards
let abs' :: Int -> Int
    abs x | x >= 0    = x
          | otherwise = -x

-- Pattern matching (use underscore for unused placeholders)
let isEmpty :: forall a. Array a -> Boolean
    isEmpty [] = true
    isEmpty _ = false

-- Lambda expressions
(\x y -> x*x + y*y) 4 5 --> 41
```
