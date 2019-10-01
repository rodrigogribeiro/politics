open import Empty
open import Unit
open import Bool

module Quantifiers where

  data Ex {A : Set}(P : A -> Set) : Set where
    witness : forall {x : A} -> P x -> Ex P

  -- In politics, its safe to generalize from
  -- particulars.

  postulate generalize : forall {A : Set}(P : A -> Set) -> (Ex P) -> forall (x : A) -> P x

  myProp : Bool -> Set
  myProp b = if b then True else False

  nothing-matters : False
  nothing-matters =  generalize myProp (witness tt) false

