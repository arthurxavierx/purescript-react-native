## Module React.Native.View

#### `viewClass`

``` purescript
viewClass :: forall props. ReactClass props
```

#### `view`

``` purescript
view :: Array Props -> Array ReactElement -> ReactElement
```

Create a `View` element from an array of `Props` and an array
of children `ReactElement`.

#### `hitSlop`

``` purescript
hitSlop :: forall a. { top :: Number, left :: Number, bottom :: Number, right :: Number | a } -> Props
```

#### `PointerEvent`

``` purescript
data PointerEvent
  = PointerEventAuto
  | PointerEventNone
  | PointerEventBoxOnly
  | PointerEventBoxNone
```

##### Instances
``` purescript
Show PointerEvent
```

#### `pointerEvents`

``` purescript
pointerEvents :: PointerEvent -> Props
```

#### `removeClippedSubviews`

``` purescript
removeClippedSubviews :: Boolean -> Props
```

#### `collapsable`

``` purescript
collapsable :: Boolean -> Props
```


