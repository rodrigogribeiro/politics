open import Empty

module Circular where

  postulate circular : forall {A : Set} -> (A -> A) -> A

  -- apply circular

  nothing-matters : False
  nothing-matters
    = circular (\ z -> z)
