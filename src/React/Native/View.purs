module React.Native.View where

import Prelude
import React (ReactElement, ReactClass)
import React.DOM.Props (unsafeMkProps, Props)
import React.Native (createElement)

foreign import viewClass :: ∀ props. ReactClass props

-- | Create a `View` element from an array of `Props` and an array
-- | of children `ReactElement`.
view :: Array Props -> Array ReactElement -> ReactElement
view = createElement viewClass

-- Props
hitSlop ::
  ∀ a
  .  { top :: Number, left :: Number, bottom :: Number, right :: Number | a }
  -> Props
hitSlop = unsafeMkProps "hitSlop"

data PointerEvent
  = PointerEventAuto
  | PointerEventNone
  | PointerEventBoxOnly
  | PointerEventBoxNone

instance showPointerEvent :: Show PointerEvent where
  show PointerEventAuto = "auto"
  show PointerEventNone = "none"
  show PointerEventBoxOnly = "box-only"
  show PointerEventBoxNone = "box-none"

pointerEvents :: PointerEvent -> Props
pointerEvents = unsafeMkProps "pointerEvents" <<< show

removeClippedSubviews :: Boolean -> Props
removeClippedSubviews = unsafeMkProps "removeClippedSubviews"

collapsable :: Boolean -> Props
collapsable = unsafeMkProps "collapsable"
