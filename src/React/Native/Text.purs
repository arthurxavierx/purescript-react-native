module React.Native.Text where

import Prelude
import React (handle, EventHandlerContext, Event, ReactElement, ReactClass)
import React.DOM.Props (unsafeMkProps, Props)
import React.Native (createElement)
import Unsafe.Coerce (unsafeCoerce)

foreign import textClass :: ∀ props. ReactClass props

-- | Create a `TextView` element from an array of `Props` and an array
-- | of children `ReactElement`.
textView :: Array Props -> Array ReactElement -> ReactElement
textView = createElement textClass

-- | Create a `TextView` element with props from a String.
text :: Array Props -> String -> ReactElement
text props str = textView props [unsafeCoerce str]

-- Props
data LineBreakMode
  = LineBreakHead
  | LineBreakMiddle
  | LineBreakTail
  | LineBreakClip

instance showLineBreakMode :: Show LineBreakMode where
  show LineBreakHead = "head"
  show LineBreakMiddle = "middle"
  show LineBreakTail = "tail"
  show LineBreakClip = "clip"

lineBreakMode :: LineBreakMode -> Props
lineBreakMode = unsafeMkProps "lineBreakMode" <<< show

numberOfLines :: Int -> Props
numberOfLines = unsafeMkProps "numberOfLines"

selectable :: Boolean -> Props
selectable = unsafeMkProps "selectable"

allowFontScaling :: Boolean -> Props
allowFontScaling = unsafeMkProps "allowFontScaling"

suppressHighlighting :: Boolean -> Props
suppressHighlighting = unsafeMkProps "suppressHighlighting"

-- Events
onPress :: ∀ eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
onPress = unsafeMkProps "onPress" <<< handle

onLongPress :: ∀ eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
onLongPress = unsafeMkProps "onLongPress" <<< handle
