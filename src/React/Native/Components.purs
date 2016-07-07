module React.Native.Components
  ( view
  ) where

import React (ReactClass, ReactElement)
import React.DOM.Props (Props)
import React.Native (createElement)

foreign import viewClass :: ∀ props. ReactClass props

-- | Create a `View` element from an array of `Props` and an array
-- | of children `ReactElement`.
view :: Array Props -> Array ReactElement -> ReactElement
view = createElement viewClass
