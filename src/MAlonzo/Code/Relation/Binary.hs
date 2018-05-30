{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.Relation.Binary.Consequences
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.Indexed.Core
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core

name16 = "Relation.Binary.IsPreorder"
d16 a0 a1 a2 a3 a4 a5 = ()
data T16 a0 a1 a2 = C17 a0 a1 a2
name36 = "Relation.Binary.IsPreorder.isEquivalence"
d36 v0
  = case coe v0 of
      C17 v1 v2 v3 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name38 = "Relation.Binary.IsPreorder.reflexive"
d38 v0
  = case coe v0 of
      C17 v1 v2 v3 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name40 = "Relation.Binary.IsPreorder.trans"
d40 v0
  = case coe v0 of
      C17 v1 v2 v3 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name44 = "Relation.Binary.IsPreorder.Eq.refl"
d44 v0 v1 v2 v3 v4 v5 v6 = du44 v6
du44 v0 = coe MAlonzo.Code.Relation.Binary.Core.d516 (coe d36 v0)
name46 = "Relation.Binary.IsPreorder.Eq.reflexive"
d46 v0 v1 v2 v3 v4 v5 v6 = du46 v6
du46 v0 v1 v2 v3
  = coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d36 v0) v1
name48 = "Relation.Binary.IsPreorder.Eq.sym"
d48 v0 v1 v2 v3 v4 v5 v6 = du48 v6
du48 v0 = coe MAlonzo.Code.Relation.Binary.Core.d518 (coe d36 v0)
name50 = "Relation.Binary.IsPreorder.Eq.trans"
d50 v0 v1 v2 v3 v4 v5 v6 = du50 v6
du50 v0 = coe MAlonzo.Code.Relation.Binary.Core.d520 (coe d36 v0)
name52 = "Relation.Binary.IsPreorder.refl"
d52 v0 v1 v2 v3 v4 v5 v6 v7 = du52 v6 v7
du52 v0 v1
  = coe
      d38 v0 v1 v1
      (coe MAlonzo.Code.Relation.Binary.Core.d516 (coe d36 v0) v1)
name54 = "Relation.Binary.IsPreorder.\8764-resp-\8776"
d54 v0 v1 v2 v3 v4 v5 v6 = du54 v6
du54 v0
  = coe
      MAlonzo.Code.Data.Product.C30
      (\ v1 v2 v3 v4 v5 -> coe d40 v0 v1 v2 v3 v5 (coe d38 v0 v2 v3 v4))
      (\ v1 v2 v3 v4 ->
         coe
           d40 v0 v3 v2 v1
           (coe
              MAlonzo.Code.Function.du158 (coe d38 v0 v3 v2)
              (coe
                 MAlonzo.Code.Relation.Binary.Core.d518 (coe d36 v0) v2 v3 v4)))
name70 = "Relation.Binary.Preorder"
d70 a0 a1 a2 = ()
newtype T70 a0 a1 a2 a3 = C217 a0
name86 = "Relation.Binary.Preorder.Carrier"
d86 = erased
name88 = "Relation.Binary.Preorder._\8776_"
d88 = erased
name90 = "Relation.Binary.Preorder._\8764_"
d90 = erased
name92 = "Relation.Binary.Preorder.isPreorder"
d92 v0
  = case coe v0 of
      C217 v4 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name96 = "Relation.Binary.Preorder._.isEquivalence"
d96 v0 v1 v2 v3 = du96 v3
du96 v0 = coe d36 (coe d92 v0)
name98 = "Relation.Binary.Preorder._.refl"
d98 v0 v1 v2 v3 = du98 v3
du98 v0 = coe du52 (coe d92 v0)
name100 = "Relation.Binary.Preorder._.reflexive"
d100 v0 v1 v2 v3 = du100 v3
du100 v0 = coe d38 (coe d92 v0)
name102 = "Relation.Binary.Preorder._.trans"
d102 v0 v1 v2 v3 = du102 v3
du102 v0 = coe d40 (coe d92 v0)
name104 = "Relation.Binary.Preorder._.\8764-resp-\8776"
d104 v0 v1 v2 v3 = du104 v3
du104 v0 = coe du54 (coe d92 v0)
name108 = "Relation.Binary.Preorder._.Eq.refl"
d108 v0 v1 v2 v3 = du108 v3
du108 v0
  = let v1 = coe d92 v0 in
    coe MAlonzo.Code.Relation.Binary.Core.d516 (coe d36 v1)
name110 = "Relation.Binary.Preorder._.Eq.reflexive"
d110 v0 v1 v2 v3 = du110 v3
du110 v0
  = let v1 = coe d92 v0 in
    \ v2 v3 v4 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d36 v1) v2
name112 = "Relation.Binary.Preorder._.Eq.sym"
d112 v0 v1 v2 v3 = du112 v3
du112 v0
  = let v1 = coe d92 v0 in
    coe MAlonzo.Code.Relation.Binary.Core.d518 (coe d36 v1)
name114 = "Relation.Binary.Preorder._.Eq.trans"
d114 v0 v1 v2 v3 = du114 v3
du114 v0
  = let v1 = coe d92 v0 in
    coe MAlonzo.Code.Relation.Binary.Core.d520 (coe d36 v1)
name120 = "Relation.Binary.Setoid"
d120 a0 a1 = ()
newtype T120 a0 a1 a2 = C293 a0
name132 = "Relation.Binary.Setoid.Carrier"
d132 = erased
name134 = "Relation.Binary.Setoid._\8776_"
d134 = erased
name136 = "Relation.Binary.Setoid.isEquivalence"
d136 v0
  = case coe v0 of
      C293 v3 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name140 = "Relation.Binary.Setoid._.refl"
d140 v0 v1 v2 = du140 v2
du140 v0 = coe MAlonzo.Code.Relation.Binary.Core.d516 (coe d136 v0)
name142 = "Relation.Binary.Setoid._.reflexive"
d142 v0 v1 v2 = du142 v2
du142 v0 v1 v2 v3
  = coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d136 v0) v1
name144 = "Relation.Binary.Setoid._.sym"
d144 v0 v1 v2 = du144 v2
du144 v0 = coe MAlonzo.Code.Relation.Binary.Core.d518 (coe d136 v0)
name146 = "Relation.Binary.Setoid._.trans"
d146 v0 v1 v2 = du146 v2
du146 v0 = coe MAlonzo.Code.Relation.Binary.Core.d520 (coe d136 v0)
name148 = "Relation.Binary.Setoid.isPreorder"
d148 v0 v1 v2 = du148 v2
du148 v0
  = coe
      C17 MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du50
      (\ v1 v2 v3 ->
         coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d136 v0) v1)
      (coe MAlonzo.Code.Relation.Binary.Core.d520 (coe d136 v0))
name150 = "Relation.Binary.Setoid.preorder"
d150 v0 v1 v2 = du150 v2
du150 v0 = coe C217 (coe du148 v0)
name156 = "Relation.Binary.Setoid.indexedSetoid"
d156 v0 v1 v2 v3 v4 = du156 v2
du156 v0
  = coe
      MAlonzo.Code.Relation.Binary.Indexed.Core.C635
      (coe
         MAlonzo.Code.Relation.Binary.Indexed.Core.C295
         (\ v1 -> coe MAlonzo.Code.Relation.Binary.Core.d516 (coe d136 v0))
         (\ v1 v2 ->
            coe MAlonzo.Code.Relation.Binary.Core.d518 (coe d136 v0))
         (\ v1 v2 v3 ->
            coe MAlonzo.Code.Relation.Binary.Core.d520 (coe d136 v0)))
name168 = "Relation.Binary.IsDecEquivalence"
d168 a0 a1 a2 a3 = ()
data T168 a0 a1 = C475 a0 a1
name182 = "Relation.Binary.IsDecEquivalence.isEquivalence"
d182 v0
  = case coe v0 of
      C475 v1 v2 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name184 = "Relation.Binary.IsDecEquivalence._\8799_"
d184 v0
  = case coe v0 of
      C475 v1 v2 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name188 = "Relation.Binary.IsDecEquivalence._.refl"
d188 v0 v1 v2 v3 v4 = du188 v4
du188 v0 = coe MAlonzo.Code.Relation.Binary.Core.d516 (coe d182 v0)
name190 = "Relation.Binary.IsDecEquivalence._.reflexive"
d190 v0 v1 v2 v3 v4 = du190 v4
du190 v0 v1 v2 v3
  = coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d182 v0) v1
name192 = "Relation.Binary.IsDecEquivalence._.sym"
d192 v0 v1 v2 v3 v4 = du192 v4
du192 v0 = coe MAlonzo.Code.Relation.Binary.Core.d518 (coe d182 v0)
name194 = "Relation.Binary.IsDecEquivalence._.trans"
d194 v0 v1 v2 v3 v4 = du194 v4
du194 v0 = coe MAlonzo.Code.Relation.Binary.Core.d520 (coe d182 v0)
name200 = "Relation.Binary.DecSetoid"
d200 a0 a1 = ()
newtype T200 a0 a1 a2 = C525 a0
name212 = "Relation.Binary.DecSetoid.Carrier"
d212 = erased
name214 = "Relation.Binary.DecSetoid._\8776_"
d214 = erased
name216 = "Relation.Binary.DecSetoid.isDecEquivalence"
d216 v0
  = case coe v0 of
      C525 v3 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name220 = "Relation.Binary.DecSetoid._._\8799_"
d220 v0 v1 v2 = du220 v2
du220 v0 = coe d184 (coe d216 v0)
name222 = "Relation.Binary.DecSetoid._.isEquivalence"
d222 v0 v1 v2 = du222 v2
du222 v0 = coe d182 (coe d216 v0)
name224 = "Relation.Binary.DecSetoid._.refl"
d224 v0 v1 v2 = du224 v2
du224 v0
  = let v1 = coe d216 v0 in
    coe MAlonzo.Code.Relation.Binary.Core.d516 (coe d182 v1)
name226 = "Relation.Binary.DecSetoid._.reflexive"
d226 v0 v1 v2 = du226 v2
du226 v0
  = let v1 = coe d216 v0 in
    \ v2 v3 v4 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d182 v1) v2
name228 = "Relation.Binary.DecSetoid._.sym"
d228 v0 v1 v2 = du228 v2
du228 v0
  = let v1 = coe d216 v0 in
    coe MAlonzo.Code.Relation.Binary.Core.d518 (coe d182 v1)
name230 = "Relation.Binary.DecSetoid._.trans"
d230 v0 v1 v2 = du230 v2
du230 v0
  = let v1 = coe d216 v0 in
    coe MAlonzo.Code.Relation.Binary.Core.d520 (coe d182 v1)
name232 = "Relation.Binary.DecSetoid.setoid"
d232 v0 v1 v2 = du232 v2
du232 v0 = coe C293 (coe d182 (coe d216 v0))
name236 = "Relation.Binary.DecSetoid._.preorder"
d236 v0 v1 v2 = du236 v2
du236 v0 = coe du150 (coe du232 v0)
name250 = "Relation.Binary.IsPartialOrder"
d250 a0 a1 a2 a3 a4 a5 = ()
data T250 a0 a1 = C601 a0 a1
name268 = "Relation.Binary.IsPartialOrder.isPreorder"
d268 v0
  = case coe v0 of
      C601 v1 v2 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name270 = "Relation.Binary.IsPartialOrder.antisym"
d270 v0
  = case coe v0 of
      C601 v1 v2 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name274 = "Relation.Binary.IsPartialOrder._.isEquivalence"
d274 v0 v1 v2 v3 v4 v5 v6 = du274 v6
du274 v0 = coe d36 (coe d268 v0)
name276 = "Relation.Binary.IsPartialOrder._.refl"
d276 v0 v1 v2 v3 v4 v5 v6 = du276 v6
du276 v0 = coe du52 (coe d268 v0)
name278 = "Relation.Binary.IsPartialOrder._.reflexive"
d278 v0 v1 v2 v3 v4 v5 v6 = du278 v6
du278 v0 = coe d38 (coe d268 v0)
name280 = "Relation.Binary.IsPartialOrder._.trans"
d280 v0 v1 v2 v3 v4 v5 v6 = du280 v6
du280 v0 = coe d40 (coe d268 v0)
name282 = "Relation.Binary.IsPartialOrder._.\8764-resp-\8776"
d282 v0 v1 v2 v3 v4 v5 v6 = du282 v6
du282 v0 = coe du54 (coe d268 v0)
name286 = "Relation.Binary.IsPartialOrder._.Eq.refl"
d286 v0 v1 v2 v3 v4 v5 v6 = du286 v6
du286 v0
  = let v1 = coe d268 v0 in
    coe MAlonzo.Code.Relation.Binary.Core.d516 (coe d36 v1)
name288 = "Relation.Binary.IsPartialOrder._.Eq.reflexive"
d288 v0 v1 v2 v3 v4 v5 v6 = du288 v6
du288 v0
  = let v1 = coe d268 v0 in
    \ v2 v3 v4 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d36 v1) v2
name290 = "Relation.Binary.IsPartialOrder._.Eq.sym"
d290 v0 v1 v2 v3 v4 v5 v6 = du290 v6
du290 v0
  = let v1 = coe d268 v0 in
    coe MAlonzo.Code.Relation.Binary.Core.d518 (coe d36 v1)
name292 = "Relation.Binary.IsPartialOrder._.Eq.trans"
d292 v0 v1 v2 v3 v4 v5 v6 = du292 v6
du292 v0
  = let v1 = coe d268 v0 in
    coe MAlonzo.Code.Relation.Binary.Core.d520 (coe d36 v1)
name300 = "Relation.Binary.Poset"
d300 a0 a1 a2 = ()
newtype T300 a0 a1 a2 a3 = C685 a0
name316 = "Relation.Binary.Poset.Carrier"
d316 = erased
name318 = "Relation.Binary.Poset._\8776_"
d318 = erased
name320 = "Relation.Binary.Poset._\8804_"
d320 = erased
name322 = "Relation.Binary.Poset.isPartialOrder"
d322 v0
  = case coe v0 of
      C685 v4 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name326 = "Relation.Binary.Poset._.antisym"
d326 v0 v1 v2 v3 = du326 v3
du326 v0 = coe d270 (coe d322 v0)
name328 = "Relation.Binary.Poset._.isEquivalence"
d328 v0 v1 v2 v3 = du328 v3
du328 v0 = let v1 = coe d322 v0 in coe d36 (coe d268 v1)
name330 = "Relation.Binary.Poset._.isPreorder"
d330 v0 v1 v2 v3 = du330 v3
du330 v0 = coe d268 (coe d322 v0)
name332 = "Relation.Binary.Poset._.refl"
d332 v0 v1 v2 v3 = du332 v3
du332 v0 = let v1 = coe d322 v0 in coe du52 (coe d268 v1)
name334 = "Relation.Binary.Poset._.reflexive"
d334 v0 v1 v2 v3 = du334 v3
du334 v0 = let v1 = coe d322 v0 in coe d38 (coe d268 v1)
name336 = "Relation.Binary.Poset._.trans"
d336 v0 v1 v2 v3 = du336 v3
du336 v0 = let v1 = coe d322 v0 in coe d40 (coe d268 v1)
name338 = "Relation.Binary.Poset._.\8764-resp-\8776"
d338 v0 v1 v2 v3 = du338 v3
du338 v0 = let v1 = coe d322 v0 in coe du54 (coe d268 v1)
name342 = "Relation.Binary.Poset._.Eq.refl"
d342 v0 v1 v2 v3 = du342 v3
du342 v0
  = let v1 = coe d322 v0 in
    let v2 = coe d268 v1 in
    coe MAlonzo.Code.Relation.Binary.Core.d516 (coe d36 v2)
name344 = "Relation.Binary.Poset._.Eq.reflexive"
d344 v0 v1 v2 v3 = du344 v3
du344 v0
  = let v1 = coe d322 v0 in
    let v2 = coe d268 v1 in
    \ v3 v4 v5 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d36 v2) v3
name346 = "Relation.Binary.Poset._.Eq.sym"
d346 v0 v1 v2 v3 = du346 v3
du346 v0
  = let v1 = coe d322 v0 in
    let v2 = coe d268 v1 in
    coe MAlonzo.Code.Relation.Binary.Core.d518 (coe d36 v2)
name348 = "Relation.Binary.Poset._.Eq.trans"
d348 v0 v1 v2 v3 = du348 v3
du348 v0
  = let v1 = coe d322 v0 in
    let v2 = coe d268 v1 in
    coe MAlonzo.Code.Relation.Binary.Core.d520 (coe d36 v2)
name350 = "Relation.Binary.Poset.preorder"
d350 v0 v1 v2 v3 = du350 v3
du350 v0 = coe C217 (coe d268 (coe d322 v0))
name364 = "Relation.Binary.IsDecPartialOrder"
d364 a0 a1 a2 a3 a4 a5 = ()
data T364 a0 a1 a2 = C797 a0 a1 a2
name384 = "Relation.Binary.IsDecPartialOrder.isPartialOrder"
d384 v0
  = case coe v0 of
      C797 v1 v2 v3 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name386 = "Relation.Binary.IsDecPartialOrder._\8799_"
d386 v0
  = case coe v0 of
      C797 v1 v2 v3 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name388 = "Relation.Binary.IsDecPartialOrder._\8804?_"
d388 v0
  = case coe v0 of
      C797 v1 v2 v3 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name392 = "Relation.Binary.IsDecPartialOrder.PO.antisym"
d392 v0 v1 v2 v3 v4 v5 v6 = du392 v6
du392 v0 = coe d270 (coe d384 v0)
name394 = "Relation.Binary.IsDecPartialOrder.PO.isEquivalence"
d394 v0 v1 v2 v3 v4 v5 v6 = du394 v6
du394 v0 = let v1 = coe d384 v0 in coe d36 (coe d268 v1)
name396 = "Relation.Binary.IsDecPartialOrder.PO.isPreorder"
d396 v0 v1 v2 v3 v4 v5 v6 = du396 v6
du396 v0 = coe d268 (coe d384 v0)
name398 = "Relation.Binary.IsDecPartialOrder.PO.refl"
d398 v0 v1 v2 v3 v4 v5 v6 = du398 v6
du398 v0 = let v1 = coe d384 v0 in coe du52 (coe d268 v1)
name400 = "Relation.Binary.IsDecPartialOrder.PO.reflexive"
d400 v0 v1 v2 v3 v4 v5 v6 = du400 v6
du400 v0 = let v1 = coe d384 v0 in coe d38 (coe d268 v1)
name402 = "Relation.Binary.IsDecPartialOrder.PO.trans"
d402 v0 v1 v2 v3 v4 v5 v6 = du402 v6
du402 v0 = let v1 = coe d384 v0 in coe d40 (coe d268 v1)
name404 = "Relation.Binary.IsDecPartialOrder.PO.\8764-resp-\8776"
d404 v0 v1 v2 v3 v4 v5 v6 = du404 v6
du404 v0 = let v1 = coe d384 v0 in coe du54 (coe d268 v1)
name418 = "Relation.Binary.IsDecPartialOrder.Eq.isDecEquivalence"
d418 v0 v1 v2 v3 v4 v5 v6 = du418 v6
du418 v0
  = coe
      C475 (let v1 = coe d384 v0 in coe d36 (coe d268 v1)) (coe d386 v0)
name422 = "Relation.Binary.IsDecPartialOrder.Eq._._\8799_"
d422 v0 v1 v2 v3 v4 v5 v6 = du422 v6
du422 v0 = coe d184 (coe du418 v0)
name424 = "Relation.Binary.IsDecPartialOrder.Eq._.isEquivalence"
d424 v0 v1 v2 v3 v4 v5 v6 = du424 v6
du424 v0 = coe d182 (coe du418 v0)
name426 = "Relation.Binary.IsDecPartialOrder.Eq._.refl"
d426 v0 v1 v2 v3 v4 v5 v6 = du426 v6
du426 v0
  = let v1 = coe du418 v0 in
    coe MAlonzo.Code.Relation.Binary.Core.d516 (coe d182 v1)
name428 = "Relation.Binary.IsDecPartialOrder.Eq._.reflexive"
d428 v0 v1 v2 v3 v4 v5 v6 = du428 v6
du428 v0
  = let v1 = coe du418 v0 in
    \ v2 v3 v4 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d182 v1) v2
name430 = "Relation.Binary.IsDecPartialOrder.Eq._.sym"
d430 v0 v1 v2 v3 v4 v5 v6 = du430 v6
du430 v0
  = let v1 = coe du418 v0 in
    coe MAlonzo.Code.Relation.Binary.Core.d518 (coe d182 v1)
name432 = "Relation.Binary.IsDecPartialOrder.Eq._.trans"
d432 v0 v1 v2 v3 v4 v5 v6 = du432 v6
du432 v0
  = let v1 = coe du418 v0 in
    coe MAlonzo.Code.Relation.Binary.Core.d520 (coe d182 v1)
name440 = "Relation.Binary.DecPoset"
d440 a0 a1 a2 = ()
newtype T440 a0 a1 a2 a3 = C959 a0
name456 = "Relation.Binary.DecPoset.Carrier"
d456 = erased
name458 = "Relation.Binary.DecPoset._\8776_"
d458 = erased
name460 = "Relation.Binary.DecPoset._\8804_"
d460 = erased
name462 = "Relation.Binary.DecPoset.isDecPartialOrder"
d462 v0
  = case coe v0 of
      C959 v4 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name466 = "Relation.Binary.DecPoset.DPO._\8799_"
d466 v0 v1 v2 v3 = du466 v3
du466 v0 = coe d386 (coe d462 v0)
name468 = "Relation.Binary.DecPoset.DPO._\8804?_"
d468 v0 v1 v2 v3 = du468 v3
du468 v0 = coe d388 (coe d462 v0)
name470 = "Relation.Binary.DecPoset.DPO.antisym"
d470 v0 v1 v2 v3 = du470 v3
du470 v0 = let v1 = coe d462 v0 in coe d270 (coe d384 v1)
name472 = "Relation.Binary.DecPoset.DPO.isEquivalence"
d472 v0 v1 v2 v3 = du472 v3
du472 v0
  = let v1 = coe d462 v0 in
    let v2 = coe d384 v1 in coe d36 (coe d268 v2)
name474 = "Relation.Binary.DecPoset.DPO.isPartialOrder"
d474 v0 v1 v2 v3 = du474 v3
du474 v0 = coe d384 (coe d462 v0)
name476 = "Relation.Binary.DecPoset.DPO.isPreorder"
d476 v0 v1 v2 v3 = du476 v3
du476 v0 = let v1 = coe d462 v0 in coe d268 (coe d384 v1)
name478 = "Relation.Binary.DecPoset.DPO.refl"
d478 v0 v1 v2 v3 = du478 v3
du478 v0
  = let v1 = coe d462 v0 in
    let v2 = coe d384 v1 in coe du52 (coe d268 v2)
name480 = "Relation.Binary.DecPoset.DPO.reflexive"
d480 v0 v1 v2 v3 = du480 v3
du480 v0
  = let v1 = coe d462 v0 in
    let v2 = coe d384 v1 in coe d38 (coe d268 v2)
name482 = "Relation.Binary.DecPoset.DPO.trans"
d482 v0 v1 v2 v3 = du482 v3
du482 v0
  = let v1 = coe d462 v0 in
    let v2 = coe d384 v1 in coe d40 (coe d268 v2)
name484 = "Relation.Binary.DecPoset.DPO.\8764-resp-\8776"
d484 v0 v1 v2 v3 = du484 v3
du484 v0
  = let v1 = coe d462 v0 in
    let v2 = coe d384 v1 in coe du54 (coe d268 v2)
name490 = "Relation.Binary.DecPoset.DPO.Eq.isDecEquivalence"
d490 v0 v1 v2 v3 = du490 v3
du490 v0 = coe du418 (coe d462 v0)
name502 = "Relation.Binary.DecPoset.poset"
d502 v0 v1 v2 v3 = du502 v3
du502 v0 = coe C685 (coe d384 (coe d462 v0))
name506 = "Relation.Binary.DecPoset._.preorder"
d506 v0 v1 v2 v3 = du506 v3
du506 v0 = coe du350 (coe du502 v0)
name510 = "Relation.Binary.DecPoset.Eq.decSetoid"
d510 v0 v1 v2 v3 = du510 v3
du510 v0 = coe C525 (coe du418 (coe d462 v0))
name514 = "Relation.Binary.DecPoset.Eq._._\8776_"
d514 = erased
name516 = "Relation.Binary.DecPoset.Eq._._\8799_"
d516 v0 v1 v2 v3 = du516 v3
du516 v0 = let v1 = coe du510 v0 in coe d184 (coe d216 v1)
name518 = "Relation.Binary.DecPoset.Eq._.Carrier"
d518 = erased
name520 = "Relation.Binary.DecPoset.Eq._.isDecEquivalence"
d520 v0 v1 v2 v3 = du520 v3
du520 v0 = coe d216 (coe du510 v0)
name522 = "Relation.Binary.DecPoset.Eq._.isEquivalence"
d522 v0 v1 v2 v3 = du522 v3
du522 v0 = let v1 = coe du510 v0 in coe d182 (coe d216 v1)
name524 = "Relation.Binary.DecPoset.Eq._.preorder"
d524 v0 v1 v2 v3 = du524 v3
du524 v0 = let v1 = coe du510 v0 in coe du150 (coe du232 v1)
name526 = "Relation.Binary.DecPoset.Eq._.refl"
d526 v0 v1 v2 v3 = du526 v3
du526 v0
  = let v1 = coe du510 v0 in
    let v2 = coe d216 v1 in
    coe MAlonzo.Code.Relation.Binary.Core.d516 (coe d182 v2)
name528 = "Relation.Binary.DecPoset.Eq._.reflexive"
d528 v0 v1 v2 v3 = du528 v3
du528 v0
  = let v1 = coe du510 v0 in
    let v2 = coe d216 v1 in
    \ v3 v4 v5 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d182 v2) v3
name530 = "Relation.Binary.DecPoset.Eq._.setoid"
d530 v0 v1 v2 v3 = du530 v3
du530 v0 = coe du232 (coe du510 v0)
name532 = "Relation.Binary.DecPoset.Eq._.sym"
d532 v0 v1 v2 v3 = du532 v3
du532 v0
  = let v1 = coe du510 v0 in
    let v2 = coe d216 v1 in
    coe MAlonzo.Code.Relation.Binary.Core.d518 (coe d182 v2)
name534 = "Relation.Binary.DecPoset.Eq._.trans"
d534 v0 v1 v2 v3 = du534 v3
du534 v0
  = let v1 = coe du510 v0 in
    let v2 = coe d216 v1 in
    coe MAlonzo.Code.Relation.Binary.Core.d520 (coe d182 v2)
name548 = "Relation.Binary.IsStrictPartialOrder"
d548 a0 a1 a2 a3 a4 a5 = ()
data T548 a0 a1 a2 a3 = C1115 a0 a1 a2
name570 = "Relation.Binary.IsStrictPartialOrder.isEquivalence"
d570 v0
  = case coe v0 of
      C1115 v1 v3 v4 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name572 = "Relation.Binary.IsStrictPartialOrder.irrefl"
d572 = erased
name574 = "Relation.Binary.IsStrictPartialOrder.trans"
d574 v0
  = case coe v0 of
      C1115 v1 v3 v4 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name576 = "Relation.Binary.IsStrictPartialOrder.<-resp-\8776"
d576 v0
  = case coe v0 of
      C1115 v1 v3 v4 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name580 = "Relation.Binary.IsStrictPartialOrder.Eq.refl"
d580 v0 v1 v2 v3 v4 v5 v6 = du580 v6
du580 v0 = coe MAlonzo.Code.Relation.Binary.Core.d516 (coe d570 v0)
name582 = "Relation.Binary.IsStrictPartialOrder.Eq.reflexive"
d582 v0 v1 v2 v3 v4 v5 v6 = du582 v6
du582 v0 v1 v2 v3
  = coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d570 v0) v1
name584 = "Relation.Binary.IsStrictPartialOrder.Eq.sym"
d584 v0 v1 v2 v3 v4 v5 v6 = du584 v6
du584 v0 = coe MAlonzo.Code.Relation.Binary.Core.d518 (coe d570 v0)
name586 = "Relation.Binary.IsStrictPartialOrder.Eq.trans"
d586 v0 v1 v2 v3 v4 v5 v6 = du586 v6
du586 v0 = coe MAlonzo.Code.Relation.Binary.Core.d520 (coe d570 v0)
name588 = "Relation.Binary.IsStrictPartialOrder.asymmetric"
d588 = erased
name600 = "Relation.Binary.StrictPartialOrder"
d600 a0 a1 a2 = ()
newtype T600 a0 a1 a2 a3 = C1291 a0
name616 = "Relation.Binary.StrictPartialOrder.Carrier"
d616 = erased
name618 = "Relation.Binary.StrictPartialOrder._\8776_"
d618 = erased
name620 = "Relation.Binary.StrictPartialOrder._<_"
d620 = erased
name622 = "Relation.Binary.StrictPartialOrder.isStrictPartialOrder"
d622 v0
  = case coe v0 of
      C1291 v4 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name626 = "Relation.Binary.StrictPartialOrder._.<-resp-\8776"
d626 v0 v1 v2 v3 = du626 v3
du626 v0 = coe d576 (coe d622 v0)
name628 = "Relation.Binary.StrictPartialOrder._.asymmetric"
d628 = erased
name630 = "Relation.Binary.StrictPartialOrder._.irrefl"
d630 = erased
name632 = "Relation.Binary.StrictPartialOrder._.isEquivalence"
d632 v0 v1 v2 v3 = du632 v3
du632 v0 = coe d570 (coe d622 v0)
name634 = "Relation.Binary.StrictPartialOrder._.trans"
d634 v0 v1 v2 v3 = du634 v3
du634 v0 = coe d574 (coe d622 v0)
name638 = "Relation.Binary.StrictPartialOrder._.Eq.refl"
d638 v0 v1 v2 v3 = du638 v3
du638 v0
  = let v1 = coe d622 v0 in
    coe MAlonzo.Code.Relation.Binary.Core.d516 (coe d570 v1)
name640 = "Relation.Binary.StrictPartialOrder._.Eq.reflexive"
d640 v0 v1 v2 v3 = du640 v3
du640 v0
  = let v1 = coe d622 v0 in
    \ v2 v3 v4 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d570 v1) v2
name642 = "Relation.Binary.StrictPartialOrder._.Eq.sym"
d642 v0 v1 v2 v3 = du642 v3
du642 v0
  = let v1 = coe d622 v0 in
    coe MAlonzo.Code.Relation.Binary.Core.d518 (coe d570 v1)
name644 = "Relation.Binary.StrictPartialOrder._.Eq.trans"
d644 v0 v1 v2 v3 = du644 v3
du644 v0
  = let v1 = coe d622 v0 in
    coe MAlonzo.Code.Relation.Binary.Core.d520 (coe d570 v1)
name658 = "Relation.Binary.IsDecStrictPartialOrder"
d658 a0 a1 a2 a3 a4 a5 = ()
data T658 a0 a1 a2 = C1381 a0 a1 a2
name678
  = "Relation.Binary.IsDecStrictPartialOrder.isStrictPartialOrder"
d678 v0
  = case coe v0 of
      C1381 v1 v2 v3 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name680 = "Relation.Binary.IsDecStrictPartialOrder._\8799_"
d680 v0
  = case coe v0 of
      C1381 v1 v2 v3 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name682 = "Relation.Binary.IsDecStrictPartialOrder._<?_"
d682 v0
  = case coe v0 of
      C1381 v1 v2 v3 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name686
  = "Relation.Binary.IsDecStrictPartialOrder.SPO.<-resp-\8776"
d686 v0 v1 v2 v3 v4 v5 v6 = du686 v6
du686 v0 = coe d576 (coe d678 v0)
name688 = "Relation.Binary.IsDecStrictPartialOrder.SPO.asymmetric"
d688 = erased
name690 = "Relation.Binary.IsDecStrictPartialOrder.SPO.irrefl"
d690 = erased
name692
  = "Relation.Binary.IsDecStrictPartialOrder.SPO.isEquivalence"
d692 v0 v1 v2 v3 v4 v5 v6 = du692 v6
du692 v0 = coe d570 (coe d678 v0)
name694 = "Relation.Binary.IsDecStrictPartialOrder.SPO.trans"
d694 v0 v1 v2 v3 v4 v5 v6 = du694 v6
du694 v0 = coe d574 (coe d678 v0)
name708
  = "Relation.Binary.IsDecStrictPartialOrder.Eq.isDecEquivalence"
d708 v0 v1 v2 v3 v4 v5 v6 = du708 v6
du708 v0 = coe C475 (coe d570 (coe d678 v0)) (coe d680 v0)
name712 = "Relation.Binary.IsDecStrictPartialOrder.Eq._._\8799_"
d712 v0 v1 v2 v3 v4 v5 v6 = du712 v6
du712 v0 = coe d184 (coe du708 v0)
name714
  = "Relation.Binary.IsDecStrictPartialOrder.Eq._.isEquivalence"
d714 v0 v1 v2 v3 v4 v5 v6 = du714 v6
du714 v0 = coe d182 (coe du708 v0)
name716 = "Relation.Binary.IsDecStrictPartialOrder.Eq._.refl"
d716 v0 v1 v2 v3 v4 v5 v6 = du716 v6
du716 v0
  = let v1 = coe du708 v0 in
    coe MAlonzo.Code.Relation.Binary.Core.d516 (coe d182 v1)
name718 = "Relation.Binary.IsDecStrictPartialOrder.Eq._.reflexive"
d718 v0 v1 v2 v3 v4 v5 v6 = du718 v6
du718 v0
  = let v1 = coe du708 v0 in
    \ v2 v3 v4 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d182 v1) v2
name720 = "Relation.Binary.IsDecStrictPartialOrder.Eq._.sym"
d720 v0 v1 v2 v3 v4 v5 v6 = du720 v6
du720 v0
  = let v1 = coe du708 v0 in
    coe MAlonzo.Code.Relation.Binary.Core.d518 (coe d182 v1)
name722 = "Relation.Binary.IsDecStrictPartialOrder.Eq._.trans"
d722 v0 v1 v2 v3 v4 v5 v6 = du722 v6
du722 v0
  = let v1 = coe du708 v0 in
    coe MAlonzo.Code.Relation.Binary.Core.d520 (coe d182 v1)
name730 = "Relation.Binary.DecStrictPartialOrder"
d730 a0 a1 a2 = ()
newtype T730 a0 a1 a2 a3 = C1545 a0
name746 = "Relation.Binary.DecStrictPartialOrder.Carrier"
d746 = erased
name748 = "Relation.Binary.DecStrictPartialOrder._\8776_"
d748 = erased
name750 = "Relation.Binary.DecStrictPartialOrder._<_"
d750 = erased
name752
  = "Relation.Binary.DecStrictPartialOrder.isDecStrictPartialOrder"
d752 v0
  = case coe v0 of
      C1545 v4 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name756 = "Relation.Binary.DecStrictPartialOrder.DSPO._<?_"
d756 v0 v1 v2 v3 = du756 v3
du756 v0 = coe d682 (coe d752 v0)
name758 = "Relation.Binary.DecStrictPartialOrder.DSPO._\8799_"
d758 v0 v1 v2 v3 = du758 v3
du758 v0 = coe d680 (coe d752 v0)
name760 = "Relation.Binary.DecStrictPartialOrder.DSPO.<-resp-\8776"
d760 v0 v1 v2 v3 = du760 v3
du760 v0 = let v1 = coe d752 v0 in coe d576 (coe d678 v1)
name762 = "Relation.Binary.DecStrictPartialOrder.DSPO.asymmetric"
d762 = erased
name764 = "Relation.Binary.DecStrictPartialOrder.DSPO.irrefl"
d764 = erased
name766
  = "Relation.Binary.DecStrictPartialOrder.DSPO.isEquivalence"
d766 v0 v1 v2 v3 = du766 v3
du766 v0 = let v1 = coe d752 v0 in coe d570 (coe d678 v1)
name768
  = "Relation.Binary.DecStrictPartialOrder.DSPO.isStrictPartialOrder"
d768 v0 v1 v2 v3 = du768 v3
du768 v0 = coe d678 (coe d752 v0)
name770 = "Relation.Binary.DecStrictPartialOrder.DSPO.trans"
d770 v0 v1 v2 v3 = du770 v3
du770 v0 = let v1 = coe d752 v0 in coe d574 (coe d678 v1)
name776
  = "Relation.Binary.DecStrictPartialOrder.DSPO.Eq.isDecEquivalence"
d776 v0 v1 v2 v3 = du776 v3
du776 v0 = coe du708 (coe d752 v0)
name788
  = "Relation.Binary.DecStrictPartialOrder.strictPartialOrder"
d788 v0 v1 v2 v3 = du788 v3
du788 v0 = coe C1291 (coe d678 (coe d752 v0))
name792 = "Relation.Binary.DecStrictPartialOrder.Eq.decSetoid"
d792 v0 v1 v2 v3 = du792 v3
du792 v0 = coe C525 (coe du708 (coe d752 v0))
name796 = "Relation.Binary.DecStrictPartialOrder.Eq._._\8776_"
d796 = erased
name798 = "Relation.Binary.DecStrictPartialOrder.Eq._._\8799_"
d798 v0 v1 v2 v3 = du798 v3
du798 v0 = let v1 = coe du792 v0 in coe d184 (coe d216 v1)
name800 = "Relation.Binary.DecStrictPartialOrder.Eq._.Carrier"
d800 = erased
name802
  = "Relation.Binary.DecStrictPartialOrder.Eq._.isDecEquivalence"
d802 v0 v1 v2 v3 = du802 v3
du802 v0 = coe d216 (coe du792 v0)
name804
  = "Relation.Binary.DecStrictPartialOrder.Eq._.isEquivalence"
d804 v0 v1 v2 v3 = du804 v3
du804 v0 = let v1 = coe du792 v0 in coe d182 (coe d216 v1)
name806 = "Relation.Binary.DecStrictPartialOrder.Eq._.preorder"
d806 v0 v1 v2 v3 = du806 v3
du806 v0 = let v1 = coe du792 v0 in coe du150 (coe du232 v1)
name808 = "Relation.Binary.DecStrictPartialOrder.Eq._.refl"
d808 v0 v1 v2 v3 = du808 v3
du808 v0
  = let v1 = coe du792 v0 in
    let v2 = coe d216 v1 in
    coe MAlonzo.Code.Relation.Binary.Core.d516 (coe d182 v2)
name810 = "Relation.Binary.DecStrictPartialOrder.Eq._.reflexive"
d810 v0 v1 v2 v3 = du810 v3
du810 v0
  = let v1 = coe du792 v0 in
    let v2 = coe d216 v1 in
    \ v3 v4 v5 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d182 v2) v3
name812 = "Relation.Binary.DecStrictPartialOrder.Eq._.setoid"
d812 v0 v1 v2 v3 = du812 v3
du812 v0 = coe du232 (coe du792 v0)
name814 = "Relation.Binary.DecStrictPartialOrder.Eq._.sym"
d814 v0 v1 v2 v3 = du814 v3
du814 v0
  = let v1 = coe du792 v0 in
    let v2 = coe d216 v1 in
    coe MAlonzo.Code.Relation.Binary.Core.d518 (coe d182 v2)
name816 = "Relation.Binary.DecStrictPartialOrder.Eq._.trans"
d816 v0 v1 v2 v3 = du816 v3
du816 v0
  = let v1 = coe du792 v0 in
    let v2 = coe d216 v1 in
    coe MAlonzo.Code.Relation.Binary.Core.d520 (coe d182 v2)
name830 = "Relation.Binary.IsTotalOrder"
d830 a0 a1 a2 a3 a4 a5 = ()
data T830 a0 a1 = C1691 a0 a1
name848 = "Relation.Binary.IsTotalOrder.isPartialOrder"
d848 v0
  = case coe v0 of
      C1691 v1 v2 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name850 = "Relation.Binary.IsTotalOrder.total"
d850 v0
  = case coe v0 of
      C1691 v1 v2 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name854 = "Relation.Binary.IsTotalOrder._.antisym"
d854 v0 v1 v2 v3 v4 v5 v6 = du854 v6
du854 v0 = coe d270 (coe d848 v0)
name856 = "Relation.Binary.IsTotalOrder._.isEquivalence"
d856 v0 v1 v2 v3 v4 v5 v6 = du856 v6
du856 v0 = let v1 = coe d848 v0 in coe d36 (coe d268 v1)
name858 = "Relation.Binary.IsTotalOrder._.isPreorder"
d858 v0 v1 v2 v3 v4 v5 v6 = du858 v6
du858 v0 = coe d268 (coe d848 v0)
name860 = "Relation.Binary.IsTotalOrder._.refl"
d860 v0 v1 v2 v3 v4 v5 v6 = du860 v6
du860 v0 = let v1 = coe d848 v0 in coe du52 (coe d268 v1)
name862 = "Relation.Binary.IsTotalOrder._.reflexive"
d862 v0 v1 v2 v3 v4 v5 v6 = du862 v6
du862 v0 = let v1 = coe d848 v0 in coe d38 (coe d268 v1)
name864 = "Relation.Binary.IsTotalOrder._.trans"
d864 v0 v1 v2 v3 v4 v5 v6 = du864 v6
du864 v0 = let v1 = coe d848 v0 in coe d40 (coe d268 v1)
name866 = "Relation.Binary.IsTotalOrder._.\8764-resp-\8776"
d866 v0 v1 v2 v3 v4 v5 v6 = du866 v6
du866 v0 = let v1 = coe d848 v0 in coe du54 (coe d268 v1)
name870 = "Relation.Binary.IsTotalOrder._.Eq.refl"
d870 v0 v1 v2 v3 v4 v5 v6 = du870 v6
du870 v0
  = let v1 = coe d848 v0 in
    let v2 = coe d268 v1 in
    coe MAlonzo.Code.Relation.Binary.Core.d516 (coe d36 v2)
name872 = "Relation.Binary.IsTotalOrder._.Eq.reflexive"
d872 v0 v1 v2 v3 v4 v5 v6 = du872 v6
du872 v0
  = let v1 = coe d848 v0 in
    let v2 = coe d268 v1 in
    \ v3 v4 v5 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d36 v2) v3
name874 = "Relation.Binary.IsTotalOrder._.Eq.sym"
d874 v0 v1 v2 v3 v4 v5 v6 = du874 v6
du874 v0
  = let v1 = coe d848 v0 in
    let v2 = coe d268 v1 in
    coe MAlonzo.Code.Relation.Binary.Core.d518 (coe d36 v2)
name876 = "Relation.Binary.IsTotalOrder._.Eq.trans"
d876 v0 v1 v2 v3 v4 v5 v6 = du876 v6
du876 v0
  = let v1 = coe d848 v0 in
    let v2 = coe d268 v1 in
    coe MAlonzo.Code.Relation.Binary.Core.d520 (coe d36 v2)
name884 = "Relation.Binary.TotalOrder"
d884 a0 a1 a2 = ()
newtype T884 a0 a1 a2 a3 = C1775 a0
name900 = "Relation.Binary.TotalOrder.Carrier"
d900 = erased
name902 = "Relation.Binary.TotalOrder._\8776_"
d902 = erased
name904 = "Relation.Binary.TotalOrder._\8804_"
d904 = erased
name906 = "Relation.Binary.TotalOrder.isTotalOrder"
d906 v0
  = case coe v0 of
      C1775 v4 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name910 = "Relation.Binary.TotalOrder._.antisym"
d910 v0 v1 v2 v3 = du910 v3
du910 v0 = let v1 = coe d906 v0 in coe d270 (coe d848 v1)
name912 = "Relation.Binary.TotalOrder._.isEquivalence"
d912 v0 v1 v2 v3 = du912 v3
du912 v0
  = let v1 = coe d906 v0 in
    let v2 = coe d848 v1 in coe d36 (coe d268 v2)
name914 = "Relation.Binary.TotalOrder._.isPartialOrder"
d914 v0 v1 v2 v3 = du914 v3
du914 v0 = coe d848 (coe d906 v0)
name916 = "Relation.Binary.TotalOrder._.isPreorder"
d916 v0 v1 v2 v3 = du916 v3
du916 v0 = let v1 = coe d906 v0 in coe d268 (coe d848 v1)
name918 = "Relation.Binary.TotalOrder._.refl"
d918 v0 v1 v2 v3 = du918 v3
du918 v0
  = let v1 = coe d906 v0 in
    let v2 = coe d848 v1 in coe du52 (coe d268 v2)
name920 = "Relation.Binary.TotalOrder._.reflexive"
d920 v0 v1 v2 v3 = du920 v3
du920 v0
  = let v1 = coe d906 v0 in
    let v2 = coe d848 v1 in coe d38 (coe d268 v2)
name922 = "Relation.Binary.TotalOrder._.total"
d922 v0 v1 v2 v3 = du922 v3
du922 v0 = coe d850 (coe d906 v0)
name924 = "Relation.Binary.TotalOrder._.trans"
d924 v0 v1 v2 v3 = du924 v3
du924 v0
  = let v1 = coe d906 v0 in
    let v2 = coe d848 v1 in coe d40 (coe d268 v2)
name926 = "Relation.Binary.TotalOrder._.\8764-resp-\8776"
d926 v0 v1 v2 v3 = du926 v3
du926 v0
  = let v1 = coe d906 v0 in
    let v2 = coe d848 v1 in coe du54 (coe d268 v2)
name930 = "Relation.Binary.TotalOrder._.Eq.refl"
d930 v0 v1 v2 v3 = du930 v3
du930 v0
  = let v1 = coe d906 v0 in
    let v2 = coe d848 v1 in
    let v3 = coe d268 v2 in
    coe MAlonzo.Code.Relation.Binary.Core.d516 (coe d36 v3)
name932 = "Relation.Binary.TotalOrder._.Eq.reflexive"
d932 v0 v1 v2 v3 = du932 v3
du932 v0
  = let v1 = coe d906 v0 in
    let v2 = coe d848 v1 in
    let v3 = coe d268 v2 in
    \ v4 v5 v6 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d36 v3) v4
name934 = "Relation.Binary.TotalOrder._.Eq.sym"
d934 v0 v1 v2 v3 = du934 v3
du934 v0
  = let v1 = coe d906 v0 in
    let v2 = coe d848 v1 in
    let v3 = coe d268 v2 in
    coe MAlonzo.Code.Relation.Binary.Core.d518 (coe d36 v3)
name936 = "Relation.Binary.TotalOrder._.Eq.trans"
d936 v0 v1 v2 v3 = du936 v3
du936 v0
  = let v1 = coe d906 v0 in
    let v2 = coe d848 v1 in
    let v3 = coe d268 v2 in
    coe MAlonzo.Code.Relation.Binary.Core.d520 (coe d36 v3)
name938 = "Relation.Binary.TotalOrder.poset"
d938 v0 v1 v2 v3 = du938 v3
du938 v0 = coe C685 (coe d848 (coe d906 v0))
name942 = "Relation.Binary.TotalOrder._.preorder"
d942 v0 v1 v2 v3 = du942 v3
du942 v0 = coe du350 (coe du938 v0)
name956 = "Relation.Binary.IsDecTotalOrder"
d956 a0 a1 a2 a3 a4 a5 = ()
data T956 a0 a1 a2 = C1887 a0 a1 a2
name976 = "Relation.Binary.IsDecTotalOrder.isTotalOrder"
d976 v0
  = case coe v0 of
      C1887 v1 v2 v3 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name978 = "Relation.Binary.IsDecTotalOrder._\8799_"
d978 v0
  = case coe v0 of
      C1887 v1 v2 v3 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name980 = "Relation.Binary.IsDecTotalOrder._\8804?_"
d980 v0
  = case coe v0 of
      C1887 v1 v2 v3 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name984 = "Relation.Binary.IsDecTotalOrder.TO.antisym"
d984 v0 v1 v2 v3 v4 v5 v6 = du984 v6
du984 v0 = let v1 = coe d976 v0 in coe d270 (coe d848 v1)
name986 = "Relation.Binary.IsDecTotalOrder.TO.isEquivalence"
d986 v0 v1 v2 v3 v4 v5 v6 = du986 v6
du986 v0
  = let v1 = coe d976 v0 in
    let v2 = coe d848 v1 in coe d36 (coe d268 v2)
name988 = "Relation.Binary.IsDecTotalOrder.TO.isPartialOrder"
d988 v0 v1 v2 v3 v4 v5 v6 = du988 v6
du988 v0 = coe d848 (coe d976 v0)
name990 = "Relation.Binary.IsDecTotalOrder.TO.isPreorder"
d990 v0 v1 v2 v3 v4 v5 v6 = du990 v6
du990 v0 = let v1 = coe d976 v0 in coe d268 (coe d848 v1)
name992 = "Relation.Binary.IsDecTotalOrder.TO.refl"
d992 v0 v1 v2 v3 v4 v5 v6 = du992 v6
du992 v0
  = let v1 = coe d976 v0 in
    let v2 = coe d848 v1 in coe du52 (coe d268 v2)
name994 = "Relation.Binary.IsDecTotalOrder.TO.reflexive"
d994 v0 v1 v2 v3 v4 v5 v6 = du994 v6
du994 v0
  = let v1 = coe d976 v0 in
    let v2 = coe d848 v1 in coe d38 (coe d268 v2)
name996 = "Relation.Binary.IsDecTotalOrder.TO.total"
d996 v0 v1 v2 v3 v4 v5 v6 = du996 v6
du996 v0 = coe d850 (coe d976 v0)
name998 = "Relation.Binary.IsDecTotalOrder.TO.trans"
d998 v0 v1 v2 v3 v4 v5 v6 = du998 v6
du998 v0
  = let v1 = coe d976 v0 in
    let v2 = coe d848 v1 in coe d40 (coe d268 v2)
name1000 = "Relation.Binary.IsDecTotalOrder.TO.\8764-resp-\8776"
d1000 v0 v1 v2 v3 v4 v5 v6 = du1000 v6
du1000 v0
  = let v1 = coe d976 v0 in
    let v2 = coe d848 v1 in coe du54 (coe d268 v2)
name1014 = "Relation.Binary.IsDecTotalOrder.Eq.isDecEquivalence"
d1014 v0 v1 v2 v3 v4 v5 v6 = du1014 v6
du1014 v0
  = coe
      C475
      (let v1 = coe d976 v0 in
       let v2 = coe d848 v1 in coe d36 (coe d268 v2))
      (coe d978 v0)
name1018 = "Relation.Binary.IsDecTotalOrder.Eq._._\8799_"
d1018 v0 v1 v2 v3 v4 v5 v6 = du1018 v6
du1018 v0 = coe d184 (coe du1014 v0)
name1020 = "Relation.Binary.IsDecTotalOrder.Eq._.isEquivalence"
d1020 v0 v1 v2 v3 v4 v5 v6 = du1020 v6
du1020 v0 = coe d182 (coe du1014 v0)
name1022 = "Relation.Binary.IsDecTotalOrder.Eq._.refl"
d1022 v0 v1 v2 v3 v4 v5 v6 = du1022 v6
du1022 v0
  = let v1 = coe du1014 v0 in
    coe MAlonzo.Code.Relation.Binary.Core.d516 (coe d182 v1)
name1024 = "Relation.Binary.IsDecTotalOrder.Eq._.reflexive"
d1024 v0 v1 v2 v3 v4 v5 v6 = du1024 v6
du1024 v0
  = let v1 = coe du1014 v0 in
    \ v2 v3 v4 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d182 v1) v2
name1026 = "Relation.Binary.IsDecTotalOrder.Eq._.sym"
d1026 v0 v1 v2 v3 v4 v5 v6 = du1026 v6
du1026 v0
  = let v1 = coe du1014 v0 in
    coe MAlonzo.Code.Relation.Binary.Core.d518 (coe d182 v1)
name1028 = "Relation.Binary.IsDecTotalOrder.Eq._.trans"
d1028 v0 v1 v2 v3 v4 v5 v6 = du1028 v6
du1028 v0
  = let v1 = coe du1014 v0 in
    coe MAlonzo.Code.Relation.Binary.Core.d520 (coe d182 v1)
name1036 = "Relation.Binary.DecTotalOrder"
d1036 a0 a1 a2 = ()
newtype T1036 a0 a1 a2 a3 = C2049 a0
name1052 = "Relation.Binary.DecTotalOrder.Carrier"
d1052 = erased
name1054 = "Relation.Binary.DecTotalOrder._\8776_"
d1054 = erased
name1056 = "Relation.Binary.DecTotalOrder._\8804_"
d1056 = erased
name1058 = "Relation.Binary.DecTotalOrder.isDecTotalOrder"
d1058 v0
  = case coe v0 of
      C2049 v4 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1062 = "Relation.Binary.DecTotalOrder.DTO._\8799_"
d1062 v0 v1 v2 v3 = du1062 v3
du1062 v0 = coe d978 (coe d1058 v0)
name1064 = "Relation.Binary.DecTotalOrder.DTO._\8804?_"
d1064 v0 v1 v2 v3 = du1064 v3
du1064 v0 = coe d980 (coe d1058 v0)
name1066 = "Relation.Binary.DecTotalOrder.DTO.antisym"
d1066 v0 v1 v2 v3 = du1066 v3
du1066 v0
  = let v1 = coe d1058 v0 in
    let v2 = coe d976 v1 in coe d270 (coe d848 v2)
name1068 = "Relation.Binary.DecTotalOrder.DTO.isEquivalence"
d1068 v0 v1 v2 v3 = du1068 v3
du1068 v0
  = let v1 = coe d1058 v0 in
    let v2 = coe d976 v1 in
    let v3 = coe d848 v2 in coe d36 (coe d268 v3)
name1070 = "Relation.Binary.DecTotalOrder.DTO.isPartialOrder"
d1070 v0 v1 v2 v3 = du1070 v3
du1070 v0 = let v1 = coe d1058 v0 in coe d848 (coe d976 v1)
name1072 = "Relation.Binary.DecTotalOrder.DTO.isPreorder"
d1072 v0 v1 v2 v3 = du1072 v3
du1072 v0
  = let v1 = coe d1058 v0 in
    let v2 = coe d976 v1 in coe d268 (coe d848 v2)
name1074 = "Relation.Binary.DecTotalOrder.DTO.isTotalOrder"
d1074 v0 v1 v2 v3 = du1074 v3
du1074 v0 = coe d976 (coe d1058 v0)
name1076 = "Relation.Binary.DecTotalOrder.DTO.refl"
d1076 v0 v1 v2 v3 = du1076 v3
du1076 v0
  = let v1 = coe d1058 v0 in
    let v2 = coe d976 v1 in
    let v3 = coe d848 v2 in coe du52 (coe d268 v3)
name1078 = "Relation.Binary.DecTotalOrder.DTO.reflexive"
d1078 v0 v1 v2 v3 = du1078 v3
du1078 v0
  = let v1 = coe d1058 v0 in
    let v2 = coe d976 v1 in
    let v3 = coe d848 v2 in coe d38 (coe d268 v3)
name1080 = "Relation.Binary.DecTotalOrder.DTO.total"
d1080 v0 v1 v2 v3 = du1080 v3
du1080 v0 = let v1 = coe d1058 v0 in coe d850 (coe d976 v1)
name1082 = "Relation.Binary.DecTotalOrder.DTO.trans"
d1082 v0 v1 v2 v3 = du1082 v3
du1082 v0
  = let v1 = coe d1058 v0 in
    let v2 = coe d976 v1 in
    let v3 = coe d848 v2 in coe d40 (coe d268 v3)
name1084 = "Relation.Binary.DecTotalOrder.DTO.\8764-resp-\8776"
d1084 v0 v1 v2 v3 = du1084 v3
du1084 v0
  = let v1 = coe d1058 v0 in
    let v2 = coe d976 v1 in
    let v3 = coe d848 v2 in coe du54 (coe d268 v3)
name1090 = "Relation.Binary.DecTotalOrder.DTO.Eq.isDecEquivalence"
d1090 v0 v1 v2 v3 = du1090 v3
du1090 v0 = coe du1014 (coe d1058 v0)
name1102 = "Relation.Binary.DecTotalOrder.totalOrder"
d1102 v0 v1 v2 v3 = du1102 v3
du1102 v0 = coe C1775 (coe d976 (coe d1058 v0))
name1106 = "Relation.Binary.DecTotalOrder._.poset"
d1106 v0 v1 v2 v3 = du1106 v3
du1106 v0 = coe du938 (coe du1102 v0)
name1108 = "Relation.Binary.DecTotalOrder._.preorder"
d1108 v0 v1 v2 v3 = du1108 v3
du1108 v0 = let v1 = coe du1102 v0 in coe du350 (coe du938 v1)
name1112 = "Relation.Binary.DecTotalOrder.Eq.decSetoid"
d1112 v0 v1 v2 v3 = du1112 v3
du1112 v0 = coe C525 (coe du1014 (coe d1058 v0))
name1116 = "Relation.Binary.DecTotalOrder.Eq._._\8776_"
d1116 = erased
name1118 = "Relation.Binary.DecTotalOrder.Eq._._\8799_"
d1118 v0 v1 v2 v3 = du1118 v3
du1118 v0 = let v1 = coe du1112 v0 in coe d184 (coe d216 v1)
name1120 = "Relation.Binary.DecTotalOrder.Eq._.Carrier"
d1120 = erased
name1122 = "Relation.Binary.DecTotalOrder.Eq._.isDecEquivalence"
d1122 v0 v1 v2 v3 = du1122 v3
du1122 v0 = coe d216 (coe du1112 v0)
name1124 = "Relation.Binary.DecTotalOrder.Eq._.isEquivalence"
d1124 v0 v1 v2 v3 = du1124 v3
du1124 v0 = let v1 = coe du1112 v0 in coe d182 (coe d216 v1)
name1126 = "Relation.Binary.DecTotalOrder.Eq._.preorder"
d1126 v0 v1 v2 v3 = du1126 v3
du1126 v0 = let v1 = coe du1112 v0 in coe du150 (coe du232 v1)
name1128 = "Relation.Binary.DecTotalOrder.Eq._.refl"
d1128 v0 v1 v2 v3 = du1128 v3
du1128 v0
  = let v1 = coe du1112 v0 in
    let v2 = coe d216 v1 in
    coe MAlonzo.Code.Relation.Binary.Core.d516 (coe d182 v2)
name1130 = "Relation.Binary.DecTotalOrder.Eq._.reflexive"
d1130 v0 v1 v2 v3 = du1130 v3
du1130 v0
  = let v1 = coe du1112 v0 in
    let v2 = coe d216 v1 in
    \ v3 v4 v5 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d182 v2) v3
name1132 = "Relation.Binary.DecTotalOrder.Eq._.setoid"
d1132 v0 v1 v2 v3 = du1132 v3
du1132 v0 = coe du232 (coe du1112 v0)
name1134 = "Relation.Binary.DecTotalOrder.Eq._.sym"
d1134 v0 v1 v2 v3 = du1134 v3
du1134 v0
  = let v1 = coe du1112 v0 in
    let v2 = coe d216 v1 in
    coe MAlonzo.Code.Relation.Binary.Core.d518 (coe d182 v2)
name1136 = "Relation.Binary.DecTotalOrder.Eq._.trans"
d1136 v0 v1 v2 v3 = du1136 v3
du1136 v0
  = let v1 = coe du1112 v0 in
    let v2 = coe d216 v1 in
    coe MAlonzo.Code.Relation.Binary.Core.d520 (coe d182 v2)
name1150 = "Relation.Binary.IsStrictTotalOrder"
d1150 a0 a1 a2 a3 a4 a5 = ()
data T1150 a0 a1 a2 = C2197 a0 a1 a2
name1170 = "Relation.Binary.IsStrictTotalOrder.isEquivalence"
d1170 v0
  = case coe v0 of
      C2197 v1 v2 v3 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1172 = "Relation.Binary.IsStrictTotalOrder.trans"
d1172 v0
  = case coe v0 of
      C2197 v1 v2 v3 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1174 = "Relation.Binary.IsStrictTotalOrder.compare"
d1174 v0
  = case coe v0 of
      C2197 v1 v2 v3 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1176 = "Relation.Binary.IsStrictTotalOrder._\8799_"
d1176 v0 v1 v2 v3 v4 v5 v6 = du1176 v6
du1176 v0
  = coe
      MAlonzo.Code.Relation.Binary.Consequences.du564 (coe d1174 v0)
name1178 = "Relation.Binary.IsStrictTotalOrder._<?_"
d1178 v0 v1 v2 v3 v4 v5 v6 = du1178 v6
du1178 v0
  = coe
      MAlonzo.Code.Relation.Binary.Consequences.du612 (coe d1174 v0)
name1180 = "Relation.Binary.IsStrictTotalOrder.isDecEquivalence"
d1180 v0 v1 v2 v3 v4 v5 v6 = du1180 v6
du1180 v0 = coe C475 (coe d1170 v0) (coe du1176 v0)
name1184 = "Relation.Binary.IsStrictTotalOrder.Eq._\8799_"
d1184 v0 v1 v2 v3 v4 v5 v6 = du1184 v6
du1184 v0 = coe d184 (coe du1180 v0)
name1186 = "Relation.Binary.IsStrictTotalOrder.Eq.isEquivalence"
d1186 v0 v1 v2 v3 v4 v5 v6 = du1186 v6
du1186 v0 = coe d182 (coe du1180 v0)
name1188 = "Relation.Binary.IsStrictTotalOrder.Eq.refl"
d1188 v0 v1 v2 v3 v4 v5 v6 = du1188 v6
du1188 v0
  = let v1 = coe du1180 v0 in
    coe MAlonzo.Code.Relation.Binary.Core.d516 (coe d182 v1)
name1190 = "Relation.Binary.IsStrictTotalOrder.Eq.reflexive"
d1190 v0 v1 v2 v3 v4 v5 v6 = du1190 v6
du1190 v0
  = let v1 = coe du1180 v0 in
    \ v2 v3 v4 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d182 v1) v2
name1192 = "Relation.Binary.IsStrictTotalOrder.Eq.sym"
d1192 v0 v1 v2 v3 v4 v5 v6 = du1192 v6
du1192 v0
  = let v1 = coe du1180 v0 in
    coe MAlonzo.Code.Relation.Binary.Core.d518 (coe d182 v1)
name1194 = "Relation.Binary.IsStrictTotalOrder.Eq.trans"
d1194 v0 v1 v2 v3 v4 v5 v6 = du1194 v6
du1194 v0
  = let v1 = coe du1180 v0 in
    coe MAlonzo.Code.Relation.Binary.Core.d520 (coe d182 v1)
name1196 = "Relation.Binary.IsStrictTotalOrder.<-resp-\8776"
d1196 v0 v1 v2 v3 v4 v5 v6 = du1196 v2 v6
du1196 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Consequences.du410 v0 (coe d1174 v1)
name1198
  = "Relation.Binary.IsStrictTotalOrder.isStrictPartialOrder"
d1198 v0 v1 v2 v3 v4 v5 v6 = du1198 v2 v6
du1198 v0 v1
  = coe C1115 (coe d1170 v1) (coe d1172 v1) (coe du1196 v0 v1)
name1202 = "Relation.Binary.IsStrictTotalOrder._.irrefl"
d1202 = erased
name1210 = "Relation.Binary.StrictTotalOrder"
d1210 a0 a1 a2 = ()
newtype T1210 a0 a1 a2 a3 = C2599 a0
name1226 = "Relation.Binary.StrictTotalOrder.Carrier"
d1226 = erased
name1228 = "Relation.Binary.StrictTotalOrder._\8776_"
d1228 = erased
name1230 = "Relation.Binary.StrictTotalOrder._<_"
d1230 = erased
name1232 = "Relation.Binary.StrictTotalOrder.isStrictTotalOrder"
d1232 v0
  = case coe v0 of
      C2599 v4 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1236 = "Relation.Binary.StrictTotalOrder._._<?_"
d1236 v0 v1 v2 v3 = du1236 v3
du1236 v0 = coe du1178 (coe d1232 v0)
name1238 = "Relation.Binary.StrictTotalOrder._._\8799_"
d1238 v0 v1 v2 v3 = du1238 v3
du1238 v0 = coe du1176 (coe d1232 v0)
name1240 = "Relation.Binary.StrictTotalOrder._.<-resp-\8776"
d1240 v0 v1 v2 v3 = du1240 v2 v3
du1240 v0 v1 = coe du1196 v0 (coe d1232 v1)
name1242 = "Relation.Binary.StrictTotalOrder._.compare"
d1242 v0 v1 v2 v3 = du1242 v3
du1242 v0 = coe d1174 (coe d1232 v0)
name1244 = "Relation.Binary.StrictTotalOrder._.irrefl"
d1244 = erased
name1246 = "Relation.Binary.StrictTotalOrder._.isDecEquivalence"
d1246 v0 v1 v2 v3 = du1246 v3
du1246 v0 = coe du1180 (coe d1232 v0)
name1248 = "Relation.Binary.StrictTotalOrder._.isEquivalence"
d1248 v0 v1 v2 v3 = du1248 v3
du1248 v0 = coe d1170 (coe d1232 v0)
name1250
  = "Relation.Binary.StrictTotalOrder._.isStrictPartialOrder"
d1250 v0 v1 v2 v3 = du1250 v2 v3
du1250 v0 v1 = coe du1198 v0 (coe d1232 v1)
name1252 = "Relation.Binary.StrictTotalOrder._.trans"
d1252 v0 v1 v2 v3 = du1252 v3
du1252 v0 = coe d1172 (coe d1232 v0)
name1254 = "Relation.Binary.StrictTotalOrder.strictPartialOrder"
d1254 v0 v1 v2 v3 = du1254 v2 v3
du1254 v0 v1 = coe C1291 (coe du1198 v0 (coe d1232 v1))
name1256 = "Relation.Binary.StrictTotalOrder.decSetoid"
d1256 v0 v1 v2 v3 = du1256 v3
du1256 v0 = coe C525 (coe du1180 (coe d1232 v0))
name1260 = "Relation.Binary.StrictTotalOrder.Eq._\8776_"
d1260 = erased
name1262 = "Relation.Binary.StrictTotalOrder.Eq._\8799_"
d1262 v0 v1 v2 v3 = du1262 v3
du1262 v0 = let v1 = coe du1256 v0 in coe d184 (coe d216 v1)
name1264 = "Relation.Binary.StrictTotalOrder.Eq.Carrier"
d1264 = erased
name1266 = "Relation.Binary.StrictTotalOrder.Eq.isDecEquivalence"
d1266 v0 v1 v2 v3 = du1266 v3
du1266 v0 = coe d216 (coe du1256 v0)
name1268 = "Relation.Binary.StrictTotalOrder.Eq.isEquivalence"
d1268 v0 v1 v2 v3 = du1268 v3
du1268 v0 = let v1 = coe du1256 v0 in coe d182 (coe d216 v1)
name1270 = "Relation.Binary.StrictTotalOrder.Eq.preorder"
d1270 v0 v1 v2 v3 = du1270 v3
du1270 v0 = let v1 = coe du1256 v0 in coe du150 (coe du232 v1)
name1272 = "Relation.Binary.StrictTotalOrder.Eq.refl"
d1272 v0 v1 v2 v3 = du1272 v3
du1272 v0
  = let v1 = coe du1256 v0 in
    let v2 = coe d216 v1 in
    coe MAlonzo.Code.Relation.Binary.Core.d516 (coe d182 v2)
name1274 = "Relation.Binary.StrictTotalOrder.Eq.reflexive"
d1274 v0 v1 v2 v3 = du1274 v3
du1274 v0
  = let v1 = coe du1256 v0 in
    let v2 = coe d216 v1 in
    \ v3 v4 v5 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d182 v2) v3
name1276 = "Relation.Binary.StrictTotalOrder.Eq.setoid"
d1276 v0 v1 v2 v3 = du1276 v3
du1276 v0 = coe du232 (coe du1256 v0)
name1278 = "Relation.Binary.StrictTotalOrder.Eq.sym"
d1278 v0 v1 v2 v3 = du1278 v3
du1278 v0
  = let v1 = coe du1256 v0 in
    let v2 = coe d216 v1 in
    coe MAlonzo.Code.Relation.Binary.Core.d518 (coe d182 v2)
name1280 = "Relation.Binary.StrictTotalOrder.Eq.trans"
d1280 v0 v1 v2 v3 = du1280 v3
du1280 v0
  = let v1 = coe du1256 v0 in
    let v2 = coe d216 v1 in
    coe MAlonzo.Code.Relation.Binary.Core.d520 (coe d182 v2)