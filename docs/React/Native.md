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


