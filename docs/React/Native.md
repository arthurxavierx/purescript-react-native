## Module React.Native

#### `Platform`

``` purescript
data Platform
  = Android
  | IOS
```

#### `platform`

``` purescript
platform :: Platform
```

Platform OS for the current build.
This value remains constant throughout an application, and only changes
on different builds for different platforms.

#### `PLATFORM`

``` purescript
data PLATFORM :: !
```

This effect represents computations which may access or perform operations
on the native platform.

#### `registerComponent`

``` purescript
registerComponent :: forall eff props. String -> ReactClass props -> Eff (platform :: PLATFORM | eff) Unit
```

Register a React Native component from a given `ReactClass` with a name
so it can be accessed from the native platform.


### Re-exported from React.Native.Image:

#### `Image`

``` purescript
data Image :: *
```

#### `image`

``` purescript
image :: Array (Props Image) -> ReactElement
```

Create an `Image` element with props and no child elements.

### Re-exported from React.Native.Navigator:

#### `Navigator`

``` purescript
newtype Navigator
```

#### `NavigationBar`

``` purescript
data NavigationBar :: *
```

#### `NAVIGATION`

``` purescript
data NAVIGATION :: !
```

This effect reprents computations that modify the navigation state of
the application.

#### `navigator`

``` purescript
navigator :: forall state props. RenderScene state props -> InitialRoute state -> Array (Props Navigator) -> Navigator
```

Create a `Navigator` component from a `RenderScene` function,
an initial `Route` and an array of `Props`.

#### `navigationBar`

``` purescript
navigationBar :: Array (Props NavigationBar) -> ReactElement
```

Create a `NavigationBar` component with props.

### Re-exported from React.Native.Text:

#### `Text`

``` purescript
data Text :: *
```

##### Instances
``` purescript
Touchable Text
```

#### `textView`

``` purescript
textView :: Array (Props Text) -> Array ReactElement -> ReactElement
```

Create a `TextView` element from an array of `Props` and an array
of children `ReactElement`.

#### `text`

``` purescript
text :: Array (Props Text) -> String -> ReactElement
```

Create a `TextView` element with props from a String.

### Re-exported from React.Native.TextInput:

#### `TextInput`

``` purescript
data TextInput :: *
```

#### `textInput`

``` purescript
textInput :: Array (Props TextInput) -> ReactElement
```

Create a `TextInput` element with props and no child elements.

### Re-exported from React.Native.ToolbarAndroid:

#### `ToolbarAndroid`

``` purescript
data ToolbarAndroid :: *
```

#### `toolbarAndroid`

``` purescript
toolbarAndroid :: Array ToolbarAction -> Array (Props ToolbarAndroid) -> ReactElement
```

Create a `ToolbarAndroid` component with props and children.

### Re-exported from React.Native.Touchable:

#### `Touchable`

``` purescript
class Touchable a
```

### Re-exported from React.Native.TouchableHighlight:

#### `TouchableHighlight`

``` purescript
data TouchableHighlight :: *
```

##### Instances
``` purescript
Touchable TouchableHighlight
```

#### `touchableHighlight`

``` purescript
touchableHighlight :: Array (Props TouchableHighlight) -> ReactElement -> ReactElement
```

Create a `TouchableHighlight` component with props and children.

### Re-exported from React.Native.TouchableWithoutFeedback:

#### `TouchableWithoutFeedback`

``` purescript
data TouchableWithoutFeedback :: *
```

##### Instances
``` purescript
Touchable TouchableWithoutFeedback
```

#### `touchableWithoutFeedback`

``` purescript
touchableWithoutFeedback :: Array (Props TouchableWithoutFeedback) -> ReactElement -> ReactElement
```

Create a `TouchableWithoutFeedback` component with props and children.

### Re-exported from React.Native.View:

#### `View`

``` purescript
data View :: *
```

#### `view`

``` purescript
view :: Array (Props View) -> Array ReactElement -> ReactElement
```

Create a `View` element from an array of `Props` and an array
of children `ReactElement`.

