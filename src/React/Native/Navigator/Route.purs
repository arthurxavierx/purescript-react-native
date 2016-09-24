module React.Native.Navigator.Route where

import React (ReactClass)

type InitialRoute state =
  { index :: state
  , title :: String
  }

type Route state props =
  { index :: state
  , title :: String
  , sceneConfig :: SceneConfig
  , component :: ReactClass props
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
