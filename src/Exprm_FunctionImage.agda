module Exprm_FunctionImage where

open import Data.Vec
open import Data.List

case_of_ : ∀ {a b} {A : Set a} {B : Set b} → A → (A → B) → B
case x of f = f x

module FunctionImage where
    data FunctionImage1 : {A B : Set} -> (f : A -> B) -> A -> B -> Set where
        MkFunctionImage1   : {A B : Set} -> {f : A -> B} -> (a : A) -> FunctionImage1 f a (f a)

    data FunctionImage2 : {A B C : Set} -> (f : A -> B -> C) -> A -> B -> C -> Set where
        MkFunctionImage2   : {A B C : Set} -> (f : A -> B -> C) -> (a : A) -> (b : B) -> FunctionImage2 f a b (f a b)

    example1 : FunctionImage1 Data.Vec.sum (1 ∷ 2 ∷ []) 3
    example1 = MkFunctionImage1 (1 ∷ 2 ∷ [])

    example2 : FunctionImage1 Data.Vec.reverse (1 ∷ 2 ∷ []) (2 ∷ 1 ∷ [])
    example2 = MkFunctionImage1 (1 ∷ 2 ∷ [])

module ListHasExactlyOneElement where
    open FunctionImage

    data ListHasExactlyOneElement : {A : Set} -> List A -> Set where
        ItDoes  : {A : Set} -> {list : List A} -> FunctionImage1 (Data.List.length) list 1 -> ListHasExactlyOneElement {A} list

    getElementFromProof : {A : Set} -> {xs : List A} -> (prf : ListHasExactlyOneElement {A} xs) -> A
    getElementFromProof (ItDoes {A = ty} imagePrf) =
        case imagePrf of \ {
            (MkFunctionImage1 a) -> {!z!}
        }
