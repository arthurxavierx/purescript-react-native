## Module React.Native.Image

#### `imageClass`

``` purescript
imageClass :: forall props. ReactClass props
```

#### `image`

``` purescript
image :: Array Props -> ReactElement
```

Create an `Image` element with props and no child elements.

#### `ImageSource`

``` purescript
data ImageSource
  = ImageId Int
  | ImageUri String
```

#### `ForeignImageSource`

``` purescript
data ForeignImageSource :: *
```

#### `toForeignImageSource`

``` purescript
toForeignImageSource :: ImageSource -> ForeignImageSource
```

#### `source`

``` purescript
source :: ImageSource -> Props
```

#### `blurRadius`

``` purescript
blurRadius :: Number -> Props
```

#### `onLoad`

``` purescript
onLoad :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
```

#### `onLoadStart`

``` purescript
onLoadStart :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
```

#### `onLoadEnd`

``` purescript
onLoadEnd :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
```


