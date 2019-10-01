module Bool where

  data Bool : Set where
    true false : Bool

  if_then_else_ : forall {l}{A : Set l} -> Bool -> A -> A -> A
  if true then x else _ = x
  if false then _ else y = y 
