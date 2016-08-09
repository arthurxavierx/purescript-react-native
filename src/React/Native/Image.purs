module React.Native.Image where

import Prelude
import React (createElement, EventHandlerContext, Event, handle, ReactElement, ReactClass)
import React.Native.Props (unsafeFromPropsArray, unsafeMkProps, Props)

foreign import data Image :: *
foreign import imageClass :: ReactClass (Props Image)

-- | Create an `Image` element with props and no child elements.
image :: Array (Props Image) -> ReactElement
image props = createElement imageClass (unsafeFromPropsArray props) []

-- Props
foreign import data ImageSource :: *

foreign import loadImage :: String -> ImageSource
foreign import loadImageUri :: String -> ImageSource

source :: ImageSource -> Props Image
source = unsafeMkProps "source"

blurRadius :: Number -> Props Image
blurRadius = unsafeMkProps "blurRadius"

-- Events
onLoad :: ∀ eff props state result. (Event -> EventHandlerContext eff props state result) -> Props Image
onLoad = unsafeMkProps "onLoad" <<< handle

onLoadStart :: ∀ eff props state result. (Event -> EventHandlerContext eff props state result) -> Props Image
onLoadStart = unsafeMkProps "onLoadStart" <<< handle

onLoadEnd :: ∀ eff props state result. (Event -> EventHandlerContext eff props state result) -> Props Image
onLoadEnd = unsafeMkProps "onLoadEnd" <<< handle
