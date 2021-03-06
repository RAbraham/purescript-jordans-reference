module Syntax.Typeclass.SingleParameter where

import Prelude

-- Basic Type classes

-- a type class definition...
class TypeClassName parameterType where
  functionName :: parameterType -> ReturnType

-- Or the parameter type could be the return type:
class TypeClassName_ parameterType where
  fromString :: String -> parameterType

-- example
class ToInt a where
  toInt :: a -> Int

-- ... and its implementation for SomeType
instance typeClassNameDefinitionForSomeType :: TypeClassName SomeType where
  functionName type_ = ReturnType

instance toIntBoolean :: ToInt Boolean where
  toInt true = 1
  toInt false = 0

test :: Boolean
test = (toInt true) == 0

-- Type classes can also specify values:

class TypeClassDefiningValue a where
  value :: a

instance intValue :: TypeClassDefiningValue Int where
  value = 42

-- Type classes usually only specify one function, but sometimes
-- they specify multiple functions and/or values:

class ZeroAppender a where
  append :: a -> a -> a
  zeroValue :: a

instance intZeroAppender :: ZeroAppender Int where
  append = (+)
  zeroValue = 0

{-
Note: Type class instances that use type aliases (i.e. the `type` keyword)
wil fail to compile. The following code demonstrates this.
-}

-- Uncomment me and I'll become a compiler error
-- type Age = Int
-- instance ageValue :: TypeClassDefiningValue Age where
--   value = 2

-- Type classes are useful for constraining types, which will be covered next.

-- necessary to make file compile
data ReturnType = ReturnType
data SomeType
