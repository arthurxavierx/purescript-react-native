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


