## Module React.Native.TextInput

#### `textInputClass`

``` purescript
textInputClass :: forall props. ReactClass props
```

#### `textInput`

``` purescript
textInput :: Array Props -> ReactElement
```

Create a `TextInput` element with props and no child elements.

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

#### `onBlur`

``` purescript
onBlur :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
```

#### `onChange`

``` purescript
onChange :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
```

#### `onChangeText`

``` purescript
onChangeText :: forall eff props state result. (String -> EventHandlerContext eff props state result) -> Props
```

#### `onFocus`

``` purescript
onFocus :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
```


