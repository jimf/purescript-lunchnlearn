# Draggy

Get a taste of web-application development in PureScript by building a tiny
showcase of reactive field inputs and drag-and-drop rectangles.

## Pux

This workshop is built upon a PureScript library called [Pux](https://github.com/alexmingoia/purescript-pux).
Pux itself is an abstraction layer on top of [React](https://facebook.github.io/react/),
and has been modeled to follow the [Elm architecture](https://github.com/evancz/elm-architecture-tutorial).

## Tasks

This workshop is comprised of mini-tasks. Consider all of the following as
optional and unordered, and feel free to work on your own goals, so long as
they fit the general theme.

- Modify the width/height inputs to instead use the `range` input type
- Implement min/max values for the width/height inputs
- Add inputs for positioning
- Add drag-and-drop support for the rectangle
  - Method 1: Via `mousedown`, `mousemove`, and `mouseup` events
    - Bonus: Retain "grab position" in relation to cursor/rectangle when moving
  - Method 2: Via `draggable` attribute
- Render a second rectangle
  - Bonus: apply a visual effect (e.g., change background color) when the rectangles intersect
- Define and render a new shape to work with

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
    $ cd purescript-lunchnlearn/workshops/draggy
    $ npm install
    $ bower install
    $ npm watch
    $ npm start # new shell

Make updates to the files in `src` as per the instructions above. No tests
have been included, but feel free to write your own.

### Files

#### `Main.purs`

Main application entry way. This module defines the application's initial
state and renders it to the DOM. Since it uses React under the hood, from this
point onward, any updates made to the state will cause the DOM to be updated
to reflect those changes.

#### `App/Data.purs`

Defines the data types needed for the application, as well as functions for
working with those data types.

#### `App/Rectangle.purs`

Defines a Pux Rectangle component, as well as any helper functions needed for
interfacing with Pux.

### Commands

#### `npm run build`

One-time build. Outputs to `app.js`.

#### `npm start`

Starts a server for the application. The server will watch for changes to `app.js`
and automatically refresh the browser.

#### `npm watch`

Watches PureScript source files for changes and automatically rebuilds `app.js`.

## Resources

- [Pux API Reference](http://www.alexmingoia.com/purescript-pux/docs/API/Pux.html)
