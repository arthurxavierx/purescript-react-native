module React.Native.TextInput where

import Prelude
import Color (toHexString, Color)
import React (createElement, EventHandlerContext, Event, handle, ReactElement, ReactClass)
import React.Native.Props.Type (unsafeFromPropsArray, unsafeMkProps, Props)

foreign import data TextInput :: *
foreign import textInputClass :: ∀ props. ReactClass props

-- | Create a `TextInput` element with props and no child elements.
textInput :: Array (Props TextInput) -> ReactElement
textInput props = createElement textInputClass (unsafeFromPropsArray props) []

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

autoCapitalize :: AutoCapitalize -> Props TextInput
autoCapitalize = unsafeMkProps "autoCapitalize" <<< show

autoCorrect :: Boolean -> Props TextInput
autoCorrect = unsafeMkProps "autoCorrect"

autoFocus :: Boolean -> Props TextInput
autoFocus = unsafeMkProps "autoFocus"

blurOnSubmit :: Boolean -> Props TextInput
blurOnSubmit = unsafeMkProps "blurOnSubmit"

defaultValue :: String -> Props TextInput
defaultValue = unsafeMkProps "defaultValue"

editable :: Boolean -> Props TextInput
editable = unsafeMkProps "editable"

maxLength :: Int -> Props TextInput
maxLength = unsafeMkProps "maxLength"

multiline :: Boolean -> Props TextInput
multiline = unsafeMkProps "multiline"

placeholder :: String -> Props TextInput
placeholder = unsafeMkProps "placeholder"

placeholderTextColor :: Color -> Props TextInput
placeholderTextColor = unsafeMkProps "placeholderTextColor" <<< toHexString

secureTextEntry :: Boolean -> Props TextInput
secureTextEntry = unsafeMkProps "secureTextEntry"

selectTextOnFocus :: Boolean -> Props TextInput
selectTextOnFocus = unsafeMkProps "selectTextOnFocus"

selectionColor :: Color -> Props TextInput
selectionColor = unsafeMkProps "selectionColor" <<< toHexString

value :: String -> Props TextInput
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

keyboardType :: KeyboardType -> Props TextInput
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

returnKeyType :: ReturnKeyType -> Props TextInput
returnKeyType = unsafeMkProps "returnKeyType" <<< show

-- Events
onBlur :: ∀ eff props state result. (Event -> EventHandlerContext eff props state result) -> Props TextInput
onBlur = unsafeMkProps "onBlur" <<< handle

onChange :: ∀ eff props state result. (Event -> EventHandlerContext eff props state result) -> Props TextInput
onChange = unsafeMkProps "onChange" <<< handle

onChangeText :: ∀ eff props state result. (String -> EventHandlerContext eff props state result) -> Props TextInput
onChangeText = unsafeMkProps "onChangeText" <<< handle

onFocus :: ∀ eff props state result. (Event -> EventHandlerContext eff props state result) -> Props TextInput
onFocus = unsafeMkProps "onFocus" <<< handle

onEndEditing :: ∀ eff props state result. (Event -> EventHandlerContext eff props state result) -> Props TextInput
onEndEditing = unsafeMkProps "onEndEditing" <<< handle

onSubmitEditing :: ∀ eff props state result. (Event -> EventHandlerContext eff props state result) -> Props TextInput
onSubmitEditing = unsafeMkProps "onSubmitEditing" <<< handle
