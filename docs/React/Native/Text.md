## Module React.Native.Text

#### `textClass`

``` purescript
textClass :: forall props. ReactClass props
```

#### `textView`

``` purescript
textView :: Array Props -> Array ReactElement -> ReactElement
```

Create a `TextView` element from an array of `Props` and an array
of children `ReactElement`.

#### `text`

``` purescript
text :: Array Props -> String -> ReactElement
```

Create a `TextView` element with props from a String.

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

#### `onPress`

``` purescript
onPress :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
```

#### `onLongPress`

``` purescript
onLongPress :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
```


