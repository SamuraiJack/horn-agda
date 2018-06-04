module Exprm_FunctionImage where

open import Data.Bool
open import Data.Nat
open import Data.Vec
open import Data.List
open import Data.Empty

open import Relation.Nullary
open import Relation.Binary.PropositionalEquality

case_of_ : ∀ {a b} {A : Set a} {B : Set b} → A → (A → B) → B
case x of f = f x

isZero : ℕ -> Bool
isZero zero = true
isZero (suc n) = false

data Either (a : Set) (b : Set) : Set where
    Left    : a -> Either a b
    Right   : b -> Either a b

module IsRight11 where
    IsRight : {a b : Set} -> Either a b -> Set
    IsRight either@(Left l) = ⊥
    IsRight {a} {b} either@(Right r) = b

    z : Either Bool ℕ
    z = Right 1

    f : IsRight z
    f = 1


module FunctionImage where
    data FunctionImage1 : {A B : Set} -> (f : A -> B) -> A -> B -> Set where
        MkFunctionImage1   : {A B : Set} -> {f : A -> B} -> (a : A) -> FunctionImage1 f a (f a)

    extractArgument : {A B : Set} -> {f : A -> B} -> {a : A} -> {b : B} -> (prf : FunctionImage1 f a b) -> A
    extractArgument {A} {B} {f} {a} prf = a

    data FunctionImage2 : {A B C : Set} -> (f : A -> B -> C) -> A -> B -> C -> Set where
        MkFunctionImage2   : {A B C : Set} -> (f : A -> B -> C) -> (a : A) -> (b : B) -> FunctionImage2 f a b (f a b)

    example1 : FunctionImage1 Data.Vec.sum (1 ∷ 2 ∷ []) 3
    example1 = MkFunctionImage1 (1 ∷ 2 ∷ [])

    example2 : FunctionImage1 Data.Vec.reverse (1 ∷ 2 ∷ []) (2 ∷ 1 ∷ [])
    example2 = MkFunctionImage1 (1 ∷ 2 ∷ [])

    some : Vec ℕ 2
    some = extractArgument example1


module ListHasExactlyOneElement where
    open FunctionImage

    data ListHasExactlyOneElement : {A : Set} -> List A -> Set where
        ItDoes  : {A : Set} -> {list : List A} -> FunctionImage1 (Data.List.length) list 1 -> ListHasExactlyOneElement {A} list

    listHasExactlyOneElement : {A : Set} -> (list : List A) -> Dec (ListHasExactlyOneElement list)
    listHasExactlyOneElement list with (length list) | inspect length list
    listHasExactlyOneElement {A} list | (suc zero) | [ eq ] rewrite eq = yes (ItDoes {A} {list} ({!zz !}))
    listHasExactlyOneElement list | (_) | [ eq ] = {!pp1 !}

    getElementFromProof : {A : Set} -> {xs : List A} -> (prfList : ListHasExactlyOneElement {A} xs) -> A
    getElementFromProof {A} {xs} prfList with (length xs) | inspect length xs
    getElementFromProof {A} {xs} prfList | (suc zero) | [ eq ] = --{!qq11 !}
        case (prfList) of \ {
            (ItDoes prfImage) ->
                let
                    list = extractArgument prfImage
                in
                    case list of \ {
                        nil -> {!aa !};
                        (x ∷ tail) -> {!bb !}
                    }
        }
    getElementFromProof {A} {xs} prf | (_) | [ eq ] = {!qq !}



    -- getElementFromProof (ItDoes {A = ty} {xs} imagePrf) with (length xs)
    -- getElementFromProof (ItDoes {A = ty} {xs} imagePrf) | (1) = --{!z !}
    --     case imagePrf of \ {
    --         (MkFunctionImage1 a) -> {!z!}
    --     }
    -- getElementFromProof (ItDoes {A = ty} {xs} imagePrf) | (_) = {!z !}


-- module FunctionImage2 where
--     data Image_of_ {A B : Set} (f : A -> B) : B -> Set where
--         im : (x : A) -> Image f of f x
--
--     inv : {A B : Set} -> (f : A -> B) -> (y : B) -> Image f of y -> A
--     inv f .(f x) (im x) = x
--
-- module ListHasExactlyOneElement2 where
--     open FunctionImage2
--
--     data ListHasExactlyOneElement2 : {A : Set} -> List A -> Set where
--         ItDoes  : {A : Set} -> {list : List A} -> Image (Data.List.length) of 1 -> ListHasExactlyOneElement2 {A} list

    -- getElementFromProof : {A : Set} -> {xs : List A} -> (prf : ListHasExactlyOneElement {A} xs) -> A
    -- getElementFromProof (ItDoes {A = ty} imagePrf) = {!z !}
        -- case imagePrf of \ {
        --     (MkFunctionImage1 a) -> {!z!}
        -- }
