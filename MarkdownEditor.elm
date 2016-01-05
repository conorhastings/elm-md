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
-- startapp is boilerplate that most elm apps will use to follow the recommended
-- elm architecture
import StartApp.Simple as StartApp
-- creates a view that is a navbar
view =
    div
    [
        navStyle
    ][
    ]

navStyle: Attribute
navStyle =
    style
    [   ("position", "absolute")
    ,   ("width", "100%")
    ,   ("height", "55px")
    ,   ("display", "flex")
    ,   ("flex-direction", "row")
    ,   ("background-color", "#1abc9c")
    ,   ("top", "0")
    ,   ("left", "0")
    ,   ("box-shadow", "0px 2px 2px #34495e")
    ]

main = view
