## Module React.Native

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


### Re-exported from React.Native.Components:

#### `view`

``` purescript
view :: Array Props -> Array ReactElement -> ReactElement
```

Create a `View` element from an array of `Props` and an array
of children `ReactElement`.

#### `textView`

``` purescript
textView :: Array Props -> Array ReactElement -> ReactElement
```

Create a `TextView` element from an array of `Props` and an array
of children `ReactElement`.

#### `text`

``` purescript
text :: Array Props -> String -> ReactElement
```

Create a `TextView` element with props from a String.

#### `createElement`

``` purescript
createElement :: forall props. ReactClass props -> props -> Array ReactElement -> ReactElement
```

Create a `ReactElement` from a given `ReactClass`, an array of props and an
array of children elements.

This function had to be redefined in this package because the current
version of React.createElement does not convert the expected props
parameter to an object when calling the foreign createElement function.

