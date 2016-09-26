-- | The Events module provides event definitions that are common to some
-- | React Native elements.
module React.Native.Events
  ( onLayout
  , LayoutEvent
  , module Events
  ) where

import Prelude
import React (EventHandlerContext, handle)
import React.Native.Props (Props, unsafeMkProps)
import React.Native.Image (onLoad, onLoadStart, onLoadEnd) as Events
import React.Native.TextInput (onBlur, onChange, onChangeText, onFocus, onEndEditing, onSubmitEditing) as Events
import React.Native.ToolbarAndroid (onActionSelected, onIconClicked) as Events
import React.Native.Touchable (onLongPress, onPress, onPressIn, onPressOut) as Events
import React.Native.TouchableHighlight (onHideUnderlay, onShowUnderlay) as Events

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

onLayout :: ∀ a eff props state result. (LayoutEvent -> EventHandlerContext eff props state result) -> Props a
onLayout = unsafeMkProps "onLayout" <<< handle
