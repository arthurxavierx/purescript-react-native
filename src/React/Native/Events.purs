module React.Native.Events where

import Prelude
import React (Event, handle, EventHandlerContext)
import React.DOM.Props (Props, unsafeMkProps)

-- General
type LayoutEvent =
  { nativeEvent ::
    { layout ::
      { x :: Number
      , y :: Number
      , width :: Number
      , height :: Number
      }
    }
  }

onLayout :: ∀ eff props state result. (LayoutEvent -> EventHandlerContext eff props state result) -> Props
onLayout = unsafeMkProps "onLayout" <<< handle

-- View

-- Text
onPress :: ∀ eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
onPress = unsafeMkProps "onPress" <<< handle

onLongPress :: ∀ eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
onLongPress = unsafeMkProps "onLongPress" <<< handle

-- Image
onLoad :: ∀ eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
onLoad = unsafeMkProps "onLoad" <<< handle

onLoadStart :: ∀ eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
onLoadStart = unsafeMkProps "onLoadStart" <<< handle

onLoadEnd :: ∀ eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
onLoadEnd = unsafeMkProps "onLoadEnd" <<< handle

-- TextInput
onBlur :: ∀ eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
onBlur = unsafeMkProps "onBlur" <<< handle

onChange :: ∀ eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
onChange = unsafeMkProps "onChange" <<< handle

onChangeText :: ∀ eff props state result. (String -> EventHandlerContext eff props state result) -> Props
onChangeText = unsafeMkProps "onChangeText" <<< handle

onFocus :: ∀ eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
onFocus = unsafeMkProps "onFocus" <<< handle
