## Module React.Native.Navigator

#### `navigatorClass`

``` purescript
navigatorClass :: forall props. ReactClass props
```

#### `navigationBarClass`

``` purescript
navigationBarClass :: forall props. ReactClass props
```

#### `NAVIGATION`

``` purescript
data NAVIGATION :: !
```

This effect reprents computations that modify the navigation state of
the application.

#### `Navigator`

``` purescript
newtype Navigator
  = Navigator ReactElement
```

#### `navigator`

``` purescript
navigator :: forall props. RenderScene props -> Route props -> Array Props -> Navigator
```

Create a `Navigator` component from a `RenderScene` function,
an initial `Route` and an array of `Props`.

#### `navigationBar`

``` purescript
navigationBar :: Array Props -> ReactElement
```

Create a `NavigationBar` component with props.

#### `configureScene`

``` purescript
configureScene :: forall props. (Route props -> Array (Route props) -> SceneConfig) -> Props
```

#### `initialRoute`

``` purescript
initialRoute :: forall props. Route props -> Props
```

#### `initialRouteStack`

``` purescript
initialRouteStack :: forall props. Array (Route props) -> Props
```

#### `_navigationBar`

``` purescript
_navigationBar :: forall props. ReactClass props -> Props
```

#### `_navigator`

``` purescript
_navigator :: ReactElement -> Props
```

#### `onDidFocus`

``` purescript
onDidFocus :: forall eff props state result. (Route props -> EventHandlerContext eff props state result) -> Props
```

#### `onWillFocus`

``` purescript
onWillFocus :: forall eff props state result. (Route props -> EventHandlerContext eff props state result) -> Props
```

#### `RenderScene`

``` purescript
type RenderScene props = Route props -> ReactElement -> ReactElement
```

#### `renderScene`

``` purescript
renderScene :: forall props. RenderScene props -> Props
```

#### `sceneStyle`

``` purescript
sceneStyle :: Array Props -> Props
```

#### `immediatelyResetRouteStack`

``` purescript
immediatelyResetRouteStack :: forall props e. Navigator -> Array (Route props) -> Eff (navigation :: NAVIGATION | e) Unit
```

Reset every scene with an array of routes.

#### `jumpTo`

``` purescript
jumpTo :: forall props e. Navigator -> Route props -> Eff (navigation :: NAVIGATION | e) Unit
```

Transition to an existing scene without unmounting.

#### `jumpForward`

``` purescript
jumpForward :: forall e. Navigator -> Eff (navigation :: NAVIGATION | e) Unit
```

Jump forward to the next scene in the route stack.

#### `jumpBack`

``` purescript
jumpBack :: forall e. Navigator -> Eff (navigation :: NAVIGATION | e) Unit
```

Jump backward without unmounting the current scene.

#### `push`

``` purescript
push :: forall props e. Navigator -> Route props -> Eff (navigation :: NAVIGATION | e) Unit
```

Navigate forward to a new scene, squashing any scenes to which you could
jump forward.

#### `pop`

``` purescript
pop :: forall e. Navigator -> Eff (navigation :: NAVIGATION | e) Unit
```

Transition back and unmount the current scene.

#### `replaceAtIndexWithCallback`

``` purescript
replaceAtIndexWithCallback :: forall props a e. Navigator -> Route props -> Int -> (a -> Eff e Unit) -> Eff e Unit
```

#### `replaceAtIndex`

``` purescript
replaceAtIndex :: forall props e. Navigator -> Route props -> Int -> Aff e Unit
```

Replace a scene as specified by an index.

#### `replace`

``` purescript
replace :: forall props e. Navigator -> Route props -> Eff (navigation :: NAVIGATION | e) Unit
```

Replace the current scene with a new route.

#### `replacePrevious`

``` purescript
replacePrevious :: forall props e. Navigator -> Route props -> Eff (navigation :: NAVIGATION | e) Unit
```

Replace the previous scene.

#### `popToTop`

``` purescript
popToTop :: forall e. Navigator -> Eff (navigation :: NAVIGATION | e) Unit
```

Pop to the first scene in the stack, unmounting every other scene.

#### `popToRoute`

``` purescript
popToRoute :: forall props e. Navigator -> Route props -> Eff (navigation :: NAVIGATION | e) Unit
```

Pop to a particular scene, as specified by its route. All scenes after it will be unmounted.

#### `replacePreviousAndPop`

``` purescript
replacePreviousAndPop :: forall props e. Navigator -> Route props -> Eff (navigation :: NAVIGATION | e) Unit
```

Replace the previous scene and pop to it.

#### `resetTo`

``` purescript
resetTo :: forall props e. Navigator -> Route props -> Eff (navigation :: NAVIGATION | e) Unit
```

Navigate to a new scene and reset route stack.

#### `getCurrentRoutes`

``` purescript
getCurrentRoutes :: forall props e. Navigator -> Eff (navigation :: NAVIGATION | e) (Array (Route props))
```

Returns the current list of routes.


