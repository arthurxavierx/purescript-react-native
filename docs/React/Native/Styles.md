## Module React.Native.Styles

#### `Style`

``` purescript
data Style :: *
```

#### `style`

``` purescript
style :: forall a. Array (Props Style) -> Props a
```

#### `styles`

``` purescript
styles :: forall a. Array (Array (Props Style)) -> Props a
```

#### `width`

``` purescript
width :: Number -> Props Style
```

#### `height`

``` purescript
height :: Number -> Props Style
```

#### `maxWidth`

``` purescript
maxWidth :: Number -> Props Style
```

#### `minWidth`

``` purescript
minWidth :: Number -> Props Style
```

#### `maxHeight`

``` purescript
maxHeight :: Number -> Props Style
```

#### `minHeight`

``` purescript
minHeight :: Number -> Props Style
```

#### `Position`

``` purescript
data Position
  = Relative
  | Absolute
```

##### Instances
``` purescript
Show Position
```

#### `position`

``` purescript
position :: Position -> Props Style
```

#### `top`

``` purescript
top :: Number -> Props Style
```

#### `right`

``` purescript
right :: Number -> Props Style
```

#### `bottom`

``` purescript
bottom :: Number -> Props Style
```

#### `left`

``` purescript
left :: Number -> Props Style
```

#### `flex`

``` purescript
flex :: Int -> Props Style
```

#### `FlexDirection`

``` purescript
data FlexDirection
  = Row
  | RowReverse
  | Column
  | ColumnReverse
```

##### Instances
``` purescript
Show FlexDirection
```

#### `flexDirection`

``` purescript
flexDirection :: FlexDirection -> Props Style
```

#### `FlexWrap`

``` purescript
data FlexWrap
  = NoWrap
  | Wrap
```

##### Instances
``` purescript
Show FlexWrap
```

#### `flexWrap`

``` purescript
flexWrap :: FlexWrap -> Props Style
```

#### `FlexAlign`

``` purescript
data FlexAlign
  = FlexAuto
  | FlexStart
  | FlexEnd
  | FlexCenter
  | FlexStretch
  | SpaceBetween
  | SpaceAround
```

##### Instances
``` purescript
Show FlexAlign
```

#### `justifyContent`

``` purescript
justifyContent :: FlexAlign -> Props Style
```

#### `alignItems`

``` purescript
alignItems :: FlexAlign -> Props Style
```

#### `alignSelf`

``` purescript
alignSelf :: FlexAlign -> Props Style
```

#### `zIndex`

``` purescript
zIndex :: Int -> Props Style
```

#### `margin`

``` purescript
margin :: Number -> Props Style
```

#### `marginVertical`

``` purescript
marginVertical :: Number -> Props Style
```

#### `marginHorizontal`

``` purescript
marginHorizontal :: Number -> Props Style
```

#### `marginTop`

``` purescript
marginTop :: Number -> Props Style
```

#### `marginRight`

``` purescript
marginRight :: Number -> Props Style
```

#### `marginBottom`

``` purescript
marginBottom :: Number -> Props Style
```

#### `marginLeft`

``` purescript
marginLeft :: Number -> Props Style
```

#### `padding`

``` purescript
padding :: Number -> Props Style
```

#### `paddingVertical`

``` purescript
paddingVertical :: Number -> Props Style
```

#### `paddingHorizontal`

``` purescript
paddingHorizontal :: Number -> Props Style
```

#### `paddingTop`

``` purescript
paddingTop :: Number -> Props Style
```

#### `paddingRight`

``` purescript
paddingRight :: Number -> Props Style
```

#### `paddingBottom`

``` purescript
paddingBottom :: Number -> Props Style
```

#### `paddingLeft`

``` purescript
paddingLeft :: Number -> Props Style
```

#### `borderColor`

``` purescript
borderColor :: Color -> Props Style
```

#### `borderTopColor`

``` purescript
borderTopColor :: Color -> Props Style
```

#### `borderRightColor`

``` purescript
borderRightColor :: Color -> Props Style
```

#### `borderBottomColor`

``` purescript
borderBottomColor :: Color -> Props Style
```

#### `borderLeftColor`

``` purescript
borderLeftColor :: Color -> Props Style
```

#### `borderRadius`

``` purescript
borderRadius :: Number -> Props Style
```

#### `borderTopLeftRadius`

``` purescript
borderTopLeftRadius :: Number -> Props Style
```

#### `borderTopRightRadius`

``` purescript
borderTopRightRadius :: Number -> Props Style
```

#### `borderBottomLeftRadius`

``` purescript
borderBottomLeftRadius :: Number -> Props Style
```

#### `borderBottomRightRadius`

``` purescript
borderBottomRightRadius :: Number -> Props Style
```

#### `BorderStyle`

``` purescript
data BorderStyle
  = Solid
  | Dotted
  | Dashed
  | Double
```

##### Instances
``` purescript
Show BorderStyle
```

#### `borderStyle`

``` purescript
borderStyle :: BorderStyle -> Props Style
```

#### `borderWidth`

``` purescript
borderWidth :: Number -> Props Style
```

#### `borderTopWidth`

``` purescript
borderTopWidth :: Number -> Props Style
```

#### `borderRightWidth`

``` purescript
borderRightWidth :: Number -> Props Style
```

#### `borderBottomWidth`

``` purescript
borderBottomWidth :: Number -> Props Style
```

#### `borderLeftWidth`

``` purescript
borderLeftWidth :: Number -> Props Style
```

#### `opacity`

``` purescript
opacity :: Number -> Props Style
```

#### `Visibility`

``` purescript
data Visibility
  = Visible
  | Hidden
```

##### Instances
``` purescript
Show Visibility
```

#### `overflow`

``` purescript
overflow :: Visibility -> Props Style
```

#### `elevation`

``` purescript
elevation :: Int -> Props Style
```

#### `color`

``` purescript
color :: Color -> Props Style
```

#### `backgroundColor`

``` purescript
backgroundColor :: Color -> Props Style
```

#### `fontFamily`

``` purescript
fontFamily :: String -> Props Style
```

#### `fontSize`

``` purescript
fontSize :: Number -> Props Style
```

#### `FontStyle`

``` purescript
data FontStyle
  = Normal
  | Italic
```

##### Instances
``` purescript
Show FontStyle
```

#### `fontStyle`

``` purescript
fontStyle :: FontStyle -> Props Style
```

#### `FontWeight`

``` purescript
data FontWeight
  = Thin
  | ExtraLight
  | Light
  | Regular
  | Medium
  | SemiBold
  | Bold
  | ExtraBold
  | Black
```

##### Instances
``` purescript
Show FontWeight
```

#### `fontWeight`

``` purescript
fontWeight :: FontWeight -> Props Style
```

#### `textShadowOffset`

``` purescript
textShadowOffset :: forall a. { width :: Number, height :: Number | a } -> Props Style
```

#### `textShadowRadius`

``` purescript
textShadowRadius :: Number -> Props Style
```

#### `textShadowColor`

``` purescript
textShadowColor :: Color -> Props Style
```

#### `letterSpacing`

``` purescript
letterSpacing :: Number -> Props Style
```

#### `lineHeight`

``` purescript
lineHeight :: Number -> Props Style
```

#### `Alignment`

``` purescript
data Alignment
  = Auto
  | Top
  | Right
  | Bottom
  | Left
  | Center
  | Justify
```

##### Instances
``` purescript
Show Alignment
```

#### `textAlign`

``` purescript
textAlign :: Alignment -> Props Style
```

#### `textAlignVertical`

``` purescript
textAlignVertical :: Alignment -> Props Style
```

#### `TextDecorationLine`

``` purescript
data TextDecorationLine
  = None
  | Underline
  | LineThrough
  | UnderlineLineThrough
```

##### Instances
``` purescript
Show TextDecorationLine
```

#### `textDecorationLine`

``` purescript
textDecorationLine :: TextDecorationLine -> Props Style
```

#### `textDecorationStyle`

``` purescript
textDecorationStyle :: BorderStyle -> Props Style
```

#### `textDecorationColor`

``` purescript
textDecorationColor :: Color -> Props Style
```

#### `WritingDirection`

``` purescript
data WritingDirection
  = WritingDirectionAuto
  | LTR
  | RTL
```

##### Instances
``` purescript
Show WritingDirection
```

#### `writingDirection`

``` purescript
writingDirection :: WritingDirection -> Props Style
```

#### `ResizeMode`

``` purescript
data ResizeMode
  = ResizeContain
  | ResizeCover
  | ResizeStretch
  | ResizeCenter
```

##### Instances
``` purescript
Show ResizeMode
```

#### `resizeMode`

``` purescript
resizeMode :: ResizeMode -> Props Style
```

#### `backfaceVisibility`

``` purescript
backfaceVisibility :: Visibility -> Props Style
```

#### `tintColor`

``` purescript
tintColor :: Color -> Props Style
```

#### `overlayColor`

``` purescript
overlayColor :: Color -> Props Style
```

#### `shadowColor`

``` purescript
shadowColor :: Color -> Props Style
```

#### `shadowOffset`

``` purescript
shadowOffset :: forall a. { width :: Number, height :: Number | a } -> Props Style
```

#### `shadowOpacity`

``` purescript
shadowOpacity :: Number -> Props Style
```

#### `shadowRadius`

``` purescript
shadowRadius :: Number -> Props Style
```

#### `Transform`

``` purescript
data Transform
  = Perspective Number
  | Rotate String
  | RotateX String
  | RotateY String
  | RotateZ String
  | Scale Number
  | ScaleX Number
  | ScaleY Number
  | TranslateX Number
  | TranslateY Number
```

#### `transform`

``` purescript
transform :: Array Transform -> Props Style
```


