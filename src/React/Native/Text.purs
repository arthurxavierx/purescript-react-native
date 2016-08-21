module React.Native.Text where

import Prelude
import React (ReactElement, ReactClass, createElement)
import React.Native.Props (unsafeFromPropsArray, unsafeMkProps, Props)
import React.Native.Touchable (class Touchable)
import Unsafe.Coerce (unsafeCoerce)

foreign import data Text :: *
instance touchableText :: Touchable Text

foreign import textClass :: ∀ props. ReactClass props

-- | Create a `TextView` element from an array of `Props` and an array
-- | of children `ReactElement`.
textView :: Array (Props Text) -> Array ReactElement -> ReactElement
textView = createElement textClass <<< unsafeFromPropsArray

-- | Create a `TextView` element with props from a String.
text :: Array (Props Text) -> String -> ReactElement
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

lineBreakMode :: LineBreakMode -> Props Text
lineBreakMode = unsafeMkProps "lineBreakMode" <<< show

numberOfLines :: Int -> Props Text
numberOfLines = unsafeMkProps "numberOfLines"

selectable :: Boolean -> Props Text
selectable = unsafeMkProps "selectable"

allowFontScaling :: Boolean -> Props Text
allowFontScaling = unsafeMkProps "allowFontScaling"

suppressHighlighting :: Boolean -> Props Text
suppressHighlighting = unsafeMkProps "suppressHighlighting"
