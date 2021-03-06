# NonEmpty

To guarantee that a box-like type cannot be empty, we wrap it with a type.

```purescript
data NonEmpty box a = NonEmpty a (box a)
infixr 5 NonEmpty as :|

-- example
"first" :| ["second", "third"]        -- NonEmpty Array String
"first" :| ("second" : "third" : Nil) -- NonEmpty List  String
```

| Package | Type name | "Plain English" name |
| - | - | - | - | - |
| [purescript-nonempty](https://pursuit.purescript.org/packages/purescript-nonempty/5.0.0/docs/Data.NonEmpty) | `NonEmpty box a` | Wrapper type that guarantees that at least one instance of `a` exists
