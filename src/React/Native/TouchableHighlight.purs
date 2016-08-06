module React.Native.TouchableHighlight where

import Prelude
import Color (Color, toHexString)
import React (handle, EventHandlerContext, Event, createElement, ReactElement, ReactClass)
import React.DOM.Props (unsafeMkProps, Props)

foreign import touchableHighlightClass :: ∀ props. ReactClass props

touchableHighlight :: Array Props -> Array ReactElement -> ReactElement
touchableHighlight = createElement touchableHighlightClass

-- Props
activeOpacity :: Number -> Props
activeOpacity = unsafeMkProps "activeOpacity"

underlayColor :: Color -> Props
underlayColor = unsafeMkProps "underlayColor" <<< toHexString

-- Events
onHideUnderlay :: ∀ eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
onHideUnderlay = unsafeMkProps "onHideUnderlay" <<< handle

onShowUnderlay :: ∀ eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
onShowUnderlay = unsafeMkProps "onShowUnderlay" <<< handle
