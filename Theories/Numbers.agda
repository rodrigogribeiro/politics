open import Data.Nat renaming (ℕ to Nat)
open import Relation.Binary.PropositionalEquality renaming (_≡_ to _==_)
open import Empty


module Numbers where

  {-
  Everyone knows that, for a politician,
  millions and billions are the same.
  -}

  postulate whoCares : 100000 == 1000000000

  nothing-matters : False
  nothing-matters with whoCares
  ...| ()

  {-
  Numbers are hard. In order to simplify matters,
  we can assume then all equal.
  -}

  numbersAreComplicated : forall (n m : Nat) -> n == m
  numbersAreComplicated n m with nothing-matters
  ...| ()

  
