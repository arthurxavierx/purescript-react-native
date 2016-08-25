module React.Native.ToolbarAndroid where

import Prelude
import Color (toHexString, Color)
import Data.Maybe (Maybe)
import Data.Undefinable (Undefinable, toMaybe, toUndefinable)
import React (createElement, Event, handle, EventHandlerContext, ReactClass, ReactElement)
import React.Native.Image (ImageSource)
import React.Native.Props (unsafeMkProps, unsafeFromPropsArray, Props)

foreign import data ToolbarAndroid :: *
foreign import toolbarAndroidClass :: ReactClass (Props ToolbarAndroid)

-- | Create a `ToolbarAndroid` component with props and children.
toolbarAndroid :: Array ToolbarAction -> Array (Props ToolbarAndroid) -> ReactElement
toolbarAndroid actions' props = createElement toolbarAndroidClass props' []
  where
    props' = unsafeFromPropsArray $ props <> [actions actions']

data ToolbarActionShow = Always | IfRoom | Never

instance showActionShow :: Show ToolbarActionShow where
  show Always = "always"
  show IfRoom = "ifRoom"
  show Never = "never"

type ToolbarAction =
  { title :: String
  , icon :: Maybe ImageSource
  , show :: Maybe ToolbarActionShow
  , showWithText :: Maybe Boolean
  }

-- Props
actions :: Array ToolbarAction -> Props ToolbarAndroid
actions = unsafeMkProps "actions" <<< map convertAction
  where
    convertAction a =
      { title: a.title
      , icon: toUndefinable a.icon
      , show: mapUndefinable show (toUndefinable a.show)
      , showWithText: toUndefinable a.showWithText
      }
    mapUndefinable :: forall a b. (a -> b) -> Undefinable a -> Undefinable b
    mapUndefinable f = toUndefinable <<< map f <<< toMaybe

contentInsetEnd :: Number -> Props ToolbarAndroid
contentInsetEnd = unsafeMkProps "contentInsetEnd"

contentInsetStart :: Number -> Props ToolbarAndroid
contentInsetStart = unsafeMkProps "contentInsetStart"

logo :: ImageSource -> Props ToolbarAndroid
logo = unsafeMkProps "logo"

navIcon :: ImageSource -> Props ToolbarAndroid
navIcon = unsafeMkProps "navIcon"

overflowIcon :: ImageSource -> Props ToolbarAndroid
overflowIcon = unsafeMkProps "overflowIcon"

rtl :: Boolean -> Props ToolbarAndroid
rtl = unsafeMkProps "rtl"

subtitle :: String -> Props ToolbarAndroid
subtitle = unsafeMkProps "subtitle"

subtitleColor :: Color -> Props ToolbarAndroid
subtitleColor = unsafeMkProps "subtitleColor" <<< toHexString

title :: String -> Props ToolbarAndroid
title = unsafeMkProps "title"

titleColor :: Color -> Props ToolbarAndroid
titleColor = unsafeMkProps "titleColor" <<< toHexString

-- Events
onActionSelected :: ∀ eff props state result. (Int -> EventHandlerContext eff props state result) -> Props ToolbarAndroid
onActionSelected = unsafeMkProps "onActionSelected" <<< handle

onIconClicked :: ∀ eff props state result. (Event -> EventHandlerContext eff props state result) -> Props ToolbarAndroid
onIconClicked = unsafeMkProps "onIconClicked" <<< handle
