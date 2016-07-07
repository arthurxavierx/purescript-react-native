module React.Native
  ( PLATFORM
  , registerComponent
  ) where

import Prelude
import Control.Monad.Eff (Eff)
import React (ReactClass)

foreign import data PLATFORM :: !

foreign import registerComponent :: ∀ eff props. String -> ReactClass props -> Eff (platform :: PLATFORM | eff) Unit
