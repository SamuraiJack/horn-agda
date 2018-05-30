{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Nullary where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Data.Empty.Irrelevant

name6 = "Relation.Nullary.\172_"
d6 = erased
name14 = "Relation.Nullary.Dec"
d14 a0 a1 = ()
data T14 a0 = C22 a0 | C26
name32 = "Relation.Nullary.recompute"
d32 v0 v1 v2 v3 = du32 v0 v2
du32 v0 v1
  = case coe v1 of
      C22 v2 -> coe v2
      C26 -> coe MAlonzo.Code.Data.Empty.Irrelevant.d10 v0 erased erased
      _ -> coe MAlonzo.RTE.mazUnreachableError