module React.Native.Props where

import Prelude
import React.DOM.Props (Props, unsafeMkProps)

-- General
testID :: String -> Props
testID = unsafeMkProps "testID"

accessible :: Boolean -> Props
accessible = unsafeMkProps "accessible"

accessibilityLabel :: String -> Props
accessibilityLabel = unsafeMkProps "accessibilityLabel"

-- View
hitSlop ::
  ∀ a.
  { top :: Number, left :: Number, bottom :: Number, right :: Number | a }
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

-- Text
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

-- Image
data Source = SourceId Int | SourceUri String

source :: Source -> Props
source (SourceId id) = unsafeMkProps "source" id
source (SourceUri uri) = unsafeMkProps "source" {uri: uri}

blurRadius :: Number -> Props
blurRadius = unsafeMkProps "blurRadius"
