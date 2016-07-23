module React.Native.Props where

import Prelude
import Color (toHexString, Color)
import React.DOM.Props (Props, unsafeMkProps)

-- General
testID :: String -> Props
testID = unsafeMkProps "testID"

accessible :: Boolean -> Props
accessible = unsafeMkProps "accessible"

accessibilityLabel :: String -> Props
accessibilityLabel = unsafeMkProps "accessibilityLabel"

-- View
hitSlop ::
  ∀ a.
  { top :: Number, left :: Number, bottom :: Number, right :: Number | a }
  -> Props
hitSlop = unsafeMkProps "hitSlop"

data PointerEvent
  = PointerEventAuto
  | PointerEventNone
  | PointerEventBoxOnly
  | PointerEventBoxNone

instance showPointerEvent :: Show PointerEvent where
  show PointerEventAuto = "auto"
  show PointerEventNone = "none"
  show PointerEventBoxOnly = "box-only"
  show PointerEventBoxNone = "box-none"

pointerEvents :: PointerEvent -> Props
pointerEvents = unsafeMkProps "pointerEvents" <<< show

removeClippedSubviews :: Boolean -> Props
removeClippedSubviews = unsafeMkProps "removeClippedSubviews"

collapsable :: Boolean -> Props
collapsable = unsafeMkProps "collapsable"

-- Text
data LineBreakMode
  = LineBreakHead
  | LineBreakMiddle
  | LineBreakTail
  | LineBreakClip

instance showLineBreakMode :: Show LineBreakMode where
  show LineBreakHead = "head"
  show LineBreakMiddle = "middle"
  show LineBreakTail = "tail"
  show LineBreakClip = "clip"

lineBreakMode :: LineBreakMode -> Props
lineBreakMode = unsafeMkProps "lineBreakMode" <<< show

numberOfLines :: Int -> Props
numberOfLines = unsafeMkProps "numberOfLines"

selectable :: Boolean -> Props
selectable = unsafeMkProps "selectable"

allowFontScaling :: Boolean -> Props
allowFontScaling = unsafeMkProps "allowFontScaling"

suppressHighlighting :: Boolean -> Props
suppressHighlighting = unsafeMkProps "suppressHighlighting"

-- Image
data Source = SourceId Int | SourceUri String

source :: Source -> Props
source (SourceId id) = unsafeMkProps "source" id
source (SourceUri uri) = unsafeMkProps "source" {uri: uri}

blurRadius :: Number -> Props
blurRadius = unsafeMkProps "blurRadius"

-- TextInput
data AutoCapitalize
  = AutoCapitalizeNone
  | AutoCapitalizeSentences
  | AutoCapitalizeWords
  | AutoCapitalizeCharacters

instance showAutoCapitalize :: Show AutoCapitalize where
  show AutoCapitalizeNone = "none"
  show AutoCapitalizeSentences = "sentences"
  show AutoCapitalizeWords = "words"
  show AutoCapitalizeCharacters = "characters"

autoCapitalize :: AutoCapitalize -> Props
autoCapitalize = unsafeMkProps "autoCapitalize" <<< show

autoCorrect :: Boolean -> Props
autoCorrect = unsafeMkProps "autoCorrect"

autoFocus :: Boolean -> Props
autoFocus = unsafeMkProps "autoFocus"

blurOnSubmit :: Boolean -> Props
blurOnSubmit = unsafeMkProps "blurOnSubmit"

defaultValue :: String -> Props
defaultValue = unsafeMkProps "defaultValue"

editable :: Boolean -> Props
editable = unsafeMkProps "editable"

maxLength :: Int -> Props
maxLength = unsafeMkProps "maxLength"

multiline :: Boolean -> Props
multiline = unsafeMkProps "multiline"

placeholder :: String -> Props
placeholder = unsafeMkProps "placeholder"

placeholderTextColor :: Color -> Props
placeholderTextColor = unsafeMkProps "placeholderTextColor" <<< toHexString

secureTextEntry :: Boolean -> Props
secureTextEntry = unsafeMkProps "secureTextEntry"

selectTextOnFocus :: Boolean -> Props
selectTextOnFocus = unsafeMkProps "selectTextOnFocus"

selectionColor :: Color -> Props
selectionColor = unsafeMkProps "selectionColor" <<< toHexString

value :: String -> Props
value = unsafeMkProps "value"

data KeyboardType
  = KeyboardDefault
  | KeyboardEmailAddress
  | KeyboardNumeric
  | KeyboardPhonePad
  | KeyboardAsciiCapable
  | KeyboardNumbers
  | KeyboardUrl
  | KeyboardNumberPad
  | KeyboardNamePhonePad
  | KeyboardDecimalPad
  | KeyboardTwitter
  | KeyboardWebSearch

instance showKeyboardType :: Show KeyboardType where
  show KeyboardDefault = "default"
  show KeyboardEmailAddress = "email-address"
  show KeyboardNumeric = "numeric"
  show KeyboardPhonePad = "phone-pad"
  show KeyboardAsciiCapable = "ascii-capable"
  show KeyboardNumbers = "numbers-and-punctuation"
  show KeyboardUrl = "url"
  show KeyboardNumberPad = "number-pad"
  show KeyboardNamePhonePad = "name-phone-pad"
  show KeyboardDecimalPad = "decimal-pad"
  show KeyboardTwitter = "twitter"
  show KeyboardWebSearch = "web-search"

keyboardType :: KeyboardType -> Props
keyboardType = unsafeMkProps "keyboardType" <<< show

data ReturnKeyType
  = ReturnKeyDone
  | ReturnKeyGo
  | ReturnKeyNext
  | ReturnKeySearch
  | ReturnKeySend

instance showReturnKeyType :: Show ReturnKeyType where
  show ReturnKeyDone = "done"
  show ReturnKeyGo = "go"
  show ReturnKeyNext = "next"
  show ReturnKeySearch = "search"
  show ReturnKeySend = "send"

returnKeyType :: ReturnKeyType -> Props
returnKeyType = unsafeMkProps "returnKeyType" <<< show
