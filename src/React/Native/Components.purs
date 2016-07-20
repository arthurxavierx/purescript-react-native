module React.Native.Components
  ( createElement
  , view
  , textView
  , text
  ) where

import React (ReactClass, ReactElement)
import React.DOM.Props (Props)
import Unsafe.Coerce (unsafeCoerce)

-- | Create a `ReactElement` from a given `ReactClass`, an array of props and an
-- | array of children elements.
-- |
-- | This function had to be redefined in this package because the current
-- | version of React.createElement does not convert the expected props
-- | parameter to an object when calling the foreign createElement function.
foreign import createElement :: ∀ props. ReactClass props -> props -> Array ReactElement -> ReactElement

foreign import viewClass :: ∀ props. ReactClass props
foreign import textClass :: ∀ props. ReactClass props

-- | Create a `View` element from an array of `Props` and an array
-- | of children `ReactElement`.
view :: Array Props -> Array ReactElement -> ReactElement
view = createElement viewClass

-- | Create a `TextView` element from an array of `Props` and an array
-- | of children `ReactElement`.
textView :: Array Props -> Array ReactElement -> ReactElement
textView = createElement textClass

-- | Create a `TextView` element with props from a String.
text :: Array Props -> String -> ReactElement
text props str = textView props [unsafeCoerce str]
