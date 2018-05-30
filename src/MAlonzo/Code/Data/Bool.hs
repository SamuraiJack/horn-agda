{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Bool where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality

name4 = "Data.Bool.decSetoid"
d4
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.du106
      MAlonzo.Code.Data.Bool.Base.d42