module Main where

import Prelude

import Pux (start, fromSimple, renderToDOM)
import App.Data
import App.Rectangle (update, view)


main = do
    app <- start
        { initialState: Rectangle (Point { x: Pixel 40, y: Pixel 150 })
                                  (Pixel 300)
                                  (Pixel 100)
        , update: fromSimple update
        , view: view
        , inputs: []
        }

    renderToDOM "#app" app.html
