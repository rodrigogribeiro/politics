open import Empty
open import And

module Clever where

  {-
  Since, I'm clever, I could state everything...
  -}

  data Clever (A : Set) : Set where
    clever : not A -> Clever A

  postulate i-am-clever : forall (A : Set) -> Clever A -> A

  clever-False : Clever False
  clever-False = clever (\ r -> r)

  {-
  Since I'm very clever, I can say that from A, I could deduce A & B
  -}

  clever-and-left : forall {A B : Set} -> Clever A -> Clever (A & B)
  clever-and-left (clever na) = clever (\ ab -> na (fst ab))

  clever-and-right : forall {A B : Set} -> Clever B -> Clever (A & B)
  clever-and-right (clever nb) = clever (\ ab -> nb (snd ab))
