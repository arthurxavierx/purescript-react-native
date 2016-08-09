module React.Native.Styles where

import Prelude
import Color (toHexString, Color)
import React.Native.Props (Props, unsafeFromPropsArray, unsafeMkProps)

foreign import data Style :: *

style :: ∀ a. Array (Props Style) -> Props a
style = unsafeMkProps "style" <<< unsafeFromPropsArray

styles :: ∀ a. Array (Array (Props Style)) -> Props a
styles = unsafeMkProps "style" <<< map (unsafeFromPropsArray)

-- Dimensions
width :: Number -> Props Style
width = unsafeMkProps "width"

height :: Number -> Props Style
height = unsafeMkProps "height"

maxWidth :: Number -> Props Style
maxWidth = unsafeMkProps "maxWidth"

minWidth :: Number -> Props Style
minWidth = unsafeMkProps "minWidth"

maxHeight :: Number -> Props Style
maxHeight = unsafeMkProps "maxHeight"

minHeight :: Number -> Props Style
minHeight = unsafeMkProps "minHeight"

-- Positioning
data Position = Relative | Absolute

instance showPosition :: Show Position where
  show Relative = "relative"
  show Absolute = "absolute"

position :: Position -> Props Style
position = unsafeMkProps "position" <<< show

top :: Number -> Props Style
top = unsafeMkProps "top"

right :: Number -> Props Style
right = unsafeMkProps "right"

bottom :: Number -> Props Style
bottom = unsafeMkProps "bottom"

left :: Number -> Props Style
left = unsafeMkProps "left"

-- Flexbox
flex :: Int -> Props Style
flex = unsafeMkProps "flex"

data FlexDirection = Row | RowReverse | Column | ColumnReverse

instance showFlexDirection :: Show FlexDirection where
  show Row = "row"
  show RowReverse = "row-reverse"
  show Column = "column"
  show ColumnReverse = "column-reverse"

flexDirection :: FlexDirection -> Props Style
flexDirection = unsafeMkProps "flexDirection" <<< show

data FlexWrap = NoWrap | Wrap

instance showFlexWrap :: Show FlexWrap where
  show NoWrap = "nowrap"
  show Wrap = "wrap"

flexWrap :: FlexWrap -> Props Style
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

justifyContent :: FlexAlign -> Props Style
justifyContent FlexAuto = unsafeMkProps "justifyContent" "flex-start"
justifyContent FlexStretch = unsafeMkProps "justifyContent" "flex-start"
justifyContent a = unsafeMkProps "justifyContent" (show a)

alignItems :: FlexAlign -> Props Style
alignItems FlexAuto = unsafeMkProps "alignItems" "flex-start"
alignItems SpaceBetween = unsafeMkProps "alignItems" "flex-start"
alignItems SpaceAround = unsafeMkProps "alignItems" "flex-start"
alignItems a = unsafeMkProps "alignItems" (show a)

alignSelf :: FlexAlign -> Props Style
alignSelf SpaceBetween = unsafeMkProps "alignSelf" "flex-start"
alignSelf SpaceAround = unsafeMkProps "alignSelf" "flex-start"
alignSelf a = unsafeMkProps "alignSelf" (show a)

-- z-index
zIndex :: Int -> Props Style
zIndex = unsafeMkProps "zIndex"

-- Margin
margin :: Number -> Props Style
margin = unsafeMkProps "margin"

marginVertical :: Number -> Props Style
marginVertical = unsafeMkProps "marginVertical"

marginHorizontal :: Number -> Props Style
marginHorizontal = unsafeMkProps "marginHorizontal"

marginTop :: Number -> Props Style
marginTop = unsafeMkProps "marginTop"

marginRight :: Number -> Props Style
marginRight = unsafeMkProps "marginRight"

marginBottom :: Number -> Props Style
marginBottom = unsafeMkProps "marginBottom"

marginLeft :: Number -> Props Style
marginLeft = unsafeMkProps "marginLeft"

-- Padding
padding :: Number -> Props Style
padding = unsafeMkProps "padding"

paddingVertical :: Number -> Props Style
paddingVertical = unsafeMkProps "paddingVertical"

paddingHorizontal :: Number -> Props Style
paddingHorizontal = unsafeMkProps "paddingHorizontal"

paddingTop :: Number -> Props Style
paddingTop = unsafeMkProps "paddingTop"

paddingRight :: Number -> Props Style
paddingRight = unsafeMkProps "paddingRight"

paddingBottom :: Number -> Props Style
paddingBottom = unsafeMkProps "paddingBottom"

paddingLeft :: Number -> Props Style
paddingLeft = unsafeMkProps "paddingLeft"

-- Border
borderColor :: Color -> Props Style
borderColor = unsafeMkProps "borderColor" <<< toHexString

borderTopColor :: Color -> Props Style
borderTopColor = unsafeMkProps "borderTopColor" <<< toHexString

borderRightColor :: Color -> Props Style
borderRightColor = unsafeMkProps "borderRightColor" <<< toHexString

borderBottomColor :: Color -> Props Style
borderBottomColor = unsafeMkProps "borderBottomColor" <<< toHexString

borderLeftColor :: Color -> Props Style
borderLeftColor = unsafeMkProps "borderLeftColor" <<< toHexString

borderRadius :: Number -> Props Style
borderRadius = unsafeMkProps "borderRadius"

borderTopLeftRadius :: Number -> Props Style
borderTopLeftRadius = unsafeMkProps "borderTopLeftRadius"

borderTopRightRadius :: Number -> Props Style
borderTopRightRadius = unsafeMkProps "borderTopRightRadius"

borderBottomLeftRadius :: Number -> Props Style
borderBottomLeftRadius = unsafeMkProps "borderBottomLeftRadius"

borderBottomRightRadius :: Number -> Props Style
borderBottomRightRadius = unsafeMkProps "borderBottomRightRadius"

data BorderStyle = Solid | Dotted | Dashed | Double

instance showBorderStyle :: Show BorderStyle where
  show Solid = "solid"
  show Dotted = "dotted"
  show Dashed = "dashed"
  show Double = "double"

borderStyle :: BorderStyle -> Props Style
borderStyle Double = unsafeMkProps "borderStyle" "solid"
borderStyle s = unsafeMkProps "borderStyle" (show s)

borderWidth :: Number -> Props Style
borderWidth = unsafeMkProps "borderWidth"

borderTopWidth :: Number -> Props Style
borderTopWidth = unsafeMkProps "borderTopWidth"

borderRightWidth :: Number -> Props Style
borderRightWidth = unsafeMkProps "borderRightWidth"

borderBottomWidth :: Number -> Props Style
borderBottomWidth = unsafeMkProps "borderBottomWidth"

borderLeftWidth :: Number -> Props Style
borderLeftWidth = unsafeMkProps "borderLeftWidth"

-- Opacity
opacity :: Number -> Props Style
opacity = unsafeMkProps "opacity"

-- Visibility
data Visibility = Visible | Hidden

instance showVisibility :: Show Visibility where
  show Visible = "visible"
  show Hidden = "hidden"

overflow :: Visibility -> Props Style
overflow = unsafeMkProps "overflow" <<< show

-- Elevation
elevation :: Int -> Props Style
elevation = unsafeMkProps "elevation"

-- Color
color :: Color -> Props Style
color = unsafeMkProps "color" <<< toHexString

backgroundColor :: Color -> Props Style
backgroundColor = unsafeMkProps "backgroundColor" <<< toHexString

-- Font
fontFamily :: String -> Props Style
fontFamily = unsafeMkProps "fontFamily"

fontSize :: Number -> Props Style
fontSize = unsafeMkProps "fontSize"

data FontStyle = Normal | Italic

instance showFontStyle :: Show FontStyle where
  show Normal = "normal"
  show Italic = "italic"

fontStyle :: FontStyle -> Props Style
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

fontWeight :: FontWeight -> Props Style
fontWeight = unsafeMkProps "fontWeight" <<< show

-- Text
textShadowOffset :: ∀ a. { width :: Number, height :: Number | a } -> Props Style
textShadowOffset = unsafeMkProps "textShadowOffset"

textShadowRadius :: Number -> Props Style
textShadowRadius = unsafeMkProps "textShadowRadius"

textShadowColor :: Color -> Props Style
textShadowColor = unsafeMkProps "textShadowColor"

letterSpacing :: Number -> Props Style
letterSpacing = unsafeMkProps "letterSpacing"

lineHeight :: Number -> Props Style
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

textAlign :: Alignment -> Props Style
textAlign Left = unsafeMkProps "textAlign" "left"
textAlign Right = unsafeMkProps "textAlign" "right"
textAlign Center = unsafeMkProps "textAlign" "center"
textAlign Justify = unsafeMkProps "textAlign" "justify"
textAlign _ = unsafeMkProps "textAlign" "auto"

textAlignVertical :: Alignment -> Props Style
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

textDecorationLine :: TextDecorationLine -> Props Style
textDecorationLine = unsafeMkProps "textDecorationLine" <<< show

textDecorationStyle :: BorderStyle -> Props Style
textDecorationStyle = unsafeMkProps "textDecorationStyle" <<< show

textDecorationColor :: Color -> Props Style
textDecorationColor = unsafeMkProps "textDecorationColor" <<< toHexString

data WritingDirection = WritingDirectionAuto | LTR | RTL

instance showWritingDirection :: Show WritingDirection where
  show WritingDirectionAuto = "auto"
  show LTR = "ltr"
  show RTL = "rtl"

writingDirection :: WritingDirection -> Props Style
writingDirection = unsafeMkProps "writingDirection" <<< show

-- Image
data ResizeMode = ResizeContain | ResizeCover | ResizeStretch | ResizeCenter

instance showResizeMode :: Show ResizeMode where
  show ResizeContain = "contain"
  show ResizeCover = "cover"
  show ResizeStretch = "stretch"
  show ResizeCenter = "center"

resizeMode :: ResizeMode -> Props Style
resizeMode = unsafeMkProps "resizeMode" <<< show

backfaceVisibility :: Visibility -> Props Style
backfaceVisibility = unsafeMkProps "backfaceVisibility" <<< show

tintColor :: Color -> Props Style
tintColor = unsafeMkProps "tintColor" <<< toHexString

overlayColor :: Color -> Props Style
overlayColor = unsafeMkProps "overlayColor" <<< toHexString

-- Shadow (IOS)
shadowColor :: Color -> Props Style
shadowColor = unsafeMkProps "shadowColor" <<< toHexString

shadowOffset ::  ∀ a. { width :: Number, height :: Number | a } -> Props Style
shadowOffset = unsafeMkProps "shadowOffset"

shadowOpacity :: Number -> Props Style
shadowOpacity = unsafeMkProps "shadowOpacity"

shadowRadius :: Number -> Props Style
shadowRadius = unsafeMkProps "shadowRadius"

-- Transform
data Transform
  = Perspective Number
  | Rotate String | RotateX String | RotateY String | RotateZ String
  | Scale Number | ScaleX Number | ScaleY Number
  | TranslateX Number | TranslateY Number

transform :: Array Transform -> Props Style
transform = unsafeMkProps "transform" <<< map transformToProps
  where
    transformToProps :: Transform -> Props Style
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
