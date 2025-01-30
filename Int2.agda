module Int2 where

-- import `plus` & `times` on Nats;
-- use these functions where appropriate below.
open import Nat

data Int : Set where
  -- (+ n) represents positive n.
  + : Nat → Int
  -- (- n) represents negative n.
  - : Nat → Int
  -- 0 can be represented as (+ zero) or (- zero).

-- given i, return i + 1.
isuc : Int → Int
isuc (+ n) = + (suc n)
isuc (- zero) = + (suc zero)
isuc (- (suc n)) = - n

-- given i, return i - 1.
ipred : Int → Int
ipred (+ zero)= -(suc zero)
ipred (+(suc n)) = + n
ipred (- n) = - (suc n)

-- given i, return -i.
ineg : Int → Int
ineg (+ n)= - n
ineg (- n) = + n

-- given i & j, return i + j.
iplus : Int → Int → Int
iplus (+ m) (+ n)= + (plus m n)
iplus (+ m) (- n) = -(plus n m)
iplus (- m) (+ n) = -(plus m n)
iplus (- m) (- n) = -(plus m n)

-- given i & j, return i - j.
iminus : Int → Int → Int
iminus a b = iplus a (ineg b)

-- given i & j, return i * j.
itimes : Int → Int → Int
itimes (+ m) (+ n)= +(times m n)
itimes (+ m) (- n) = -(times m n)
itimes (- m) (+ n) = -(times m n)
itimes (- m) (- n) = +(times m n)
