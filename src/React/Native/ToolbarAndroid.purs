module React.Native.ToolbarAndroid where

import Prelude
import Color (toHexString, Color)
import Data.Maybe (Maybe)
import Data.Undefinable (toUndefinable)
import React (Event, handle, EventHandlerContext, ReactClass, ReactElement)
import React.DOM.Props (unsafeMkProps, Props)
import React.Native (createElement)
import React.Native.Image (ImageSource, toForeignImageSource)

foreign import toolbarAndroidClass :: ∀ props. ReactClass props

toolbarAndroid :: Array Action -> Array Props -> ReactElement
toolbarAndroid actions props = createElement toolbarAndroidClass props' []
  where
    props' = props <> [actionsProps]
    actionsProps = unsafeMkProps "actions" $ convertAction <$> actions
    convertAction a =
      { title: a.title
      , icon: toForeignImageSource <$> toUndefinable a.icon
      , show: show <$> toUndefinable a.show
      , showWithText: toUndefinable a.showWithText
      }

data ActionShow = Always | IfRoom | Never

instance showActionShow :: Show ActionShow where
  show Always = "always"
  show IfRoom = "ifRoom"
  show Never = "never"

type Action =
  { title :: String
  , icon :: Maybe ImageSource
  , show :: Maybe ActionShow
  , showWithText :: Maybe Boolean
  }

-- Props
contentInsetEnd :: Number -> Props
contentInsetEnd = unsafeMkProps "contentInsetEnd"

contentInsetStart :: Number -> Props
contentInsetStart = unsafeMkProps "contentInsetStart"

logo :: ImageSource -> Props
logo = unsafeMkProps "logo" <<< toForeignImageSource

navIcon :: ImageSource -> Props
navIcon = unsafeMkProps "navIcon" <<< toForeignImageSource

overflowIcon :: ImageSource -> Props
overflowIcon = unsafeMkProps "overflowIcon" <<< toForeignImageSource

rtl :: Boolean -> Props
rtl = unsafeMkProps "rtl"

subtitle :: String -> Props
subtitle = unsafeMkProps "subtitle"

subtitleColor :: Color -> Props
subtitleColor = unsafeMkProps "subtitleColor" <<< toHexString

title :: String -> Props
title = unsafeMkProps "title"

titleColor :: Color -> Props
titleColor = unsafeMkProps "titleColor" <<< toHexString

-- Events
onActionSelected :: ∀ eff props state result. (Int -> EventHandlerContext eff props state result) -> Props
onActionSelected = unsafeMkProps "onActionSelected" <<< handle

onIconClicked :: ∀ eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
onIconClicked = unsafeMkProps "onIconClicked" <<< handle
