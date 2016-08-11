module React.Native.Navigator where

import Prelude
import Control.Monad.Aff (Aff, makeAff)
import Control.Monad.Eff (Eff)
import React (createElement, handle, EventHandlerContext, ReactElement, ReactClass)
import React.Native.Navigator.Route (SceneConfig, Route)
import React.Native.Props (unsafeFromPropsArray, unsafeMkProps, Props)
import React.Native.Styles (Style)

foreign import navigatorClass :: ReactClass (Props Navigator)
foreign import navigationBarClass :: ReactClass (Props NavigationBar)

-- | This effect reprents computations that modify the navigation state of
-- | the application.
foreign import data NAVIGATION :: !

newtype Navigator = Navigator ReactElement

-- | Create a `Navigator` component from a `RenderScene` function,
-- | an initial `Route` and an array of `Props`.
navigator :: ∀ props. RenderScene props -> Route props -> Array (Props Navigator) -> Navigator
navigator render route props = Navigator $ createElement navigatorClass props' []
  where
    props' = unsafeFromPropsArray $ props <> [renderScene render, initialRoute route]

foreign import data NavigationBar :: *

-- | Create a `NavigationBar` component with props.
navigationBar :: Array (Props NavigationBar) -> ReactElement
navigationBar props = createElement navigationBarClass (unsafeFromPropsArray props) []

-- Props
configureScene :: ∀ props. (Route props -> Array (Route props) -> SceneConfig) -> Props Navigator
configureScene = unsafeMkProps "configureScene"

initialRoute :: ∀ props. Route props -> Props Navigator
initialRoute = unsafeMkProps "initialRoute"

initialRouteStack :: ∀ props. Array (Route props) -> Props Navigator
initialRouteStack rs = unsafeMkProps "initialRouteStack" rs

_navigationBar :: ∀ props. ReactClass props -> Props Navigator
_navigationBar = unsafeMkProps "navigationBar"

_navigator :: ReactElement -> Props Navigator
_navigator = unsafeMkProps "navigator"

onDidFocus :: ∀ eff props state result. (Route props -> EventHandlerContext eff props state result) -> Props Navigator
onDidFocus = unsafeMkProps "onDidFocus" <<< handle

onWillFocus :: ∀ eff props state result. (Route props -> EventHandlerContext eff props state result) -> Props Navigator
onWillFocus = unsafeMkProps "onWillFocus" <<< handle

type RenderScene props = Route props -> Navigator -> ReactElement

renderScene :: ∀ props. RenderScene props -> Props Navigator
renderScene = unsafeMkProps "renderScene"

sceneStyle :: Array (Props Style) -> Props Navigator
sceneStyle = unsafeMkProps "sceneStyle" <<< unsafeFromPropsArray

-- Methods
-- | Reset every scene with an array of routes.
foreign import immediatelyResetRouteStack :: ∀ props e. Navigator -> Array (Route props) -> Eff (navigation :: NAVIGATION | e) Unit

-- | Transition to an existing scene without unmounting.
foreign import jumpTo :: ∀ props e. Navigator -> Route props -> Eff (navigation :: NAVIGATION | e) Unit
-- | Jump forward to the next scene in the route stack.
foreign import jumpForward :: ∀ e. Navigator -> Eff (navigation :: NAVIGATION | e) Unit
-- | Jump backward without unmounting the current scene.
foreign import jumpBack :: ∀ e. Navigator -> Eff (navigation :: NAVIGATION | e) Unit

-- | Navigate forward to a new scene, squashing any scenes to which you could
-- | jump forward.
foreign import push :: ∀ props e. Navigator -> Route props -> Eff (navigation :: NAVIGATION | e) Unit
-- | Transition back and unmount the current scene.
foreign import pop :: ∀ e. Navigator -> Eff (navigation :: NAVIGATION | e) Unit

foreign import replaceAtIndexWithCallback :: ∀ props a e. Navigator -> Route props -> Int -> (a -> Eff e Unit) -> Eff e Unit

-- | Replace a scene as specified by an index.
replaceAtIndex :: ∀ props e. Navigator -> Route props -> Int -> Aff e Unit
replaceAtIndex n rs i = makeAff $ \error success -> replaceAtIndexWithCallback n rs i success

-- | Replace the current scene with a new route.
foreign import replace :: ∀ props e. Navigator -> Route props -> Eff (navigation :: NAVIGATION | e) Unit
-- | Replace the previous scene.
foreign import replacePrevious :: ∀ props e. Navigator -> Route props -> Eff (navigation :: NAVIGATION | e) Unit

-- | Pop to the first scene in the stack, unmounting every other scene.
foreign import popToTop :: ∀ e. Navigator -> Eff (navigation :: NAVIGATION | e) Unit
-- | Pop to a particular scene, as specified by its route. All scenes after it will be unmounted.
foreign import popToRoute :: ∀ props e. Navigator -> Route props -> Eff (navigation :: NAVIGATION | e) Unit

-- | Replace the previous scene and pop to it.
foreign import replacePreviousAndPop :: ∀ props e. Navigator -> Route props -> Eff (navigation :: NAVIGATION | e) Unit

-- | Navigate to a new scene and reset route stack.
foreign import resetTo :: ∀ props e. Navigator -> Route props -> Eff (navigation :: NAVIGATION | e) Unit

-- | Returns the current list of routes.
foreign import getCurrentRoutes :: ∀ props e. Navigator -> Eff (navigation :: NAVIGATION | e) (Array (Route props))
