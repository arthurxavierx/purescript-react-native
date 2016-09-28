## Module React.Native.ToolbarAndroid

#### `ToolbarAndroid`

``` purescript
data ToolbarAndroid :: *
```

#### `toolbarAndroidClass`

``` purescript
toolbarAndroidClass :: ReactClass (Props ToolbarAndroid)
```

#### `toolbarAndroid`

``` purescript
toolbarAndroid :: Array ToolbarAction -> Array (Props ToolbarAndroid) -> ReactElement
```

Create a `ToolbarAndroid` component with props and children.

#### `toolbarAndroid'`

``` purescript
toolbarAndroid' :: Array ToolbarAction -> ReactElement
```

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

#### `actions`

``` purescript
actions :: Array ToolbarAction -> Props ToolbarAndroid
```

#### `contentInsetEnd`

``` purescript
contentInsetEnd :: Number -> Props ToolbarAndroid
```

#### `contentInsetStart`

``` purescript
contentInsetStart :: Number -> Props ToolbarAndroid
```

#### `logo`

``` purescript
logo :: ImageSource -> Props ToolbarAndroid
```

#### `navIcon`

``` purescript
navIcon :: ImageSource -> Props ToolbarAndroid
```

#### `overflowIcon`

``` purescript
overflowIcon :: ImageSource -> Props ToolbarAndroid
```

#### `rtl`

``` purescript
rtl :: Boolean -> Props ToolbarAndroid
```

#### `subtitle`

``` purescript
subtitle :: String -> Props ToolbarAndroid
```

#### `subtitleColor`

``` purescript
subtitleColor :: Color -> Props ToolbarAndroid
```

#### `title`

``` purescript
title :: String -> Props ToolbarAndroid
```

#### `titleColor`

``` purescript
titleColor :: Color -> Props ToolbarAndroid
```

#### `onActionSelected`

``` purescript
onActionSelected :: forall eff props state result. (Int -> EventHandlerContext eff props state result) -> Props ToolbarAndroid
```

#### `onIconClicked`

``` purescript
onIconClicked :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props ToolbarAndroid
```


