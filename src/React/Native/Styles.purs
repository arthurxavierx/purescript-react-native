module React.Native.Styles where

import Prelude
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
