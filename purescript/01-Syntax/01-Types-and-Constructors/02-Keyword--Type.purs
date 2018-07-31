-- Syntax
type TypeAliasForCompileTime = RunTimeType {-
type Age = Int
type ComplexFunction = Int -> (forall a b. a -> (forall c. c -> b) -> b)
-}

-- examples
type Age = Int
type ComplexFunction = Int -> (forall a b. a -> (forall c. c-> b) -> b)

{-
functionName :: ParamType1 -> ReturnType -}
functionName :: Age        -> String
            -- 'Age' is a more descriptive type name than 'Int'
