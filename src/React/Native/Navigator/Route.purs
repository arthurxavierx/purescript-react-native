module React.Native.Navigator.Route where

import React (ReactClass)
import React.DOM.Props (Props)

type Route props =
  { id :: String
  , title :: String
  , sceneConfig :: SceneConfig
  , component :: ReactClass props
  , passProps :: Props
  }

-- SceneConfig
foreign import data SceneConfig :: *

foreign import pushFromRight :: SceneConfig
foreign import floatFromRight :: SceneConfig
foreign import floatFromLeft :: SceneConfig
foreign import floatFromBottom :: SceneConfig
foreign import floatFromBottomAndroid :: SceneConfig
foreign import fadeAndroid :: SceneConfig
foreign import horizontalSwipeJump :: SceneConfig
foreign import horizontalSwipeJumpFromRight :: SceneConfig
foreign import verticalUpSwipeJump :: SceneConfig
foreign import verticalDownSwipeJump :: SceneConfig
