{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.PropositionalEquality where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.Indexed.Core
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core

name26 = "Relation.Binary.PropositionalEquality.subst\8322"
d26 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 = du26 v12
du26 v0 = coe v0
name46 = "Relation.Binary.PropositionalEquality.cong"
d46 = erased
name66 = "Relation.Binary.PropositionalEquality.cong-app"
d66 = erased
name92 = "Relation.Binary.PropositionalEquality.cong\8322"
d92 = erased
name98 = "Relation.Binary.PropositionalEquality.setoid"
d98 v0 v1 = du98
du98
  = coe
      MAlonzo.Code.Relation.Binary.C293
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du50
name106 = "Relation.Binary.PropositionalEquality.decSetoid"
d106 v0 v1 v2 = du106 v2
du106 v0
  = coe
      MAlonzo.Code.Relation.Binary.C525
      (coe
         MAlonzo.Code.Relation.Binary.C475
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du50 v0)
name114 = "Relation.Binary.PropositionalEquality.isPreorder"
d114 v0 v1 = du114
du114
  = coe
      MAlonzo.Code.Relation.Binary.C17
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du50
      (\ v0 v1 v2 -> v2) erased
name118 = "Relation.Binary.PropositionalEquality.preorder"
d118 v0 v1 = du118
du118 = coe MAlonzo.Code.Relation.Binary.C217 du114
name130 = "Relation.Binary.PropositionalEquality._\8594-setoid_"
d130 v0 v1 v2 v3 = du130
du130
  = coe
      MAlonzo.Code.Function.Equality.du206
      (coe MAlonzo.Code.Relation.Binary.du156 du98)
name148 = "Relation.Binary.PropositionalEquality._\8791_"
d148 = erased
name166 = "Relation.Binary.PropositionalEquality.:\8594-to-\928"
d166 v0 v1 v2 v3 v4 v5 = du166 v4 v5
du166 v0 v1
  = coe
      MAlonzo.Code.Function.Equality.C15 v1
      (\ v2 v3 v4 -> coe du184 v0 v1 v2)
name178 = "Relation.Binary.PropositionalEquality._._._\8776_"
d178 = erased
name184 = "Relation.Binary.PropositionalEquality._.cong\8242"
d184 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du184 v4 v5 v6
du184 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Indexed.Core.d134
      (coe MAlonzo.Code.Relation.Binary.Indexed.Core.d172 v0) v2
      (coe v1 v2)
name196 = "Relation.Binary.PropositionalEquality.\8594-to-\10230"
d196 v0 v1 v2 v3 v4 = du196 v4
du196 v0
  = coe
      du166
      (coe
         MAlonzo.Code.Relation.Binary.Indexed.Core.C635
         (coe
            MAlonzo.Code.Relation.Binary.Indexed.Core.C295
            (\ v1 ->
               coe
                 MAlonzo.Code.Relation.Binary.Core.d516
                 (coe MAlonzo.Code.Relation.Binary.d136 v0))
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Core.d518
                 (coe MAlonzo.Code.Relation.Binary.d136 v0))
            (\ v1 v2 v3 ->
               coe
                 MAlonzo.Code.Relation.Binary.Core.d520
                 (coe MAlonzo.Code.Relation.Binary.d136 v0))))
name214 = "Relation.Binary.PropositionalEquality.Reveal_\183_is_"
d214 a0 a1 a2 a3 a4 a5 a6 = ()
data T214 a0 = C234
name232
  = "Relation.Binary.PropositionalEquality.Reveal_\183_is_.eq"
d232 = erased
name250 = "Relation.Binary.PropositionalEquality.inspect"
d250 = erased
name266
  = "Relation.Binary.PropositionalEquality.\8801-Reasoning.begin_"
d266 = erased
name274
  = "Relation.Binary.PropositionalEquality.\8801-Reasoning._\8801\10216\10217_"
d274 = erased
name284
  = "Relation.Binary.PropositionalEquality.\8801-Reasoning._\8801\10216_\10217_"
d284 = erased
name296
  = "Relation.Binary.PropositionalEquality.\8801-Reasoning._\8773\10216_\10217_"
d296 = erased
name304
  = "Relation.Binary.PropositionalEquality.\8801-Reasoning._\8718"
d304 = erased
name310 = "Relation.Binary.PropositionalEquality.Extensionality"
d310 = erased
name336
  = "Relation.Binary.PropositionalEquality.extensionality-for-lower-levels"
d336 = erased
name364
  = "Relation.Binary.PropositionalEquality.\8704-extensionality"
d364 = erased
name386 = "Relation.Binary.PropositionalEquality.isPropositional"
d386 = erased
name400 = "Relation.Binary.PropositionalEquality.IrrelevantPred"
d400 = erased
name416 = "Relation.Binary.PropositionalEquality.IrrelevantRel"
d416 = erased
name428 = "Relation.Binary.PropositionalEquality.\8801-irrelevance"
d428 = erased
name430 = "Relation.Binary.PropositionalEquality.proof-irrelevance"
d430 = erased