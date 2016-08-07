## Module React.Native.ToolbarAndroid

#### `toolbarAndroidClass`

``` purescript
toolbarAndroidClass :: forall props. ReactClass props
```

#### `toolbarAndroid`

``` purescript
toolbarAndroid :: Array Action -> Array Props -> ReactElement
```

Create a `ToolbarAndroid` component with props and children.

#### `ActionShow`

``` purescript
data ActionShow
  = Always
  | IfRoom
  | Never
```

##### Instances
``` purescript
Show ActionShow
```

#### `Action`

``` purescript
type Action = { title :: String, icon :: Maybe ImageSource, show :: Maybe ActionShow, showWithText :: Maybe Boolean }
```

#### `contentInsetEnd`

``` purescript
contentInsetEnd :: Number -> Props
```

#### `contentInsetStart`

``` purescript
contentInsetStart :: Number -> Props
```

#### `logo`

``` purescript
logo :: ImageSource -> Props
```

#### `navIcon`

``` purescript
navIcon :: ImageSource -> Props
```

#### `overflowIcon`

``` purescript
overflowIcon :: ImageSource -> Props
```

#### `rtl`

``` purescript
rtl :: Boolean -> Props
```

#### `subtitle`

``` purescript
subtitle :: String -> Props
```

#### `subtitleColor`

``` purescript
subtitleColor :: Color -> Props
```

#### `title`

``` purescript
title :: String -> Props
```

#### `titleColor`

``` purescript
titleColor :: Color -> Props
```

#### `onActionSelected`

``` purescript
onActionSelected :: forall eff props state result. (Int -> EventHandlerContext eff props state result) -> Props
```

#### `onIconClicked`

``` purescript
onIconClicked :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
```


