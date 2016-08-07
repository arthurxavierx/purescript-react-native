## Module React.Native.Events

The Events module provides event definitions that are common to some
React Native elements.

#### `LayoutEvent`

``` purescript
type LayoutEvent = { nativeEvent :: { layout :: { x :: Number, y :: Number, width :: Number, height :: Number } } }
```

#### `onLayout`

``` purescript
onLayout :: forall eff props state result. (LayoutEvent -> EventHandlerContext eff props state result) -> Props
```


