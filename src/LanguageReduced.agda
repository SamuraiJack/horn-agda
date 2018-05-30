module LanguageReduced where

open import Data.List
open import Data.Unit
open import Data.Bool
open import Data.Integer
open import Data.String
open import Data.Product


case_of_ : ∀ {a b} {A : Set a} {B : Set b} → A → (A → B) → B
case x of f = f x


data SqlType : Set where
    BOOLEAN     : SqlType
    INTEGER     : SqlType


data ListHasExactlyOneElement {A : Set1} : (list : List A) -> Set1 where
    Because     : {x : A} -> ListHasExactlyOneElement {A} (x ∷ [])

getElementFromProof : {A : Set1} -> {xs : List A} -> (prf : ListHasExactlyOneElement {A} xs) -> A
getElementFromProof (Because {x}) = x


data DepPair (A : Set) (B : A -> Set1) : Set1 where
    _**_ : (a : A) -> (p : B a) -> DepPair A B


mutual
    data ColumnExpression : SqlType -> Set1 where
        BooleanLiteral  : Bool -> ColumnExpression BOOLEAN
        IntegerLiteral  : ℤ -> ColumnExpression INTEGER

        Column          : {columnType : SqlType} -> (columnName : String) -> ColumnExpression columnType

        SubQueryExpression :
            (query : SqlQueryParts ⊤)
            -> { prf : QueryHasExactlyOneColumn (collapseToAst query) }
            -> ColumnExpression (getSqlTypeFromQueryWithOneColumn (collapseToAst query) {f = prf})

        _Plus_             : ColumnExpression INTEGER -> ColumnExpression INTEGER -> ColumnExpression INTEGER

    AnyColumnExpression : Set1
    AnyColumnExpression = DepPair SqlType ColumnExpression


    record QueryAbstractSyntaxTree : Set1 where
        inductive
        constructor
            MkQueryAbstractSyntaxTree
        field
            fields      : List AnyColumnExpression


    data SqlQueryParts : (result : Set) -> Set1 where
        Select          : List AnyColumnExpression -> SqlQueryParts ⊤
        Pure            : {A : Set} -> (a : A) -> SqlQueryParts A
        _>>=_           : {a b : Set} -> SqlQueryParts a -> (a -> SqlQueryParts b) -> SqlQueryParts b


    collapseToAst : {a : Set} -> SqlQueryParts a -> QueryAbstractSyntaxTree
    collapseToAst {a} x =
        proj₂ (collapseToAstHelper {a} x (MkQueryAbstractSyntaxTree []))
        where
            collapseToAstHelper : {a : Set} -> SqlQueryParts a -> QueryAbstractSyntaxTree -> (a × QueryAbstractSyntaxTree)

            collapseToAstHelper (Select expressions) oldState =
                (tt , record oldState { fields = (QueryAbstractSyntaxTree.fields oldState Data.List.++ expressions) })

            collapseToAstHelper (Pure x) oldState = (x , oldState)

            collapseToAstHelper {a} (x >>= f) oldState =
                let
                    (res , newState) = collapseToAstHelper x oldState
                in
                    collapseToAstHelper (f res) newState



    data QueryHasExactlyOneColumn : (ast : QueryAbstractSyntaxTree) -> Set1 where
        Because     : { ast : QueryAbstractSyntaxTree}
            -> { prf : ListHasExactlyOneElement (QueryAbstractSyntaxTree.fields ast) }
            -> QueryHasExactlyOneColumn ast


    getSqlTypeFromQueryWithOneColumn : (query : QueryAbstractSyntaxTree) -> { f : QueryHasExactlyOneColumn query } -> SqlType

    getSqlTypeFromQueryWithOneColumn query {f} =
        case f of \ {
            (Because {ast} {prf}) -> case (getElementFromProof prf) of \ {
                (sqlType ** expression) -> sqlType
            }
        }

-- EOF mutual


subQuery : SqlQueryParts ⊤
subQuery = Select ((INTEGER ** Column "id") ∷ [])

subQueryAst : QueryAbstractSyntaxTree
subQueryAst = collapseToAst subQuery

one_column : QueryHasExactlyOneColumn (collapseToAst subQuery)
one_column = Because {prf = Because}

subQuery1 : ColumnExpression INTEGER
subQuery1 = SubQueryExpression subQuery {prf = Because {prf = Because}}
