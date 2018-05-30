{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Strict where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Strict

name14 = "Strict._.force\8242"
d14 v0 v1 v2 v3 = du14 v0 v1
du14 v0 v1
  = coe MAlonzo.Code.Agda.Builtin.Strict.d18 v0 v1 erased erased
name20 = "Strict._.force\8242-\8801"
d20 = erased
name22 = "Strict._.seq"
d22 v0 v1 v2 v3 v4 v5 = du22 v4 v5
du22 v0 v1 = coe seq v0 v1
name34 = "Strict._.seq-\8801"
d34 = erased