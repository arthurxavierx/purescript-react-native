## Module React.Native.Events

The Events module provides event definitions that are common to some
React Native elements.

#### `LayoutEvent`

``` purescript
type LayoutEvent = { nativeEvent :: { layout :: { x :: Number, y :: Number, width :: Number, height :: Number } } }
```

#### `onLayout`

``` purescript
onLayout :: forall a eff props state result. (LayoutEvent -> EventHandlerContext eff props state result) -> Props a
```


### Re-exported from React.Native.Image:

#### `onLoadStart`

``` purescript
onLoadStart :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props Image
```

#### `onLoadEnd`

``` purescript
onLoadEnd :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props Image
```

#### `onLoad`

``` purescript
onLoad :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props Image
```

### Re-exported from React.Native.TextInput:

#### `onSubmitEditing`

``` purescript
onSubmitEditing :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props TextInput
```

#### `onFocus`

``` purescript
onFocus :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props TextInput
```

#### `onEndEditing`

``` purescript
onEndEditing :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props TextInput
```

#### `onChangeText`

``` purescript
onChangeText :: forall eff props state result. (String -> EventHandlerContext eff props state result) -> Props TextInput
```

#### `onChange`

``` purescript
onChange :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props TextInput
```

#### `onBlur`

``` purescript
onBlur :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props TextInput
```

### Re-exported from React.Native.ToolbarAndroid:

#### `onIconClicked`

``` purescript
onIconClicked :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props ToolbarAndroid
```

#### `onActionSelected`

``` purescript
onActionSelected :: forall eff props state result. (Int -> EventHandlerContext eff props state result) -> Props ToolbarAndroid
```

### Re-exported from React.Native.Touchable:

#### `onPressOut`

``` purescript
onPressOut :: forall a eff props state result. (Event -> EventHandlerContext eff props state result) -> Props a
```

#### `onPressIn`

``` purescript
onPressIn :: forall a eff props state result. (Event -> EventHandlerContext eff props state result) -> Props a
```

#### `onPress`

``` purescript
onPress :: forall a eff props state result. (Event -> EventHandlerContext eff props state result) -> Props a
```

#### `onLongPress`

``` purescript
onLongPress :: forall a eff props state result. (Event -> EventHandlerContext eff props state result) -> Props a
```

### Re-exported from React.Native.TouchableHighlight:

#### `onShowUnderlay`

``` purescript
onShowUnderlay :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props TouchableHighlight
```

#### `onHideUnderlay`

``` purescript
onHideUnderlay :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props TouchableHighlight
```

