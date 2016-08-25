## Module React.Native.Image

#### `Image`

``` purescript
data Image :: *
```

#### `imageClass`

``` purescript
imageClass :: ReactClass (Props Image)
```

#### `image`

``` purescript
image :: Array (Props Image) -> ReactElement
```

Create an `Image` element with props and no child elements.

#### `ImageSource`

``` purescript
data ImageSource :: *
```

#### `loadImageUri`

``` purescript
loadImageUri :: String -> ImageSource
```

#### `source`

``` purescript
source :: ImageSource -> Props Image
```

#### `blurRadius`

``` purescript
blurRadius :: Number -> Props Image
```

#### `onLoad`

``` purescript
onLoad :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props Image
```

#### `onLoadStart`

``` purescript
onLoadStart :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props Image
```

#### `onLoadEnd`

``` purescript
onLoadEnd :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props Image
```


