open import Empty

module Absurd where

  postulate absurd : forall {A : Set} -> not (not (not A)) -> A

  nothing-matters : False
  nothing-matters = absurd \ r -> r (\ z -> z)
