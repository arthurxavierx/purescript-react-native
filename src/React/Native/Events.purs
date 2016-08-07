-- | The Events module provides event definitions that are common to some
-- | React Native elements.
module React.Native.Events where

import Prelude
import React (EventHandlerContext, handle)
import React.DOM.Props (Props, unsafeMkProps)

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
