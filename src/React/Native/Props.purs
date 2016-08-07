-- | The Props module provides definitions of Props functions that are common
-- | to many React Native elements.
module React.Native.Props where

import React.DOM.Props (Props, unsafeMkProps)

testID :: String -> Props
testID = unsafeMkProps "testID"

accessible :: Boolean -> Props
accessible = unsafeMkProps "accessible"

accessibilityLabel :: String -> Props
accessibilityLabel = unsafeMkProps "accessibilityLabel"
