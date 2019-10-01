module Empty where

  data False : Set where

  not : Set -> Set
  not = \ A -> A -> False
