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
onPress :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
onPress = unsafeMkProps "onPress" <<< handle

onLongPress :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
onLongPress = unsafeMkProps "onLongPress" <<< handle

-- Image
onLoad :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
onLoad = unsafeMkProps "onLoad" <<< handle

onLoadStart :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
onLoadStart = unsafeMkProps "onLoadStart" <<< handle

onLoadEnd :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
onLoadEnd = unsafeMkProps "onLoadEnd" <<< handle

-- TextInput
onBlur :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
onBlur = unsafeMkProps "onBlur" <<< handle

onChange :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
onChange = unsafeMkProps "onChange" <<< handle

onChangeText :: forall eff props state result. (String -> EventHandlerContext eff props state result) -> Props
onChangeText = unsafeMkProps "onChangeText" <<< handle

onFocus :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
onFocus = unsafeMkProps "onFocus" <<< handle
