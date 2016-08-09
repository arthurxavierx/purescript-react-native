-- | The Props module provides definitions of Props functions that are common
-- | to many React Native elements.
module React.Native.Props where

foreign import data Props :: * -> *

foreign import unsafeMkProps :: ∀ a prop. String -> prop -> Props a

foreign import unsafeFromPropsArray :: ∀ a. Array (Props a) -> Props a

testID :: ∀ a. String -> Props a
testID = unsafeMkProps "testID"

accessible :: ∀ a. Boolean -> Props a
accessible = unsafeMkProps "accessible"

accessibilityLabel :: ∀ a. String -> Props a
accessibilityLabel = unsafeMkProps "accessibilityLabel"
