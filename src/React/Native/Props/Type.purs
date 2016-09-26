module React.Native.Props.Type where

foreign import data Props :: * -> *

foreign import unsafeMkProps :: ∀ a prop. String -> prop -> Props a

foreign import unsafeFromPropsArray :: ∀ a. Array (Props a) -> Props a
