## Module React.Native.Text

#### `Text`

``` purescript
data Text :: *
```

##### Instances
``` purescript
Touchable Text
```

#### `textClass`

``` purescript
textClass :: forall props. ReactClass props
```

#### `textView`

``` purescript
textView :: Array (Props Text) -> Array ReactElement -> ReactElement
```

Create a `TextView` element from an array of `Props` and an array
of children `ReactElement`.

#### `textView'`

``` purescript
textView' :: Array ReactElement -> ReactElement
```

#### `text`

``` purescript
text :: Array (Props Text) -> String -> ReactElement
```

Create a `TextView` element with props from a String.

#### `text'`

``` purescript
text' :: String -> ReactElement
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
lineBreakMode :: LineBreakMode -> Props Text
```

#### `numberOfLines`

``` purescript
numberOfLines :: Int -> Props Text
```

#### `selectable`

``` purescript
selectable :: Boolean -> Props Text
```

#### `allowFontScaling`

``` purescript
allowFontScaling :: Boolean -> Props Text
```

#### `suppressHighlighting`

``` purescript
suppressHighlighting :: Boolean -> Props Text
```


