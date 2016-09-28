## Module React.Native.View

#### `View`

``` purescript
data View :: *
```

#### `viewClass`

``` purescript
viewClass :: ReactClass (Props View)
```

#### `view`

``` purescript
view :: Array (Props View) -> Array ReactElement -> ReactElement
```

Create a `View` element from an array of `Props` and an array
of children `ReactElement`.

#### `view'`

``` purescript
view' :: Array ReactElement -> ReactElement
```

#### `hitSlop`

``` purescript
hitSlop :: forall a. { top :: Number, left :: Number, bottom :: Number, right :: Number | a } -> Props View
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
pointerEvents :: PointerEvent -> Props View
```

#### `removeClippedSubviews`

``` purescript
removeClippedSubviews :: Boolean -> Props View
```

#### `collapsable`

``` purescript
collapsable :: Boolean -> Props View
```


