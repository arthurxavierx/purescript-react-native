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

#### `createElement`

``` purescript
createElement :: forall props. ReactClass props -> props -> Array ReactElement -> ReactElement
```

Create a `ReactElement` from a given `ReactClass`, an array of props and an
array of children elements.

This function had to be redefined in this package because the current
version of React.createElement does not convert the expected props
parameter to an object when calling the foreign createElement function.


