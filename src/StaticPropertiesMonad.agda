module StaticPropertiesMonad where

open import Data.List
open import Data.Vec
open import Data.Bool
open import Data.Unit
open import Data.Nat using (ℕ; zero; suc)
open import Relation.Nullary using (Dec; yes; no)
open import Relation.Binary using (REL)

open import Level

data Either {a}(A B : Set a) : Set a where
    Left : (a : A) -> Either A B
    Right : (b : B) -> Either A B

Nat : Set
Nat = ℕ

-- emptyList : (a : Level) -> (A : Set a) -> List {a} A
-- emptyList a A = []
--
--
-- data HList {a} : List {Level.suc a} (Set a) → Set (Level.suc a) where
--     [] : HList {a} (emptyList (Level.suc a) (Set a))
--     _∷_ : {HeadT : Set a} -> {TailT : List (Set a)} -> (x : HeadT) -> (xs : HList TailT) → HList (HeadT ∷ TailT)


data IncreasingList : {A : Set} -> Set where
    []


-- test₂ : HList {a = Level.zero} ([])
-- test₂ = []
--


-- emptyHList : (a : Level) -> HList {a} []
-- emptyHList a = []h
--
-- data HInitLast {a} {A : List (Set a)} : HList A → Set (Level.suc (Level.suc a)) where
--     []r    : HInitLast (emptyHList a)
-- -- --     _∷r_    : {BodyT : InitLast (List (Set a))} -> {TailT : Set a} -> (body : HListLast BodyT) -> (tail : TailT) → HListLast (BodyT _∷ʳ' TailT)


-- initLastH : ∀ {a} {A : List (Set a)} → (xs : HList A) → HListLast xs
-- initLastH []               = []
-- initLastH (x ∷ xs)         with initLastH xs
-- initLastH (x ∷ .[])        | []       = [] ∷ʳ' x
-- initLastH (x ∷ .(ys ∷ʳ y)) | ys ∷ʳ' y = (x ∷ ys) ∷ʳ' y



mutual
    data MyLanguageASpec : Set1 where
        ConstantA       : MyLanguageASpec
        RecursionToB    : MyLanguageASpec

    {-# NO_POSITIVITY_CHECK #-}
    data MyLanguageA : (res : Set) -> Set1 where
        ConstantA       : MyLanguageA ⊤

        RecursionToB    : {B : Set} -> MyLanguageB B -> MyLanguageA ⊤

        Pure            : {A : Set} -> A -> MyLanguageA A

        -- _|+|_           : Functor -> Functor -> Functor
        -- _|x|_           : Functor -> Functor -> Functor

        bef_of_after_of_total_ : (A : Set) -> MyLanguageA A -> (B : Set) -> MyLanguageA B -> (C : Set) -> MyLanguageA C

        _>>=A_          : {A : Set} -> MyLanguageA A -> {B : Set} -> MyLanguageA B -> {C : Set} -> MyLanguageA C

    infixr 20 _>>=A_

    {-# NO_POSITIVITY_CHECK #-}
    data MyLanguageB : (res : Set) -> Set1  where
        ConstantB       : MyLanguageB ⊤

        RecursionToA    : {A : Set} -> MyLanguageA A -> MyLanguageB ⊤

        Pure            : {A : Set} -> A -> MyLanguageB A

        _>>=B_          : {A B : Set} -> MyLanguageB A -> ((a : A) -> MyLanguageB B) -> MyLanguageB B

    infixr 20 _>>=B_

-- valid0 : MyLanguageA ⊤
-- valid0 = ConstantA {_} >>=A {_} ConstantA {⊤}
--
-- valid01 : MyLanguageA ⊤
-- valid01 = ConstantA >>=A valid0

-- constAcanFollowConstA : Rel (MyLanguageA ⊤) (MyLanguageA ⊤) (zero)
-- constAcanFollowConstA A B =

valid1 : MyLanguageA ⊤
valid1 = bef ⊤ of ConstantA after ⊤ of ConstantA total ⊤ --ConstantA >>=A ConstantA  -->>=A ConstantA >=A (RecursionToB (ConstantB >=B ConstantB >=B ConstantB))


valid2 : MyLanguageA ⊤
valid2 = bef ⊤ of valid1 after ⊤ of ConstantA total ⊤

valid3 : MyLanguageA ⊤
valid3 = bef ⊤ of valid2 after ⊤ of (RecursionToB ConstantB) total ⊤


-- catamorph : {A : Set} -> MyLanguageA A -> A
-- catamorph term@(allBefore >>=A_ nextOne) = {! !}

-- valid = ConstantA >>= ConstantA >>= ConstantA >= RecursionToB (ConstantB >= ConstantB >= ConstantB)


-- data SqlType : Set where
--     BOOLEAN     : SqlType
--     INTEGER     : SqlType
--
-- case_of_ : ∀ {a b} {A : Set a} {B : Set b} → A → (A → B) → B
-- case x of f = f x
--
-- data DepPair (A : Set) (B : A -> Set1) : Set1 where
--     _**_ : (a : A) -> (p : B a) -> DepPair A B
--
-- S : Nat -> Nat
-- S x = case x of \ {
--         zero -> zero;
--         (suc k) -> k
--     }
--
-- module ColumnExression where
--
--     {-# NO_POSITIVITY_CHECK #-}
--     mutual
--         {-# NO_POSITIVITY_CHECK #-}
--         data ColumnExpression : SqlType -> Set1 where
--             BooleanLiteral  : Bool -> ColumnExpression BOOLEAN
--             IntegerLiteral  : Nat -> ColumnExpression INTEGER
--
--             SubQueryExpression :
--                 (query : SqlQuery ⊤)
--                 -> { prf : QueryHasExactlyOneColumn query }
--                 -> ColumnExpression (getSqlTypeFromQueryWithOneColumn query {prf = prf})
--
--             _+_             : ColumnExpression INTEGER -> ColumnExpression INTEGER -> ColumnExpression INTEGER
--             _-_             : ColumnExpression INTEGER -> ColumnExpression INTEGER -> ColumnExpression INTEGER
--
--
--         AnyColumnExpression' : Set1
--         AnyColumnExpression' = DepPair SqlType ColumnExpression
--
--         {-# NO_POSITIVITY_CHECK #-}
--         data SqlQuery : (result : Set) -> Set1 where
--             SelectColumn : AnyColumnExpression' -> SqlQuery ⊤
--
--             Where : ColumnExpression BOOLEAN -> SqlQuery ⊤
--
--             _>>=_ : {A B : Set} -> SqlQuery A -> ((a : A) -> SqlQuery B) -> SqlQuery B
--
--
--         {-# NO_POSITIVITY_CHECK #-}
--         data QueryHasNoColumns : (query : SqlQuery ⊤) -> Set1 where
--             OkToStartWithWhere : {boolExpression : _ } -> QueryHasNoColumns (Where boolExpression)
--
--             OkToAppendWhereNoCols :
--                 {boolExpression : _ }
--                 -> {query : SqlQuery ⊤}
--                 -> QueryHasNoColumns query
--                 -> QueryHasNoColumns (query >>= \_ -> Where boolExpression)
--
--         {-# NO_POSITIVITY_CHECK #-}
--         data QueryHasExactlyOneColumn : (query : SqlQuery ⊤) -> Set1 where
--             Start : {exp : AnyColumnExpression'}
--                 -> QueryHasExactlyOneColumn (SelectColumn exp)
--
--             -- OkToStartWithWhere : {boolExpression : _ } -> QueryHasNoColumns (Where boolExpression)
--             --
--             -- OkToAppendWhereNoCols :
--             --     {boolExpression : _ }
--             --     -> {query : SqlQuery ⊤}
--             --     -> QueryHasNoColumns query
--             --     -> QueryHasNoColumns (query >>= \_ -> Where boolExpression)
--
--             OkToAppendWhere :
--                 {boolExpression : _ }
--                 -> {query : SqlQuery ⊤}
--                 -> QueryHasExactlyOneColumn query
--                 -> QueryHasExactlyOneColumn (query >>= \_ -> Where boolExpression)
--
--             OkToAppendSelectToQueryWOColumns :
--                 {sqlType : SqlType}
--                 -> {columnExpression : ColumnExpression sqlType}
--                 -> {query : SqlQuery ⊤}
--                 -> QueryHasNoColumns query
--                 -> QueryHasExactlyOneColumn (query >>= \_ -> SelectColumn (sqlType ** columnExpression))
--
--         getSqlTypeFromQueryWithOneColumn : (query : SqlQuery ⊤) -> { prf : QueryHasExactlyOneColumn query } -> SqlType
--
--         getSqlTypeFromQueryWithOneColumn query {prf} = case prf of \ {
--                 (Start {exp@(sqlType ** columnExpression)}) -> sqlType;
--                 (OkToAppendWhere {boolExpression} {query} prf') -> getSqlTypeFromQueryWithOneColumn query {prf = prf'};
--                 (OkToAppendSelectToQueryWOColumns {sqlType} prfNoColumns) -> sqlType
--             }
--
-- open ColumnExression
--
-- -- (Where exp) -> Right (OkToStartWithWhere {boolExpression = exp})
-- -- _>>=_ : {A B : Set} -> SqlQuery A -> ((a : A) -> SqlQuery B) -> SqlQuery B
--
-- queryHasExactlyOneColumn : (query : SqlQuery ⊤) -> Dec (QueryHasExactlyOneColumn query)
-- queryHasExactlyOneColumn = \ {
--         (SelectColumn exp) -> yes (Start {exp = exp})
--     }
--
--
-- query : SqlQuery ⊤
-- query = SelectColumn (_ ** IntegerLiteral 11) >>= (\_ -> Where (BooleanLiteral true))
--
--
-- onlyOne : QueryHasExactlyOneColumn query
-- onlyOne = OkToAppendWhere Start
--
-- queryType : SqlType
-- queryType = getSqlTypeFromQueryWithOneColumn query {prf = onlyOne}
-- --
-- -- subQuery : SqlQuery ⊤
-- -- subQuery = SelectColumn (_ ** SubQueryExpression (SelectColumn (_ ** IntegerLiteral 11)))
-- --
-- -- onlyOne' : QueryHasExactlyOneColumn SQL.subQuery
-- -- onlyOne' = Start
