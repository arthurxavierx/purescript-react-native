module React.Native
  ( PLATFORM
  , Platform(..)
  , platform
  , registerComponent
  ) where

import Prelude
import Control.Monad.Eff (Eff)
import React (ReactClass)

foreign import platformName :: String

data Platform = Android | IOS

-- | Platform OS for the current build.
-- | This value remains constant throughout an application, and only changes
-- | on different builds for different platforms.
platform :: Platform
platform
  | platformName == "android" = Android
  | otherwise = IOS

-- | This effect represents computations which may access or perform operations
-- | on the native platform.
foreign import data PLATFORM :: !

-- | Register a React Native component from a given `ReactClass` with a name
-- | so it can be accessed from the native platform.
foreign import registerComponent :: ∀ eff props. String -> ReactClass props -> Eff (platform :: PLATFORM | eff) Unit
