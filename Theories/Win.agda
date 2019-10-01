open import Empty
open import Circular

module Win where

  win : forall (A : Set) -> A
  win A with nothing-matters
  ...| ()
