## Module React.Native.TextInput

#### `TextInput`

``` purescript
data TextInput :: *
```

#### `textInputClass`

``` purescript
textInputClass :: forall props. ReactClass props
```

#### `textInput`

``` purescript
textInput :: Array (Props TextInput) -> ReactElement
```

Create a `TextInput` element with props and no child elements.

#### `textInput'`

``` purescript
textInput' :: ReactElement
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
autoCapitalize :: AutoCapitalize -> Props TextInput
```

#### `autoCorrect`

``` purescript
autoCorrect :: Boolean -> Props TextInput
```

#### `autoFocus`

``` purescript
autoFocus :: Boolean -> Props TextInput
```

#### `blurOnSubmit`

``` purescript
blurOnSubmit :: Boolean -> Props TextInput
```

#### `defaultValue`

``` purescript
defaultValue :: String -> Props TextInput
```

#### `editable`

``` purescript
editable :: Boolean -> Props TextInput
```

#### `maxLength`

``` purescript
maxLength :: Int -> Props TextInput
```

#### `multiline`

``` purescript
multiline :: Boolean -> Props TextInput
```

#### `placeholder`

``` purescript
placeholder :: String -> Props TextInput
```

#### `placeholderTextColor`

``` purescript
placeholderTextColor :: Color -> Props TextInput
```

#### `secureTextEntry`

``` purescript
secureTextEntry :: Boolean -> Props TextInput
```

#### `selectTextOnFocus`

``` purescript
selectTextOnFocus :: Boolean -> Props TextInput
```

#### `selectionColor`

``` purescript
selectionColor :: Color -> Props TextInput
```

#### `value`

``` purescript
value :: String -> Props TextInput
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
keyboardType :: KeyboardType -> Props TextInput
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
returnKeyType :: ReturnKeyType -> Props TextInput
```

#### `onBlur`

``` purescript
onBlur :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props TextInput
```

#### `onChange`

``` purescript
onChange :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props TextInput
```

#### `onChangeText`

``` purescript
onChangeText :: forall eff props state result. (String -> EventHandlerContext eff props state result) -> Props TextInput
```

#### `onFocus`

``` purescript
onFocus :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props TextInput
```

#### `onEndEditing`

``` purescript
onEndEditing :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props TextInput
```

#### `onSubmitEditing`

``` purescript
onSubmitEditing :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props TextInput
```


