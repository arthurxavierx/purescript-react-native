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

#### `AutoCapitalize`

``` purescript
data AutoCapitalize
  = AutoCapitalizeNone
  | AutoCapitalizeSentences
  | AutoCapitalizeWords
  | AutoCapitalizeCharacters
```

##### Instances
``` purescript
Show AutoCapitalize
```

#### `autoCapitalize`

``` purescript
autoCapitalize :: AutoCapitalize -> Props
```

#### `autoCorrect`

``` purescript
autoCorrect :: Boolean -> Props
```

#### `autoFocus`

``` purescript
autoFocus :: Boolean -> Props
```

#### `blurOnSubmit`

``` purescript
blurOnSubmit :: Boolean -> Props
```

#### `defaultValue`

``` purescript
defaultValue :: String -> Props
```

#### `editable`

``` purescript
editable :: Boolean -> Props
```

#### `maxLength`

``` purescript
maxLength :: Int -> Props
```

#### `multiline`

``` purescript
multiline :: Boolean -> Props
```

#### `placeholder`

``` purescript
placeholder :: String -> Props
```

#### `placeholderTextColor`

``` purescript
placeholderTextColor :: Color -> Props
```

#### `secureTextEntry`

``` purescript
secureTextEntry :: Boolean -> Props
```

#### `selectTextOnFocus`

``` purescript
selectTextOnFocus :: Boolean -> Props
```

#### `selectionColor`

``` purescript
selectionColor :: Color -> Props
```

#### `value`

``` purescript
value :: String -> Props
```

#### `KeyboardType`

``` purescript
data KeyboardType
  = KeyboardDefault
  | KeyboardEmailAddress
  | KeyboardNumeric
  | KeyboardPhonePad
  | KeyboardAsciiCapable
  | KeyboardNumbers
  | KeyboardUrl
  | KeyboardNumberPad
  | KeyboardNamePhonePad
  | KeyboardDecimalPad
  | KeyboardTwitter
  | KeyboardWebSearch
```

##### Instances
``` purescript
Show KeyboardType
```

#### `keyboardType`

``` purescript
keyboardType :: KeyboardType -> Props
```

#### `ReturnKeyType`

``` purescript
data ReturnKeyType
  = ReturnKeyDone
  | ReturnKeyGo
  | ReturnKeyNext
  | ReturnKeySearch
  | ReturnKeySend
```

##### Instances
``` purescript
Show ReturnKeyType
```

#### `returnKeyType`

``` purescript
returnKeyType :: ReturnKeyType -> Props
```


