module React.Native
  ( PLATFORM
  , registerComponent
  ) where

import Prelude
import Control.Monad.Eff (Eff)
import React (ReactClass)

-- | This effect represents computations which may access or perform operations
-- | on the native platform.
foreign import data PLATFORM :: !

-- | Register a React Native component from a given `ReactClass` with a name
-- | so it can be accessed from the native platform.
foreign import registerComponent :: ∀ eff props. String -> ReactClass props -> Eff (platform :: PLATFORM | eff) Unit
