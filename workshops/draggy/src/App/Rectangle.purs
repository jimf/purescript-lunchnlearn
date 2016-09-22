module App.Rectangle where

import Prelude
import Data.Maybe (maybe)
import Data.Tuple
import Pux.Html (Html, div, input, label, span, text)
import Pux.Html.Attributes (type_, className, style, value)
import Pux.Html.Events (FormEvent, onChange)

import App.Data


getValue :: FormEvent -> String
getValue ev = ev.target.value


data Action
    = SetWidth FormEvent
    | SetHeight FormEvent


type State = Shape


update :: Action -> State -> State
update (SetWidth ev) s = maybe s (flip setWidth $ s) (pixelFromString $ getValue ev)
update (SetHeight ev) s = maybe s (flip setHeight $ s) (pixelFromString $ getValue ev)


view :: State -> Html Action
view (Rectangle (Point { x: left, y: top }) (Pixel w) (Pixel h)) =
    div
        []
        [ label [] [ span [] [ text "Width" ]
                   , input [ type_ "number", onChange SetWidth, value $ show w ] []
                   ]
        , label [] [ span [] [ text "Height" ]
                   , input [ type_ "number", onChange SetHeight, value $ show h ] []
                   ]
        , div [ style [ Tuple "width" (show w <> "px")
                      , Tuple "height" (show h <> "px")
                      , Tuple "top" (show top)
                      , Tuple "left" (show left)
                      ]
              , className "rectangle"
              ] []
        ]
