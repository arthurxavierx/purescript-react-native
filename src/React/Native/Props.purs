-- | The Props module provides definitions of Props functions that are common
-- | to many React Native elements.
module React.Native.Props
  ( testID
  , accessible
  , accessibilityLabel
  , module Props
  ) where

import React.Native.Props.Type (unsafeMkProps, unsafeFromPropsArray, Props) as Props
import React.Native.Image (loadImageUri, ImageSource, source, blurRadius) as Props
import React.Native.Navigator (configureScene, initialRoute, initialRouteStack
                              , _navigationBar, _navigator, renderScene, RenderScene, sceneStyle) as Props
import React.Native.Text (lineBreakMode, LineBreakMode, numberOfLines
                         , selectable, allowFontScaling, suppressHighlighting) as Props
import React.Native.TextInput (autoCapitalize, AutoCapitalize, autoCorrect, autoFocus
                              , blurOnSubmit, defaultValue, editable, maxLength
                              , multiline, placeholder, placeholderTextColor
                              , secureTextEntry, selectTextOnFocus, selectionColor
                              , value, keyboardType, KeyboardType, returnKeyType, ReturnKeyType) as Props
import React.Native.ToolbarAndroid (actions, contentInsetEnd, contentInsetStart
                                   , logo, navIcon, overflowIcon, rtl, subtitle
                                   , subtitleColor, title, titleColor) as Props
import React.Native.Touchable (disabled, delayLongPress, delayPressIn, delayPressOut) as Props
import React.Native.TouchableHighlight (activeOpacity, underlayColor) as Props
import React.Native.View (hitSlop, pointerEvents, PointerEvent, removeClippedSubviews, collapsable) as Props

testID :: ∀ a. String -> Props.Props a
testID = Props.unsafeMkProps "testID"

accessible :: ∀ a. Boolean -> Props.Props a
accessible = Props.unsafeMkProps "accessible"

accessibilityLabel :: ∀ a. String -> Props.Props a
accessibilityLabel = Props.unsafeMkProps "accessibilityLabel"
