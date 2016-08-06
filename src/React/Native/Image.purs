module React.Native.Image where

import Prelude
import React (EventHandlerContext, Event, handle, ReactElement, ReactClass)
import React.DOM.Props (unsafeMkProps, Props)
import React.Native (createElement)

foreign import imageClass :: ∀ props. ReactClass props

-- | Create an `Image` element with props and no child elements.
image :: Array Props -> ReactElement
image props = createElement imageClass props []

-- Props
data Source = SourceId Int | SourceUri String

source :: Source -> Props
source (SourceId id) = unsafeMkProps "source" id
source (SourceUri uri) = unsafeMkProps "source" {uri: uri}

blurRadius :: Number -> Props
blurRadius = unsafeMkProps "blurRadius"

-- Events
onLoad :: ∀ eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
onLoad = unsafeMkProps "onLoad" <<< handle

onLoadStart :: ∀ eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
onLoadStart = unsafeMkProps "onLoadStart" <<< handle

onLoadEnd :: ∀ eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
onLoadEnd = unsafeMkProps "onLoadEnd" <<< handle
