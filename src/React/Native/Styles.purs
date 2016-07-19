module React.Native.Styles where

import Prelude
import Color (toHexString, Color)
import React.DOM.Props (Props, unsafeFromPropsArray, unsafeMkProps)

foreign import data Stylesheet :: *
foreign import unsafeCreateStylesheet :: Props -> Stylesheet
foreign import unsafeReadProps :: ∀ a. a -> String -> Props

unsafeMkPropsArray :: String -> Array Props -> Props
unsafeMkPropsArray name = unsafeMkProps name <<< unsafeFromPropsArray

infixr 1 unsafeMkProps as .=
infixr 1 unsafeMkPropsArray as :=

createStylesheet :: Array Props -> Stylesheet
createStylesheet = unsafeCreateStylesheet <<< unsafeFromPropsArray

createStyle :: String -> Array Props -> Props
createStyle = unsafeMkPropsArray

style :: Stylesheet -> String -> Props
style stylesheet = unsafeMkProps "style" <<< unsafeReadProps stylesheet

styles :: Stylesheet -> Array String -> Props
styles stylesheet = unsafeMkProps "style" <<< map (unsafeReadProps stylesheet)

-- Dimensions
width :: Number -> Props
width = unsafeMkProps "width"

height :: Number -> Props
height = unsafeMkProps "height"

maxWidth :: Number -> Props
maxWidth = unsafeMkProps "maxWidth"

minWidth :: Number -> Props
minWidth = unsafeMkProps "minWidth"

maxHeight :: Number -> Props
maxHeight = unsafeMkProps "maxHeight"

minHeight :: Number -> Props
minHeight = unsafeMkProps "minHeight"

-- Positioning
data Position = Relative | Absolute

instance showPosition :: Show Position where
  show Relative = "relative"
  show Absolute = "absolute"

position :: Position -> Props
position = unsafeMkProps "position" <<< show

top :: Number -> Props
top = unsafeMkProps "top"

right :: Number -> Props
right = unsafeMkProps "right"

bottom :: Number -> Props
bottom = unsafeMkProps "bottom"

left :: Number -> Props
left = unsafeMkProps "left"

-- Flexbox
flex :: Int -> Props
flex = unsafeMkProps "flex"

data FlexDirection = Row | RowReverse | Column | ColumnReverse

instance showFlexDirection :: Show FlexDirection where
  show Row = "row"
  show RowReverse = "row-reverse"
  show Column = "column"
  show ColumnReverse = "column-reverse"

flexDirection :: FlexDirection -> Props
flexDirection = unsafeMkProps "flexDirection" <<< show

data FlexWrap = NoWrap | Wrap

instance showFlexWrap :: Show FlexWrap where
  show NoWrap = "nowrap"
  show Wrap = "wrap"

flexWrap :: FlexWrap -> Props
flexWrap = unsafeMkProps "flexWrap" <<< show

data FlexAlign
  = FlexAuto
  | FlexStart
  | FlexEnd
  | FlexCenter
  | FlexStretch
  | SpaceBetween
  | SpaceAround

instance showFlexAlign :: Show FlexAlign where
  show FlexAuto = "auto"
  show FlexStart = "flex-start"
  show FlexEnd = "flex-end"
  show FlexCenter = "center"
  show FlexStretch = "stretch"
  show SpaceBetween = "space-between"
  show SpaceAround = "space-around"

justifyContent :: FlexAlign -> Props
justifyContent FlexAuto = unsafeMkProps "justifyContent" "flex-start"
justifyContent FlexStretch = unsafeMkProps "justifyContent" "flex-start"
justifyContent a = unsafeMkProps "justifyContent" (show a)

alignItems :: FlexAlign -> Props
alignItems FlexAuto = unsafeMkProps "alignItems" "flex-start"
alignItems SpaceBetween = unsafeMkProps "alignItems" "flex-start"
alignItems SpaceAround = unsafeMkProps "alignItems" "flex-start"
alignItems a = unsafeMkProps "alignItems" (show a)

alignSelf :: FlexAlign -> Props
alignSelf SpaceBetween = unsafeMkProps "alignSelf" "flex-start"
alignSelf SpaceAround = unsafeMkProps "alignSelf" "flex-start"
alignSelf a = unsafeMkProps "alignSelf" (show a)

-- z-index
zIndex :: Int -> Props
zIndex = unsafeMkProps "zIndex"

-- Margin
margin :: Number -> Props
margin = unsafeMkProps "margin"

marginVertical :: Number -> Props
marginVertical = unsafeMkProps "marginVertical"

marginHorizontal :: Number -> Props
marginHorizontal = unsafeMkProps "marginHorizontal"

marginTop :: Number -> Props
marginTop = unsafeMkProps "marginTop"

marginRight :: Number -> Props
marginRight = unsafeMkProps "marginRight"

marginBottom :: Number -> Props
marginBottom = unsafeMkProps "marginBottom"

marginLeft :: Number -> Props
marginLeft = unsafeMkProps "marginLeft"

-- Padding
padding :: Number -> Props
padding = unsafeMkProps "padding"

paddingVertical :: Number -> Props
paddingVertical = unsafeMkProps "paddingVertical"

paddingHorizontal :: Number -> Props
paddingHorizontal = unsafeMkProps "paddingHorizontal"

paddingTop :: Number -> Props
paddingTop = unsafeMkProps "paddingTop"

paddingRight :: Number -> Props
paddingRight = unsafeMkProps "paddingRight"

paddingBottom :: Number -> Props
paddingBottom = unsafeMkProps "paddingBottom"

paddingLeft :: Number -> Props
paddingLeft = unsafeMkProps "paddingLeft"

-- Border
borderColor :: Color -> Props
borderColor = unsafeMkProps "borderColor" <<< toHexString

borderTopColor :: Color -> Props
borderTopColor = unsafeMkProps "borderTopColor" <<< toHexString

borderRightColor :: Color -> Props
borderRightColor = unsafeMkProps "borderRightColor" <<< toHexString

borderBottomColor :: Color -> Props
borderBottomColor = unsafeMkProps "borderBottomColor" <<< toHexString

borderLeftColor :: Color -> Props
borderLeftColor = unsafeMkProps "borderLeftColor" <<< toHexString

borderRadius :: Number -> Props
borderRadius = unsafeMkProps "borderRadius"

borderTopLeftRadius :: Number -> Props
borderTopLeftRadius = unsafeMkProps "borderTopLeftRadius"

borderTopRightRadius :: Number -> Props
borderTopRightRadius = unsafeMkProps "borderTopRightRadius"

borderBottomLeftRadius :: Number -> Props
borderBottomLeftRadius = unsafeMkProps "borderBottomLeftRadius"

borderBottomRightRadius :: Number -> Props
borderBottomRightRadius = unsafeMkProps "borderBottomRightRadius"

data BorderStyle = Solid | Dotted | Dashed | Double

instance showBorderStyle :: Show BorderStyle where
  show Solid = "solid"
  show Dotted = "dotted"
  show Dashed = "dashed"
  show Double = "double"

borderStyle :: BorderStyle -> Props
borderStyle Double = unsafeMkProps "borderStyle" "solid"
borderStyle s = unsafeMkProps "borderStyle" (show s)

borderWidth :: Number -> Props
borderWidth = unsafeMkProps "borderWidth"

borderTopWidth :: Number -> Props
borderTopWidth = unsafeMkProps "borderTopWidth"

borderRightWidth :: Number -> Props
borderRightWidth = unsafeMkProps "borderRightWidth"

borderBottomWidth :: Number -> Props
borderBottomWidth = unsafeMkProps "borderBottomWidth"

borderLeftWidth :: Number -> Props
borderLeftWidth = unsafeMkProps "borderLeftWidth"

-- Opacity
opacity :: Number -> Props
opacity = unsafeMkProps "opacity"

-- Visibility
data Visibility = Visible | Hidden

instance showVisibility :: Show Visibility where
  show Visible = "visible"
  show Hidden = "hidden"

overflow :: Visibility -> Props
overflow = unsafeMkProps "overflow" <<< show

-- Elevation
elevation :: Int -> Props
elevation = unsafeMkProps "elevation"

-- Color
color :: Color -> Props
color = unsafeMkProps "color" <<< toHexString

backgroundColor :: Color -> Props
backgroundColor = unsafeMkProps "backgroundColor" <<< toHexString

-- Font
fontFamily :: String -> Props
fontFamily = unsafeMkProps "fontFamily"

fontSize :: Number -> Props
fontSize = unsafeMkProps "fontSize"

data FontStyle = Normal | Italic

instance showFontStyle :: Show FontStyle where
  show Normal = "normal"
  show Italic = "italic"

fontStyle :: FontStyle -> Props
fontStyle = unsafeMkProps "fontStyle"

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

instance showFontWeight :: Show FontWeight where
  show Thin = "100"
  show ExtraLight = "200"
  show Light = "300"
  show Regular = "normal"
  show Medium = "500"
  show SemiBold = "600"
  show Bold = "bold"
  show ExtraBold = "800"
  show Black = "900"

fontWeight :: FontWeight -> Props
fontWeight = unsafeMkProps "fontWeight" <<< show

-- Text
type Shape =
  { width :: Number
  , height :: Number
  }

textShadowOffset :: Shape -> Props
textShadowOffset = unsafeMkProps "textShadowOffset"

textShadowRadius :: Number -> Props
textShadowRadius = unsafeMkProps "textShadowRadius"

textShadowColor :: Color -> Props
textShadowColor = unsafeMkProps "textShadowColor"

letterSpacing :: Number -> Props
letterSpacing = unsafeMkProps "letterSpacing"

lineHeight :: Number -> Props
lineHeight = unsafeMkProps "lineHeight"

data Alignment = Auto | Top | Right | Bottom | Left | Center | Justify

instance showAlignment :: Show Alignment where
  show Auto = "auto"
  show Top = "top"
  show Right = "right"
  show Bottom = "bottom"
  show Left = "left"
  show Center = "center"
  show Justify = "justify"

textAlign :: Alignment -> Props
textAlign Left = unsafeMkProps "textAlign" "left"
textAlign Right = unsafeMkProps "textAlign" "right"
textAlign Center = unsafeMkProps "textAlign" "center"
textAlign Justify = unsafeMkProps "textAlign" "justify"
textAlign _ = unsafeMkProps "textAlign" "auto"

textAlignVertical :: Alignment -> Props
textAlignVertical Top = unsafeMkProps "textAlignVertical" "top"
textAlignVertical Bottom = unsafeMkProps "textAlignVertical" "bottom"
textAlignVertical Center = unsafeMkProps "textAlignVertical" "center"
textAlignVertical _ = unsafeMkProps "textAlignVertical" "auto"

data TextDecorationLine = None | Underline | LineThrough | UnderlineLineThrough

instance showTextDecorationLine :: Show TextDecorationLine where
  show None = "none"
  show Underline = "underline"
  show LineThrough = "line-through"
  show UnderlineLineThrough = "underline line-through"

textDecorationLine :: TextDecorationLine -> Props
textDecorationLine = unsafeMkProps "textDecorationLine" <<< show

textDecorationStyle :: BorderStyle -> Props
textDecorationStyle = unsafeMkProps "textDecorationStyle" <<< show

textDecorationColor :: Color -> Props
textDecorationColor = unsafeMkProps "textDecorationColor" <<< toHexString

data WritingDirection = WritingDirectionAuto | LTR | RTL

instance showWritingDirection :: Show WritingDirection where
  show WritingDirectionAuto = "auto"
  show LTR = "ltr"
  show RTL = "rtl"

writingDirection :: WritingDirection -> Props
writingDirection = unsafeMkProps "writingDirection" <<< show

-- Image
data ResizeMode = ResizeContain | ResizeCover | ResizeStretch | ResizeCenter

instance showResizeMode :: Show ResizeMode where
  show ResizeContain = "contain"
  show ResizeCover = "cover"
  show ResizeStretch = "stretch"
  show ResizeCenter = "center"

resizeMode :: ResizeMode -> Props
resizeMode = unsafeMkProps "resizeMode" <<< show

backfaceVisibility :: Visibility -> Props
backfaceVisibility = unsafeMkProps "backfaceVisibility" <<< show

tintColor :: Color -> Props
tintColor = unsafeMkProps "tintColor" <<< toHexString

overlayColor :: Color -> Props
overlayColor = unsafeMkProps "overlayColor" <<< toHexString

-- Shadow (IOS)
shadowColor :: Color -> Props
shadowColor = unsafeMkProps "shadowColor" <<< toHexString

shadowOffset :: Shape -> Props
shadowOffset = unsafeMkProps "shadowOffset"

shadowOpacity :: Number -> Props
shadowOpacity = unsafeMkProps "shadowOpacity"

shadowRadius :: Number -> Props
shadowRadius = unsafeMkProps "shadowRadius"

-- Transform
data Transform
  = Perspective Number
  | Rotate String | RotateX String | RotateY String | RotateZ String
  | Scale Number | ScaleX Number | ScaleY Number
  | TranslateX Number | TranslateY Number

transform :: Array Transform -> Props
transform = unsafeMkProps "transform" <<< map transformToProps
  where
    transformToProps :: Transform -> Props
    transformToProps (Perspective n) = unsafeMkProps "perspective" n
    transformToProps (Rotate s)      = unsafeMkProps "rotate" s
    transformToProps (RotateX s)     = unsafeMkProps "rotateX" s
    transformToProps (RotateY s)     = unsafeMkProps "rotateY" s
    transformToProps (RotateZ s)     = unsafeMkProps "rotateZ" s
    transformToProps (Scale n)       = unsafeMkProps "scale" n
    transformToProps (ScaleX n)      = unsafeMkProps "scaleX" n
    transformToProps (ScaleY n)      = unsafeMkProps "scaleY" n
    transformToProps (TranslateX n)  = unsafeMkProps "translateX" n
    transformToProps (TranslateY n)  = unsafeMkProps "translateY" n
