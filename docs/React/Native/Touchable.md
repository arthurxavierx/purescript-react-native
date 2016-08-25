## Module React.Native.Touchable

#### `Touchable`

``` purescript
class Touchable a
```

#### `disabled`

``` purescript
disabled :: forall a. Touchable a => Boolean -> Props a
```

#### `delayLongPress`

``` purescript
delayLongPress :: forall a. Touchable a => Number -> Props a
```

#### `delayPressIn`

``` purescript
delayPressIn :: forall a. Touchable a => Number -> Props a
```

#### `delayPressOut`

``` purescript
delayPressOut :: forall a. Touchable a => Number -> Props a
```

#### `onLongPress`

``` purescript
onLongPress :: forall a eff props state result. (Event -> EventHandlerContext eff props state result) -> Props a
```

#### `onPress`

``` purescript
onPress :: forall a eff props state result. (Event -> EventHandlerContext eff props state result) -> Props a
```

#### `onPressIn`

``` purescript
onPressIn :: forall a eff props state result. (Event -> EventHandlerContext eff props state result) -> Props a
```

#### `onPressOut`

``` purescript
onPressOut :: forall a eff props state result. (Event -> EventHandlerContext eff props state result) -> Props a
```


