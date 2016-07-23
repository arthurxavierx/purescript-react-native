## Module React.Native.Props

#### `testID`

``` purescript
testID :: String -> Props
```

#### `accessible`

``` purescript
accessible :: Boolean -> Props
```

#### `accessibilityLabel`

``` purescript
accessibilityLabel :: String -> Props
```

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

#### `LineBreakMode`

``` purescript
data LineBreakMode
  = LineBreakHead
  | LineBreakMiddle
  | LineBreakTail
  | LineBreakClip
```

##### Instances
``` purescript
Show LineBreakMode
```

#### `lineBreakMode`

``` purescript
lineBreakMode :: LineBreakMode -> Props
```

#### `numberOfLines`

``` purescript
numberOfLines :: Int -> Props
```

#### `selectable`

``` purescript
selectable :: Boolean -> Props
```

#### `allowFontScaling`

``` purescript
allowFontScaling :: Boolean -> Props
```

#### `suppressHighlighting`

``` purescript
suppressHighlighting :: Boolean -> Props
```

#### `Source`

``` purescript
data Source
  = SourceId Int
  | SourceUri String
```

#### `source`

``` purescript
source :: Source -> Props
```

#### `blurRadius`

``` purescript
blurRadius :: Number -> Props
```


