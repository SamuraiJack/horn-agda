module SQL where

open import Data.Bool
open import Data.Unit
open import Data.Nat using (ℕ; zero; suc)

open import Relation.Nullary using (Dec; yes; no)

data Either {a}(A B : Set a) : Set a where
    Left : (a : A) -> Either A B
    Right : (b : B) -> Either A B

Nat : Set
Nat = ℕ


data SqlType : Set where
    BOOLEAN     : SqlType
    INTEGER     : SqlType

case_of_ : ∀ {a b} {A : Set a} {B : Set b} → A → (A → B) → B
case x of f = f x

data DepPair (A : Set) (B : A -> Set1) : Set1 where
    _**_ : (a : A) -> (p : B a) -> DepPair A B

S : Nat -> Nat
S x = case x of \ {
        zero -> zero;
        (suc k) -> k
    }

module ColumnExression where

    {-# NO_POSITIVITY_CHECK #-}
    mutual
        {-# NO_POSITIVITY_CHECK #-}
        data ColumnExpression : SqlType -> Set1 where
            BooleanLiteral  : Bool -> ColumnExpression BOOLEAN
            IntegerLiteral  : Nat -> ColumnExpression INTEGER

            SubQueryExpression :
                (query : SqlQuery ⊤)
                -> { prf : QueryHasExactlyOneColumn query }
                -> ColumnExpression (getSqlTypeFromQueryWithOneColumn query {prf = prf})

            _+_             : ColumnExpression INTEGER -> ColumnExpression INTEGER -> ColumnExpression INTEGER
            _-_             : ColumnExpression INTEGER -> ColumnExpression INTEGER -> ColumnExpression INTEGER


        AnyColumnExpression' : Set1
        AnyColumnExpression' = DepPair SqlType ColumnExpression

        {-# NO_POSITIVITY_CHECK #-}
        data SqlQuery : (result : Set) -> Set1 where
            SelectColumn : AnyColumnExpression' -> SqlQuery ⊤

            Where : ColumnExpression BOOLEAN -> SqlQuery ⊤

            _>>=_ : {A B : Set} -> SqlQuery A -> ((a : A) -> SqlQuery B) -> SqlQuery B


        {-# NO_POSITIVITY_CHECK #-}
        data QueryHasNoColumns : (query : SqlQuery ⊤) -> Set1 where
            OkToStartWithWhere : {boolExpression : _ } -> QueryHasNoColumns (Where boolExpression)

            OkToAppendWhereNoCols :
                {boolExpression : _ }
                -> {query : SqlQuery ⊤}
                -> QueryHasNoColumns query
                -> QueryHasNoColumns (query >>= \_ -> Where boolExpression)

        {-# NO_POSITIVITY_CHECK #-}
        data QueryHasExactlyOneColumn : (query : SqlQuery ⊤) -> Set1 where
            Start : {exp : AnyColumnExpression'}
                -> QueryHasExactlyOneColumn (SelectColumn exp)

            -- OkToStartWithWhere : {boolExpression : _ } -> QueryHasNoColumns (Where boolExpression)
            --
            -- OkToAppendWhereNoCols :
            --     {boolExpression : _ }
            --     -> {query : SqlQuery ⊤}
            --     -> QueryHasNoColumns query
            --     -> QueryHasNoColumns (query >>= \_ -> Where boolExpression)

            OkToAppendWhere :
                {boolExpression : _ }
                -> {query : SqlQuery ⊤}
                -> QueryHasExactlyOneColumn query
                -> QueryHasExactlyOneColumn (query >>= \_ -> Where boolExpression)

            OkToAppendSelectToQueryWOColumns :
                {sqlType : SqlType}
                -> {columnExpression : ColumnExpression sqlType}
                -> {query : SqlQuery ⊤}
                -> QueryHasNoColumns query
                -> QueryHasExactlyOneColumn (query >>= \_ -> SelectColumn (sqlType ** columnExpression))

        getSqlTypeFromQueryWithOneColumn : (query : SqlQuery ⊤) -> { prf : QueryHasExactlyOneColumn query } -> SqlType

        getSqlTypeFromQueryWithOneColumn query {prf} = case prf of \ {
                (Start {exp@(sqlType ** columnExpression)}) -> sqlType;
                (OkToAppendWhere {boolExpression} {query} prf') -> getSqlTypeFromQueryWithOneColumn query {prf = prf'};
                (OkToAppendSelectToQueryWOColumns {sqlType} prfNoColumns) -> sqlType
            }

open ColumnExression

-- (Where exp) -> Right (OkToStartWithWhere {boolExpression = exp})
-- _>>=_ : {A B : Set} -> SqlQuery A -> ((a : A) -> SqlQuery B) -> SqlQuery B

-- queryHasExactlyOneColumn : (query : SqlQuery ⊤) -> Dec (QueryHasExactlyOneColumn query)
-- queryHasExactlyOneColumn = \ {
--         (SelectColumn exp) -> yes (Start {exp = exp})
--     }


query : SqlQuery ⊤
query = SelectColumn (_ ** IntegerLiteral 11) >>= (\_ -> Where (BooleanLiteral true))


onlyOne : QueryHasExactlyOneColumn query
onlyOne = OkToAppendWhere Start

queryType : SqlType
queryType = getSqlTypeFromQueryWithOneColumn query {prf = onlyOne}
--
-- subQuery : SqlQuery ⊤
-- subQuery = SelectColumn (_ ** SubQueryExpression (SelectColumn (_ ** IntegerLiteral 11)))
--
-- onlyOne' : QueryHasExactlyOneColumn SQL.subQuery
-- onlyOne' = Start
