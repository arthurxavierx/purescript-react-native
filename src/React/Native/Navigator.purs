module React.Native.Navigator where

import Prelude
import Control.Monad.Aff (Aff, makeAff)
import Control.Monad.Eff (Eff)
import React (handle, EventHandlerContext, ReactElement, ReactClass)
import React.DOM.Props (unsafeFromPropsArray, unsafeMkProps, Props)
import React.Native (createElement)
import React.Native.Navigator.Route (SceneConfig, Route)

foreign import navigatorClass :: ∀ props. ReactClass props
foreign import navigationBarClass :: ∀ props. ReactClass props

foreign import data NAVIGATION :: !

newtype Navigator = Navigator ReactElement

navigator :: ∀ props. RenderScene props -> Route props -> Array Props -> Navigator
navigator render route props = Navigator $ createElement navigatorClass props' []
  where
    props' = props <> [renderScene render, initialRoute route]

navigationBar :: Array Props -> ReactElement
navigationBar props = createElement navigationBarClass props []

-- Props
configureScene :: ∀ props. (Route props -> Array (Route props) -> SceneConfig) -> Props
configureScene = unsafeMkProps "configureScene"

initialRoute :: ∀ props. Route props -> Props
initialRoute = unsafeMkProps "initialRoute"

initialRouteStack :: ∀ props. Array (Route props) -> Props
initialRouteStack rs = unsafeMkProps "initialRouteStack" rs

_navigationBar :: ∀ props. ReactClass props -> Props
_navigationBar = unsafeMkProps "navigationBar"

_navigator :: ReactElement -> Props
_navigator = unsafeMkProps "navigator"

onDidFocus :: forall eff props state result. (Route props -> EventHandlerContext eff props state result) -> Props
onDidFocus = unsafeMkProps "onDidFocus" <<< handle

onWillFocus :: forall eff props state result. (Route props -> EventHandlerContext eff props state result) -> Props
onWillFocus = unsafeMkProps "onWillFocus" <<< handle

type RenderScene props = Route props -> ReactElement -> ReactElement

renderScene :: ∀ props. RenderScene props -> Props
renderScene = unsafeMkProps "renderScene"

sceneStyle :: Array Props -> Props
sceneStyle = unsafeMkProps "sceneStyle" <<< unsafeFromPropsArray

-- Methods
foreign import immediatelyResetRouteStack :: ∀ props e. Navigator -> Array (Route props) -> Eff (navigation :: NAVIGATION | e) Unit

foreign import jumpTo :: ∀ props e. Navigator -> Route props -> Eff (navigation :: NAVIGATION | e) Unit
foreign import jumpForward :: ∀ e. Navigator -> Eff (navigation :: NAVIGATION | e) Unit
foreign import jumpBack :: ∀ e. Navigator -> Eff (navigation :: NAVIGATION | e) Unit

foreign import push :: ∀ props e. Navigator -> Route props -> Eff (navigation :: NAVIGATION | e) Unit
foreign import pop :: ∀ e. Navigator -> Eff (navigation :: NAVIGATION | e) Unit

foreign import _replaceAtIndex :: ∀ props a e. Navigator -> Route props -> Int -> (a -> Eff e Unit) -> Eff e Unit

replaceAtIndex :: ∀ props e. Navigator -> Route props -> Int -> Aff e Unit
replaceAtIndex n rs i = makeAff $ \error success -> _replaceAtIndex n rs i success
