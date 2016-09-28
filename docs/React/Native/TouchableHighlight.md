## Module React.Native.TouchableHighlight

#### `TouchableHighlight`

``` purescript
data TouchableHighlight :: *
```

##### Instances
``` purescript
Touchable TouchableHighlight
```

#### `touchableHighlightClass`

``` purescript
touchableHighlightClass :: ReactClass (Props TouchableHighlight)
```

#### `touchableHighlight`

``` purescript
touchableHighlight :: Array (Props TouchableHighlight) -> ReactElement -> ReactElement
```

Create a `TouchableHighlight` component with props and children.

#### `touchableHighlight'`

``` purescript
touchableHighlight' :: ReactElement -> ReactElement
```

#### `activeOpacity`

``` purescript
activeOpacity :: Number -> Props TouchableHighlight
```

#### `underlayColor`

``` purescript
underlayColor :: Color -> Props TouchableHighlight
```

#### `onHideUnderlay`

``` purescript
onHideUnderlay :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props TouchableHighlight
```

#### `onShowUnderlay`

``` purescript
onShowUnderlay :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props TouchableHighlight
```


