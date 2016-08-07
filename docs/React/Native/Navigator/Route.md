## Module React.Native.Navigator.Route

#### `Route`

``` purescript
type Route props = { id :: String, title :: String, sceneConfig :: SceneConfig, component :: ReactClass props, passProps :: Props }
```

#### `SceneConfig`

``` purescript
data SceneConfig :: *
```

#### `pushFromRight`

``` purescript
pushFromRight :: SceneConfig
```

#### `floatFromRight`

``` purescript
floatFromRight :: SceneConfig
```

#### `floatFromLeft`

``` purescript
floatFromLeft :: SceneConfig
```

#### `floatFromBottom`

``` purescript
floatFromBottom :: SceneConfig
```

#### `floatFromBottomAndroid`

``` purescript
floatFromBottomAndroid :: SceneConfig
```

#### `fadeAndroid`

``` purescript
fadeAndroid :: SceneConfig
```

#### `horizontalSwipeJump`

``` purescript
horizontalSwipeJump :: SceneConfig
```

#### `horizontalSwipeJumpFromRight`

``` purescript
horizontalSwipeJumpFromRight :: SceneConfig
```

#### `verticalUpSwipeJump`

``` purescript
verticalUpSwipeJump :: SceneConfig
```

#### `verticalDownSwipeJump`

``` purescript
verticalDownSwipeJump :: SceneConfig
```


