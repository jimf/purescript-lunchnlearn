# Lesson 1: Build env / tools and basic syntax

In this first lesson, we'll take a look at the build tools used in a typical
PureScript project, how to scaffold out a new project, and finally use the
PureScript REPL to dive into some basic syntax.

[Slides](http://speakerdeck.com/jimf/purescript-lunchnlearn-lesson1)

## Getting Started

First, be sure to have Node.js installed (v4.0 or greater recommended), along
with npm (which generally comes bundled with Node). Recommended installation
methods:

- Via `brew`: `$ brew install node`
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

This will output something along the lines of:

```
.
├── bower.json
├── bower_components/
│   ├── purescript-console/
│   ├── purescript-eff/
│   └── purescript-prelude/
├── src/
│   └── Main.purs
└── test/
    └── Main.purs
```

We won't be using any of these, but the important bit is the `bower.json` file,
as well as the packages installed within `bower_components/`, particularly
`purescript-prelude`, which will allow us to run the commands below.

## Start the PureScript REPL

Once scaffolding is complete, start up a PureScript REPL:

    $ pulp psci
    > import Prelude

## Basic PureScript Syntax

### Primitives

Primitive data types correspond directly to their JavaScript counterparts at
runtime.

```haskell
-- Numbers
3.2

-- :type 3.2 ==> Number

-- Integers
3

-- :type 3 ==> Int

-- Booleans
true
false

-- :type true ==> Boolean

-- Strings
"hello world" -- (single quotes are reserved for the Char type)

-- Chars
'c'

-- :type 'c' ==> Char

-- null and undefined DO NOT EXIST
```

### Arrays

Arrays translate to JavaScript arrays, but MUST be homogeneous!

```haskell
-- Arrays
[1, 2, 3, 5, 8]
[true, true, false]

-- :type [1, 2, 3, 45] ==> Array Int
-- :type [true, false] ==> Array Boolean
```

### Records

Records translate to JavaScript objects. They can have zero or more fields
with heterogeneous values.

```haskell
-- Records
let todo = { title: "Make lunch-n-learn lesson", completed: false }

-- :type todo
-- { title :: String
-- , completed :: Boolean
-- }
```
