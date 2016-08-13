module React.Native.Navigator where

import Prelude
import Control.Monad.Aff (Aff, makeAff)
import Control.Monad.Eff (Eff)
import Data.Function.Uncurried (mkFn2)
import React (createElement, handle, EventHandlerContext, ReactElement, ReactClass)
import React.Native.Navigator.Route (SceneConfig, Route, InitialRoute)
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
navigator :: ∀ state props. RenderScene state props -> InitialRoute state -> Array (Props Navigator) -> Navigator
navigator render route props = Navigator $ createElement navigatorClass props' []
  where
    props' = unsafeFromPropsArray $ props <> [renderScene render, initialRoute route]

foreign import data NavigationBar :: *

-- | Create a `NavigationBar` component with props.
navigationBar :: Array (Props NavigationBar) -> ReactElement
navigationBar props = createElement navigationBarClass (unsafeFromPropsArray props) []

-- Props
configureScene :: ∀ state props. (Route state props -> Array (Route state props) -> SceneConfig) -> Props Navigator
configureScene = unsafeMkProps "configureScene" <<< mkFn2

initialRoute :: ∀ state. InitialRoute state -> Props Navigator
initialRoute = unsafeMkProps "initialRoute"

initialRouteStack :: ∀ state props. Array (Route state props) -> Props Navigator
initialRouteStack rs = unsafeMkProps "initialRouteStack" rs

_navigationBar :: ∀ props. ReactClass props -> Props Navigator
_navigationBar = unsafeMkProps "navigationBar"

_navigator :: ∀ a. ReactElement -> Props a
_navigator = unsafeMkProps "navigator"

onDidFocus :: ∀ eff props state result. (Route state props -> EventHandlerContext eff props state result) -> Props Navigator
onDidFocus = unsafeMkProps "onDidFocus" <<< handle

onWillFocus :: ∀ eff props state result. (Route state props -> EventHandlerContext eff props state result) -> Props Navigator
onWillFocus = unsafeMkProps "onWillFocus" <<< handle

type RenderScene state props = Route state props -> Navigator -> ReactElement

renderScene :: ∀ state props. RenderScene state props -> Props Navigator
renderScene = unsafeMkProps "renderScene" <<< mkFn2

sceneStyle :: Array (Props Style) -> Props Navigator
sceneStyle = unsafeMkProps "sceneStyle" <<< unsafeFromPropsArray

-- Methods
-- | Reset every scene with an array of routes.
foreign import immediatelyResetRouteStack :: ∀ state props e. Navigator -> Array (Route state props) -> Eff (navigation :: NAVIGATION | e) Unit

-- | Transition to an existing scene without unmounting.
foreign import jumpTo :: ∀ state props e. Navigator -> Route state props -> Eff (navigation :: NAVIGATION | e) Unit
-- | Jump forward to the next scene in the route stack.
foreign import jumpForward :: ∀ e. Navigator -> Eff (navigation :: NAVIGATION | e) Unit
-- | Jump backward without unmounting the current scene.
foreign import jumpBack :: ∀ e. Navigator -> Eff (navigation :: NAVIGATION | e) Unit

-- | Navigate forward to a new scene, squashing any scenes to which you could
-- | jump forward.
foreign import push :: ∀ state props e. Navigator -> Route state props -> Eff (navigation :: NAVIGATION | e) Unit
-- | Transition back and unmount the current scene.
foreign import pop :: ∀ e. Navigator -> Eff (navigation :: NAVIGATION | e) Unit

foreign import replaceAtIndexWithCallback :: ∀ state props a e. Navigator -> Route state props -> Int -> (a -> Eff e Unit) -> Eff e Unit

-- | Replace a scene as specified by an index.
replaceAtIndex :: ∀ state props e. Navigator -> Route state props -> Int -> Aff e Unit
replaceAtIndex n rs i = makeAff $ \error success -> replaceAtIndexWithCallback n rs i success

-- | Replace the current scene with a new route.
foreign import replace :: ∀ state props e. Navigator -> Route state props -> Eff (navigation :: NAVIGATION | e) Unit
-- | Replace the previous scene.
foreign import replacePrevious :: ∀ state props e. Navigator -> Route state props -> Eff (navigation :: NAVIGATION | e) Unit

-- | Pop to the first scene in the stack, unmounting every other scene.
foreign import popToTop :: ∀ e. Navigator -> Eff (navigation :: NAVIGATION | e) Unit
-- | Pop to a particular scene, as specified by its route. All scenes after it will be unmounted.
foreign import popToRoute :: ∀ state props e. Navigator -> Route state props -> Eff (navigation :: NAVIGATION | e) Unit

-- | Replace the previous scene and pop to it.
foreign import replacePreviousAndPop :: ∀ state props e. Navigator -> Route state props -> Eff (navigation :: NAVIGATION | e) Unit

-- | Navigate to a new scene and reset route stack.
foreign import resetTo :: ∀ state props e. Navigator -> Route state props -> Eff (navigation :: NAVIGATION | e) Unit

-- | Returns the current list of routes.
foreign import getCurrentRoutes :: ∀ state props e. Navigator -> Eff (navigation :: NAVIGATION | e) (Array (Route state props))
