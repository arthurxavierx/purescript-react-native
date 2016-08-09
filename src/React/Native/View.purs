module React.Native.View where

import Prelude
import React (createElement, ReactElement, ReactClass)
import React.Native.Props (unsafeFromPropsArray, unsafeMkProps, Props)

foreign import data View :: *
foreign import viewClass :: ReactClass (Props View)

-- | Create a `View` element from an array of `Props` and an array
-- | of children `ReactElement`.
view :: Array (Props View) -> Array ReactElement -> ReactElement
view = createElement viewClass <<< unsafeFromPropsArray

-- Props
hitSlop ::
  ∀ a
  .  { top :: Number, left :: Number, bottom :: Number, right :: Number | a }
  -> Props View
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

pointerEvents :: PointerEvent -> Props View
pointerEvents = unsafeMkProps "pointerEvents" <<< show

removeClippedSubviews :: Boolean -> Props View
removeClippedSubviews = unsafeMkProps "removeClippedSubviews"

collapsable :: Boolean -> Props View
collapsable = unsafeMkProps "collapsable"
