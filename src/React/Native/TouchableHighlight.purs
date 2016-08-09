module React.Native.TouchableHighlight where

import Prelude
import Color (Color, toHexString)
import React (createElement, handle, EventHandlerContext, Event, ReactElement, ReactClass)
import React.Native.Props (unsafeFromPropsArray, unsafeMkProps, Props)

foreign import data TouchableHighlight :: *
foreign import touchableHighlightClass :: ReactClass (Props TouchableHighlight)

-- | Create a `TouchableHighlight` component with props and children.
touchableHighlight :: Array (Props TouchableHighlight) -> Array ReactElement -> ReactElement
touchableHighlight = createElement touchableHighlightClass <<< unsafeFromPropsArray

-- Props
activeOpacity :: Number -> Props TouchableHighlight
activeOpacity = unsafeMkProps "activeOpacity"

underlayColor :: Color -> Props TouchableHighlight
underlayColor = unsafeMkProps "underlayColor" <<< toHexString

-- Events
onHideUnderlay :: ∀ eff props state result. (Event -> EventHandlerContext eff props state result) -> Props TouchableHighlight
onHideUnderlay = unsafeMkProps "onHideUnderlay" <<< handle

onShowUnderlay :: ∀ eff props state result. (Event -> EventHandlerContext eff props state result) -> Props TouchableHighlight
onShowUnderlay = unsafeMkProps "onShowUnderlay" <<< handle
