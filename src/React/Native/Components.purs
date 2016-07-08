module React.Native.Components
  ( createElement
  , view
  , textView
  , text
  ) where

import React (ReactClass, ReactElement)
import React.DOM.Props (Props)

-- | Create a `ReactElement` from a given `ReactClass`, an array of props and an
-- | array of children elements.
-- |
-- | This function had to be redefined in this package because the current
-- | version of React.createElement does not convert the expected props
-- | parameter to an object when calling the foreign createElement function.
foreign import createElement :: ∀ props. ReactClass props -> props -> Array ReactElement -> ReactElement

foreign import viewClass :: ∀ props. ReactClass props
foreign import textClass :: ∀ props. ReactClass props
foreign import text_ :: String -> ReactElement

-- | Create a `View` element from an array of `Props` and an array
-- | of children `ReactElement`.
view :: Array Props -> Array ReactElement -> ReactElement
view = createElement viewClass

-- | Create a `TextView` element from an array of `Props` and an array
-- | of children `ReactElement`.
textView :: Array Props -> Array ReactElement -> ReactElement
textView = createElement textClass

-- | Create a `TextView` element with empty props and no children from a String.
text :: String -> ReactElement
text str = textView [] [text_ str]
