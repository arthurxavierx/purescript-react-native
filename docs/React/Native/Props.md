## Module React.Native.Props

The Props module provides definitions of Props functions that are common
to many React Native elements.

#### `testID`

``` purescript
testID :: forall a. String -> Props a
```

#### `accessible`

``` purescript
accessible :: forall a. Boolean -> Props a
```

#### `accessibilityLabel`

``` purescript
accessibilityLabel :: forall a. String -> Props a
```


### Re-exported from React.Native.Image:

#### `ImageSource`

``` purescript
data ImageSource :: *
```

#### `source`

``` purescript
source :: ImageSource -> Props Image
```

#### `loadImageUri`

``` purescript
loadImageUri :: String -> ImageSource
```

#### `blurRadius`

``` purescript
blurRadius :: Number -> Props Image
```

### Re-exported from React.Native.Navigator:

#### `RenderScene`

``` purescript
type RenderScene state props = Route state props -> Navigator -> ReactElement
```

#### `sceneStyle`

``` purescript
sceneStyle :: Array (Props Style) -> Props Navigator
```

#### `renderScene`

``` purescript
renderScene :: forall state props. RenderScene state props -> Props Navigator
```

#### `initialRouteStack`

``` purescript
initialRouteStack :: forall state props. Array (Route state props) -> Props Navigator
```

#### `initialRoute`

``` purescript
initialRoute :: forall state. InitialRoute state -> Props Navigator
```

#### `configureScene`

``` purescript
configureScene :: forall state props. (Route state props -> Array (Route state props) -> SceneConfig) -> Props Navigator
```

#### `_navigator`

``` purescript
_navigator :: forall a. ReactElement -> Props a
```

#### `_navigationBar`

``` purescript
_navigationBar :: forall props. ReactClass props -> Props Navigator
```

### Re-exported from React.Native.Props.Type:

#### `Props`

``` purescript
data Props :: * -> *
```

#### `unsafeMkProps`

``` purescript
unsafeMkProps :: forall a prop. String -> prop -> Props a
```

#### `unsafeFromPropsArray`

``` purescript
unsafeFromPropsArray :: forall a. Array (Props a) -> Props a
```

### Re-exported from React.Native.Text:

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

#### `suppressHighlighting`

``` purescript
suppressHighlighting :: Boolean -> Props Text
```

#### `selectable`

``` purescript
selectable :: Boolean -> Props Text
```

#### `numberOfLines`

``` purescript
numberOfLines :: Int -> Props Text
```

#### `lineBreakMode`

``` purescript
lineBreakMode :: LineBreakMode -> Props Text
```

#### `allowFontScaling`

``` purescript
allowFontScaling :: Boolean -> Props Text
```

### Re-exported from React.Native.TextInput:

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

#### `value`

``` purescript
value :: String -> Props TextInput
```

#### `selectionColor`

``` purescript
selectionColor :: Color -> Props TextInput
```

#### `selectTextOnFocus`

``` purescript
selectTextOnFocus :: Boolean -> Props TextInput
```

#### `secureTextEntry`

``` purescript
secureTextEntry :: Boolean -> Props TextInput
```

#### `returnKeyType`

``` purescript
returnKeyType :: ReturnKeyType -> Props TextInput
```

#### `placeholderTextColor`

``` purescript
placeholderTextColor :: Color -> Props TextInput
```

#### `placeholder`

``` purescript
placeholder :: String -> Props TextInput
```

#### `multiline`

``` purescript
multiline :: Boolean -> Props TextInput
```

#### `maxLength`

``` purescript
maxLength :: Int -> Props TextInput
```

#### `keyboardType`

``` purescript
keyboardType :: KeyboardType -> Props TextInput
```

#### `editable`

``` purescript
editable :: Boolean -> Props TextInput
```

#### `defaultValue`

``` purescript
defaultValue :: String -> Props TextInput
```

#### `blurOnSubmit`

``` purescript
blurOnSubmit :: Boolean -> Props TextInput
```

#### `autoFocus`

``` purescript
autoFocus :: Boolean -> Props TextInput
```

#### `autoCorrect`

``` purescript
autoCorrect :: Boolean -> Props TextInput
```

#### `autoCapitalize`

``` purescript
autoCapitalize :: AutoCapitalize -> Props TextInput
```

### Re-exported from React.Native.ToolbarAndroid:

#### `ToolbarActionShow`

``` purescript
data ToolbarActionShow
  = Always
  | IfRoom
  | Never
```

##### Instances
``` purescript
Show ToolbarActionShow
```

#### `ToolbarAction`

``` purescript
type ToolbarAction = { title :: String, icon :: Maybe ImageSource, show :: Maybe ToolbarActionShow, showWithText :: Maybe Boolean }
```

#### `titleColor`

``` purescript
titleColor :: Color -> Props ToolbarAndroid
```

#### `title`

``` purescript
title :: String -> Props ToolbarAndroid
```

#### `subtitleColor`

``` purescript
subtitleColor :: Color -> Props ToolbarAndroid
```

#### `subtitle`

``` purescript
subtitle :: String -> Props ToolbarAndroid
```

#### `rtl`

``` purescript
rtl :: Boolean -> Props ToolbarAndroid
```

#### `overflowIcon`

``` purescript
overflowIcon :: ImageSource -> Props ToolbarAndroid
```

#### `navIcon`

``` purescript
navIcon :: ImageSource -> Props ToolbarAndroid
```

#### `logo`

``` purescript
logo :: ImageSource -> Props ToolbarAndroid
```

#### `contentInsetStart`

``` purescript
contentInsetStart :: Number -> Props ToolbarAndroid
```

#### `contentInsetEnd`

``` purescript
contentInsetEnd :: Number -> Props ToolbarAndroid
```

#### `actions`

``` purescript
actions :: Array ToolbarAction -> Props ToolbarAndroid
```

### Re-exported from React.Native.Touchable:

#### `disabled`

``` purescript
disabled :: forall a. Touchable a => Boolean -> Props a
```

#### `delayPressOut`

``` purescript
delayPressOut :: forall a. Touchable a => Number -> Props a
```

#### `delayPressIn`

``` purescript
delayPressIn :: forall a. Touchable a => Number -> Props a
```

#### `delayLongPress`

``` purescript
delayLongPress :: forall a. Touchable a => Number -> Props a
```

### Re-exported from React.Native.TouchableHighlight:

#### `underlayColor`

``` purescript
underlayColor :: Color -> Props TouchableHighlight
```

#### `activeOpacity`

``` purescript
activeOpacity :: Number -> Props TouchableHighlight
```

### Re-exported from React.Native.View:

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

#### `removeClippedSubviews`

``` purescript
removeClippedSubviews :: Boolean -> Props View
```

#### `pointerEvents`

``` purescript
pointerEvents :: PointerEvent -> Props View
```

#### `hitSlop`

``` purescript
hitSlop :: forall a. { top :: Number, left :: Number, bottom :: Number, right :: Number | a } -> Props View
```

#### `collapsable`

``` purescript
collapsable :: Boolean -> Props View
```

