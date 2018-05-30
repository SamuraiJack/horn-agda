{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.PropositionalEquality.TrustMe where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified MAlonzo.RTE
import qualified Data.Text

name16 = "Relation.Binary.PropositionalEquality.TrustMe.trustMe"
d16 = erased
name26 = "Relation.Binary.PropositionalEquality.TrustMe.erase"
d26 = erased
name40
  = "Relation.Binary.PropositionalEquality.TrustMe.postulate[_\8614_]"
d40 v0 v1 v2 v3 v4 v5 v6 = du40 v5
du40 v0 = coe v0