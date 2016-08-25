## Module React.Native.Props

The Props module provides definitions of Props functions that are common
to many React Native elements.

#### `Props`

``` purescript
data Props :: * -> *
```

#### `unsafeMkProps`

``` purescript
unsafeMkProps :: forall a prop. String -> prop -> Props a
```

#### `unsafeFromPropsArray`

``` purescript
unsafeFromPropsArray :: forall a. Array (Props a) -> Props a
```

#### `testID`

``` purescript
testID :: forall a. String -> Props a
```

#### `accessible`

``` purescript
accessible :: forall a. Boolean -> Props a
```

#### `accessibilityLabel`

``` purescript
accessibilityLabel :: forall a. String -> Props a
```


