{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.SQL where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool

name8 = "SQL.Either"
d8 a0 a1 a2 = ()
data T8 a0 = C18 a0 | C22 a0
name24 = "SQL.Nat"
d24 = erased
name26 = "SQL.SqlType"
d26 = ()
data T26 = C28 | C30
name40 = "SQL.case_of_"
d40 v0 v1 v2 v3 v4 v5 = du40 v4 v5
du40 v0 v1 = coe v1 v0
name50 = "SQL.DepPair"
d50 a0 a1 = ()
data T50 a0 a1 = C60 a0 a1
name62 = "SQL.S"
d62 v0
  = coe
      du40 v0
      (\ v1 ->
         case coe v1 of
           0 -> 0 :: Integer
           _ -> coe subInt v1 (1 :: Integer))
name72 = "SQL.ColumnExression.ColumnExpression"
d72 a0 = ()
data T72 a0 a1
  = C94 a0 | C96 a0 | C102 a0 a1 | C104 a0 a1 | C106 a0 a1
name74 = "SQL.ColumnExression.AnyColumnExpression'"
d74 = erased
name78 = "SQL.ColumnExression.SqlQuery"
d78 a0 = ()
data T78 a0 a1 = C108 a0 | C110 a0 | C118 a0 a1
name82 = "SQL.ColumnExression.QueryHasNoColumns"
d82 a0 = ()
data T82 a0 a1 a2 = C122 a0 | C130 a0 a1 a2
name86 = "SQL.ColumnExression.QueryHasExactlyOneColumn"
d86 a0 = ()
data T86 a0 a1 a2 a3 = C134 a0 | C142 a0 a1 a2 | C152 a0 a1 a2 a3
name92 = "SQL.ColumnExression.getSqlTypeFromQueryWithOneColumn"
d92 v0 v1 = du92 v1
du92 v0
  = coe
      du40 v0
      (\ v1 ->
         case coe v1 of
           C134 v2
             -> case coe v2 of
                  C60 v3 v4 -> coe v3
                  _ -> coe MAlonzo.RTE.mazUnreachableError
           C142 v2 v3 v4 -> coe du92 v4
           C152 v2 v3 v4 v5 -> coe v2
           _ -> MAlonzo.RTE.mazUnreachableError)
name176 = "SQL.query"
d176
  = coe
      C118 (coe C108 (coe C60 C30 (coe C96 (11 :: Integer))))
      (\ v0 -> coe C110 (coe C94 MAlonzo.Code.Agda.Builtin.Bool.C10))
name180 = "SQL.onlyOne"
d180
  = coe
      C142 (coe C94 MAlonzo.Code.Agda.Builtin.Bool.C10)
      (coe C108 (coe C60 C30 (coe C96 (11 :: Integer))))
      (coe C134 (coe C60 C30 (coe C96 (11 :: Integer))))
name182 = "SQL.queryType"
d182 = coe du92 d180