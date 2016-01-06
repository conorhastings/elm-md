module MarkdownEditor where
-- Elm’s "import" keyword works mostly like "require" in node.js.
-- The “exposing (..)” option specifies that we want to bring the Html module’s contents
-- into this file’s current namespace, so that instead of writing out
-- Html.form and Html.label we can just use "form" and "label" without the "Html." prefix.
import Html exposing(..)
-- This works the same way; we also want to import the entire
-- Html.Events module into the current namespace.
import Html.Events exposing (..)
-- With this import we are only bringing a few specific functions into our
-- namespace, specifically "id", "type'", "for", "value", and "class".
import Html.Attributes exposing (id, type', for, value, class, style)
-- creates a view that is a navbar
view =
    div
    [
        containerStyle
    ] [
        div
        [
            navStyle
        ][
        ],
        div
        [
            markdownStyle
        ] [

        ]
    ]
containerStyle: Attribute
containerStyle =
    style
    [   ("position", "absolute")
    ,   ("display", "flex")
    ,   ("flex-direction", "column")
    ,   ("flex-wrap", "no-wrap")
    ,   ("align-items", "center")
    ,   ("top", "0")
    ,   ("bottom", "0")
    ,   ("left", "0")
    ,   ("right", "0")
    ,   ("background-color", "#303030")
    ]

navStyle: Attribute
navStyle =
    style
    [   ("width", "100%")
    ,   ("height", "55px")
    ,   ("display", "flex")
    ,   ("flex-direction", "row")
    ,   ("background-color", "#212121")
    ,   ("box-shadow", "0px 2px 2px #000000")
    ]

markdownStyle: Attribute
markdownStyle =
    style
    [   ("width", "75%")
    ,   ("min-height", "400px")
    ,   ("margin-top", "50px")
    ,   ("background-color", "#424242")
    ,   ("box-shadow", "0px 2px 5px #000000")
    ]
main = view
