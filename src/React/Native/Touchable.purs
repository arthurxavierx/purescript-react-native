module React.Native.Touchable where

import Prelude
import React (handle, EventHandlerContext, Event)
import React.Native.Props.Type (Props, unsafeMkProps)

class Touchable a

-- Props
disabled :: ∀ a. (Touchable a) => Boolean -> Props a
disabled = unsafeMkProps "disabled"

delayLongPress :: ∀ a. (Touchable a) => Number -> Props a
delayLongPress = unsafeMkProps "delayLongPress"

delayPressIn :: ∀ a. (Touchable a) => Number -> Props a
delayPressIn = unsafeMkProps "delayPressIn"

delayPressOut :: ∀ a. (Touchable a) => Number -> Props a
delayPressOut = unsafeMkProps "delayPressOut"

-- Event
onLongPress :: ∀ a eff props state result. (Event -> EventHandlerContext eff props state result) -> Props a
onLongPress = unsafeMkProps "onLongPress" <<< handle

onPress :: ∀ a eff props state result. (Event -> EventHandlerContext eff props state result) -> Props a
onPress = unsafeMkProps "onPress" <<< handle

onPressIn :: ∀ a eff props state result. (Event -> EventHandlerContext eff props state result) -> Props a
onPressIn = unsafeMkProps "onPressIn" <<< handle

onPressOut :: ∀ a eff props state result. (Event -> EventHandlerContext eff props state result) -> Props a
onPressOut = unsafeMkProps "onPressOut" <<< handle
