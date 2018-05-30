{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Unit where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core
import qualified MAlonzo.Code.Relation.Nullary

name4 = "Data.Unit._\8799_"
d4 v0 v1 = du4
du4 = coe MAlonzo.Code.Relation.Nullary.C22 erased
name6 = "Data.Unit._\8804?_"
d6 v0 v1 = du6
du6 = coe MAlonzo.Code.Relation.Nullary.C22 erased
name8 = "Data.Unit.total"
d8 v0 v1 = du8
du8 = coe MAlonzo.Code.Data.Sum.C24 erased
name10 = "Data.Unit.preorder"
d10 = MAlonzo.Code.Relation.Binary.PropositionalEquality.du118
name12 = "Data.Unit.setoid"
d12 = MAlonzo.Code.Relation.Binary.PropositionalEquality.du98
name14 = "Data.Unit.decTotalOrder"
d14
  = coe
      MAlonzo.Code.Relation.Binary.C2049
      (coe
         MAlonzo.Code.Relation.Binary.C1887
         (coe
            MAlonzo.Code.Relation.Binary.C1691
            (coe
               MAlonzo.Code.Relation.Binary.C601
               (coe
                  MAlonzo.Code.Relation.Binary.C17
                  MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du50 erased
                  erased)
               erased)
            d8)
         d4 d6)
name20 = "Data.Unit._.antisym"
d20 = erased
name28 = "Data.Unit.decSetoid"
d28 = coe MAlonzo.Code.Relation.Binary.du1112 d14
name30 = "Data.Unit.poset"
d30
  = coe
      MAlonzo.Code.Relation.Binary.du938
      (coe MAlonzo.Code.Relation.Binary.du1102 d14)