module React.Native.TextInput where

import Prelude
import Color (toHexString, Color)
import React (EventHandlerContext, Event, handle, ReactElement, ReactClass)
import React.DOM.Props (unsafeMkProps, Props)
import React.Native (createElement)
import Unsafe.Coerce (unsafeCoerce)

foreign import textInputClass :: ∀ props. ReactClass props

-- | Create a `TextInput` element with props and no child elements.
textInput :: Array Props -> ReactElement
textInput props = createElement textInputClass props []

-- Props
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

-- Events
onBlur :: ∀ eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
onBlur = unsafeMkProps "onBlur" <<< handle

onChange :: ∀ eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
onChange = unsafeMkProps "onChange" <<< handle

onChangeText :: ∀ eff props state result. (String -> EventHandlerContext eff props state result) -> Props
onChangeText = unsafeMkProps "onChangeText" <<< handle

onFocus :: ∀ eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
onFocus = unsafeMkProps "onFocus" <<< handle
