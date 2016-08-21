module React.Native.TouchableWithoutFeedback where

import Data.Array (singleton)
import React (createElement, ReactElement, ReactClass)
import React.Native.Props (Props, unsafeFromPropsArray)
import React.Native.Touchable (class Touchable)

foreign import data TouchableWithoutFeedback :: *
instance touchableTouchableWithoutFeedback ::  Touchable TouchableWithoutFeedback

foreign import touchableWithoutFeedbackClass :: ReactClass (Props TouchableWithoutFeedback)

-- | Create a `TouchableWithoutFeedback` component with props and children.
touchableWithoutFeedback :: Array (Props TouchableWithoutFeedback) -> ReactElement -> ReactElement
touchableWithoutFeedback props child = createElement touchableWithoutFeedbackClass (unsafeFromPropsArray props) (singleton child)

