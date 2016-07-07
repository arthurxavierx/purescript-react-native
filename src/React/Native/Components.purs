module React.Native.Components
  ( view
  ) where

import React (ReactClass, ReactElement)
import React.DOM.Props (Props)
import React.Native (createElement)

foreign import viewClass :: ∀ props. ReactClass props

view :: Array Props -> Array ReactElement -> ReactElement
view = createElement viewClass
