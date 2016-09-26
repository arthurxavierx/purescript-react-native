## Module React.Native.Navigator

#### `navigatorClass`

``` purescript
navigatorClass :: ReactClass (Props Navigator)
```

#### `navigationBarClass`

``` purescript
navigationBarClass :: ReactClass (Props NavigationBar)
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
navigator :: forall state props. RenderScene state props -> InitialRoute state -> Array (Props Navigator) -> Navigator
```

Create a `Navigator` component from a `RenderScene` function,
an initial `Route` and an array of `Props`.

#### `NavigationBar`

``` purescript
data NavigationBar :: *
```

#### `navigationBar`

``` purescript
navigationBar :: Array (Props NavigationBar) -> ReactElement
```

Create a `NavigationBar` component with props.

#### `configureScene`

``` purescript
configureScene :: forall state props. (Route state props -> Array (Route state props) -> SceneConfig) -> Props Navigator
```

#### `initialRoute`

``` purescript
initialRoute :: forall state. InitialRoute state -> Props Navigator
```

#### `initialRouteStack`

``` purescript
initialRouteStack :: forall state props. Array (Route state props) -> Props Navigator
```

#### `_navigationBar`

``` purescript
_navigationBar :: forall props. ReactClass props -> Props Navigator
```

#### `_navigator`

``` purescript
_navigator :: forall a. ReactElement -> Props a
```

#### `RenderScene`

``` purescript
type RenderScene state props = Route state props -> Navigator -> ReactElement
```

#### `renderScene`

``` purescript
renderScene :: forall state props. RenderScene state props -> Props Navigator
```

#### `sceneStyle`

``` purescript
sceneStyle :: Array (Props Style) -> Props Navigator
```

#### `onDidFocus`

``` purescript
onDidFocus :: forall eff props state result. (Route state props -> EventHandlerContext eff props state result) -> Props Navigator
```

#### `onWillFocus`

``` purescript
onWillFocus :: forall eff props state result. (Route state props -> EventHandlerContext eff props state result) -> Props Navigator
```

#### `immediatelyResetRouteStack`

``` purescript
immediatelyResetRouteStack :: forall state props e. Navigator -> Array (Route state props) -> Eff (navigation :: NAVIGATION | e) Unit
```

Reset every scene with an array of routes.

#### `jumpTo`

``` purescript
jumpTo :: forall state props e. Navigator -> Route state props -> Eff (navigation :: NAVIGATION | e) Unit
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
push :: forall state props e. Navigator -> Route state props -> Eff (navigation :: NAVIGATION | e) Unit
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
replaceAtIndexWithCallback :: forall state props a e. Navigator -> Route state props -> Int -> (a -> Eff e Unit) -> Eff e Unit
```

#### `replaceAtIndex`

``` purescript
replaceAtIndex :: forall state props e. Navigator -> Route state props -> Int -> Aff e Unit
```

Replace a scene as specified by an index.

#### `replace`

``` purescript
replace :: forall state props e. Navigator -> Route state props -> Eff (navigation :: NAVIGATION | e) Unit
```

Replace the current scene with a new route.

#### `replacePrevious`

``` purescript
replacePrevious :: forall state props e. Navigator -> Route state props -> Eff (navigation :: NAVIGATION | e) Unit
```

Replace the previous scene.

#### `popToTop`

``` purescript
popToTop :: forall e. Navigator -> Eff (navigation :: NAVIGATION | e) Unit
```

Pop to the first scene in the stack, unmounting every other scene.

#### `popToRoute`

``` purescript
popToRoute :: forall state props e. Navigator -> Route state props -> Eff (navigation :: NAVIGATION | e) Unit
```

Pop to a particular scene, as specified by its route. All scenes after it will be unmounted.

#### `replacePreviousAndPop`

``` purescript
replacePreviousAndPop :: forall state props e. Navigator -> Route state props -> Eff (navigation :: NAVIGATION | e) Unit
```

Replace the previous scene and pop to it.

#### `resetTo`

``` purescript
resetTo :: forall state props e. Navigator -> Route state props -> Eff (navigation :: NAVIGATION | e) Unit
```

Navigate to a new scene and reset route stack.

#### `getCurrentRoutes`

``` purescript
getCurrentRoutes :: forall state props e. Navigator -> Eff (navigation :: NAVIGATION | e) (Array (Route state props))
```

Returns the current list of routes.


