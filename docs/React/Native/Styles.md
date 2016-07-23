## Module React.Native.Styles

#### `style`

``` purescript
style :: Array Props -> Props
```

#### `styles`

``` purescript
styles :: Array (Array Props) -> Props
```

#### `width`

``` purescript
width :: Number -> Props
```

#### `height`

``` purescript
height :: Number -> Props
```

#### `maxWidth`

``` purescript
maxWidth :: Number -> Props
```

#### `minWidth`

``` purescript
minWidth :: Number -> Props
```

#### `maxHeight`

``` purescript
maxHeight :: Number -> Props
```

#### `minHeight`

``` purescript
minHeight :: Number -> Props
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
position :: Position -> Props
```

#### `top`

``` purescript
top :: Number -> Props
```

#### `right`

``` purescript
right :: Number -> Props
```

#### `bottom`

``` purescript
bottom :: Number -> Props
```

#### `left`

``` purescript
left :: Number -> Props
```

#### `flex`

``` purescript
flex :: Int -> Props
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
flexDirection :: FlexDirection -> Props
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
flexWrap :: FlexWrap -> Props
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
justifyContent :: FlexAlign -> Props
```

#### `alignItems`

``` purescript
alignItems :: FlexAlign -> Props
```

#### `alignSelf`

``` purescript
alignSelf :: FlexAlign -> Props
```

#### `zIndex`

``` purescript
zIndex :: Int -> Props
```

#### `margin`

``` purescript
margin :: Number -> Props
```

#### `marginVertical`

``` purescript
marginVertical :: Number -> Props
```

#### `marginHorizontal`

``` purescript
marginHorizontal :: Number -> Props
```

#### `marginTop`

``` purescript
marginTop :: Number -> Props
```

#### `marginRight`

``` purescript
marginRight :: Number -> Props
```

#### `marginBottom`

``` purescript
marginBottom :: Number -> Props
```

#### `marginLeft`

``` purescript
marginLeft :: Number -> Props
```

#### `padding`

``` purescript
padding :: Number -> Props
```

#### `paddingVertical`

``` purescript
paddingVertical :: Number -> Props
```

#### `paddingHorizontal`

``` purescript
paddingHorizontal :: Number -> Props
```

#### `paddingTop`

``` purescript
paddingTop :: Number -> Props
```

#### `paddingRight`

``` purescript
paddingRight :: Number -> Props
```

#### `paddingBottom`

``` purescript
paddingBottom :: Number -> Props
```

#### `paddingLeft`

``` purescript
paddingLeft :: Number -> Props
```

#### `borderColor`

``` purescript
borderColor :: Color -> Props
```

#### `borderTopColor`

``` purescript
borderTopColor :: Color -> Props
```

#### `borderRightColor`

``` purescript
borderRightColor :: Color -> Props
```

#### `borderBottomColor`

``` purescript
borderBottomColor :: Color -> Props
```

#### `borderLeftColor`

``` purescript
borderLeftColor :: Color -> Props
```

#### `borderRadius`

``` purescript
borderRadius :: Number -> Props
```

#### `borderTopLeftRadius`

``` purescript
borderTopLeftRadius :: Number -> Props
```

#### `borderTopRightRadius`

``` purescript
borderTopRightRadius :: Number -> Props
```

#### `borderBottomLeftRadius`

``` purescript
borderBottomLeftRadius :: Number -> Props
```

#### `borderBottomRightRadius`

``` purescript
borderBottomRightRadius :: Number -> Props
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
borderStyle :: BorderStyle -> Props
```

#### `borderWidth`

``` purescript
borderWidth :: Number -> Props
```

#### `borderTopWidth`

``` purescript
borderTopWidth :: Number -> Props
```

#### `borderRightWidth`

``` purescript
borderRightWidth :: Number -> Props
```

#### `borderBottomWidth`

``` purescript
borderBottomWidth :: Number -> Props
```

#### `borderLeftWidth`

``` purescript
borderLeftWidth :: Number -> Props
```

#### `opacity`

``` purescript
opacity :: Number -> Props
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
overflow :: Visibility -> Props
```

#### `elevation`

``` purescript
elevation :: Int -> Props
```

#### `color`

``` purescript
color :: Color -> Props
```

#### `backgroundColor`

``` purescript
backgroundColor :: Color -> Props
```

#### `fontFamily`

``` purescript
fontFamily :: String -> Props
```

#### `fontSize`

``` purescript
fontSize :: Number -> Props
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
fontStyle :: FontStyle -> Props
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
fontWeight :: FontWeight -> Props
```

#### `textShadowOffset`

``` purescript
textShadowOffset :: forall a. { width :: Number, height :: Number | a } -> Props
```

#### `textShadowRadius`

``` purescript
textShadowRadius :: Number -> Props
```

#### `textShadowColor`

``` purescript
textShadowColor :: Color -> Props
```

#### `letterSpacing`

``` purescript
letterSpacing :: Number -> Props
```

#### `lineHeight`

``` purescript
lineHeight :: Number -> Props
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
textAlign :: Alignment -> Props
```

#### `textAlignVertical`

``` purescript
textAlignVertical :: Alignment -> Props
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
textDecorationLine :: TextDecorationLine -> Props
```

#### `textDecorationStyle`

``` purescript
textDecorationStyle :: BorderStyle -> Props
```

#### `textDecorationColor`

``` purescript
textDecorationColor :: Color -> Props
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
writingDirection :: WritingDirection -> Props
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
resizeMode :: ResizeMode -> Props
```

#### `backfaceVisibility`

``` purescript
backfaceVisibility :: Visibility -> Props
```

#### `tintColor`

``` purescript
tintColor :: Color -> Props
```

#### `overlayColor`

``` purescript
overlayColor :: Color -> Props
```

#### `shadowColor`

``` purescript
shadowColor :: Color -> Props
```

#### `shadowOffset`

``` purescript
shadowOffset :: forall a. { width :: Number, height :: Number | a } -> Props
```

#### `shadowOpacity`

``` purescript
shadowOpacity :: Number -> Props
```

#### `shadowRadius`

``` purescript
shadowRadius :: Number -> Props
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
transform :: Array Transform -> Props
```


