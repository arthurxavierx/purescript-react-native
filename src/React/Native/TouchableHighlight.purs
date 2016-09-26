module React.Native.TouchableHighlight where

import Prelude
import Color (Color, toHexString)
import Data.Array (singleton)
import React (createElement, handle, EventHandlerContext, Event, ReactElement, ReactClass)
import React.Native.Props.Type (unsafeFromPropsArray, unsafeMkProps, Props)
import React.Native.Touchable (class Touchable)

foreign import data TouchableHighlight :: *
instance touchableTouchableHighlight :: Touchable TouchableHighlight

foreign import touchableHighlightClass :: ReactClass (Props TouchableHighlight)

-- | Create a `TouchableHighlight` component with props and children.
touchableHighlight :: Array (Props TouchableHighlight) -> ReactElement -> ReactElement
touchableHighlight props child = createElement touchableHighlightClass (unsafeFromPropsArray props) (singleton child)

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
