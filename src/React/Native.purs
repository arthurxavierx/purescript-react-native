module React.Native
  ( PLATFORM
  , registerComponent
  , module React.Native.Components
  ) where

import Prelude
import React.Native.Components (createElement, view, textView, text)
import Control.Monad.Eff (Eff)
import React (ReactClass)

-- | This effect represents computations which may access or perform operations
-- | on the native platform.
foreign import data PLATFORM :: !

-- | Register a React Native component from a given `ReactClass` with a name
-- | so it can be accessed from the native platform.
foreign import registerComponent :: ∀ eff props. String -> ReactClass props -> Eff (platform :: PLATFORM | eff) Unit
