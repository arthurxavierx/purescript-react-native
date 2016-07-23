module React.Native
  ( PLATFORM
  , Platform(..)
  , platform
  , registerComponent
  , createElement
  , view
  , textView
  , text
  , image
  ) where

import Prelude
import Control.Monad.Eff (Eff)
import React (ReactElement, ReactClass)
import React.DOM.Props (Props)
import Unsafe.Coerce (unsafeCoerce)

-- | This effect represents computations which may access or perform operations
-- | on the native platform.
foreign import data PLATFORM :: !

foreign import platformName :: String

data Platform = Android | IOS

-- | Platform OS for the current build.
-- | This value remains constant throughout an application, and only changes
-- | on different builds for different platforms.
platform :: Platform
platform
  | platformName == "android" = Android
  | otherwise = IOS

-- | Register a React Native component from a given `ReactClass` with a name
-- | so it can be accessed from the native platform.
foreign import registerComponent :: ∀ eff props. String -> ReactClass props -> Eff (platform :: PLATFORM | eff) Unit

-- | Create a `ReactElement` from a given `ReactClass`, an array of props and an
-- | array of children elements.
-- |
-- | This function had to be redefined in this package because the current
-- | version of React.createElement does not convert the expected props
-- | parameter to an object when calling the foreign createElement function.
foreign import createElement :: ∀ props. ReactClass props -> props -> Array ReactElement -> ReactElement

foreign import viewClass :: ∀ props. ReactClass props
foreign import textClass :: ∀ props. ReactClass props
foreign import imageClass :: ∀ props. ReactClass props
foreign import textInputClass :: ∀ props. ReactClass props

-- | Create a `View` element from an array of `Props` and an array
-- | of children `ReactElement`.
view :: Array Props -> Array ReactElement -> ReactElement
view = createElement viewClass

-- | Create a `TextView` element from an array of `Props` and an array
-- | of children `ReactElement`.
textView :: Array Props -> Array ReactElement -> ReactElement
textView = createElement textClass

-- | Create a `TextView` element with props from a String.
text :: Array Props -> String -> ReactElement
text props str = textView props [unsafeCoerce str]

-- | Create an `Image` element with props and no child elements.
image :: Array Props -> ReactElement
image props = createElement imageClass props []

-- | Create a `TextInput` element with props and no child elements.
textInput :: Array Props -> ReactElement
textInput props = createElement textInputClass props []
