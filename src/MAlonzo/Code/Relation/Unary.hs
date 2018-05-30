{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Unary where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Relation.Nullary

name8 = "Relation.Unary.Pred"
d8 = erased
name24 = "Relation.Unary._._\8712_"
d24 = erased
name32 = "Relation.Unary._._\8713_"
d32 = erased
name38 = "Relation.Unary._.\8709"
d38 = erased
name44 = "Relation.Unary._.Empty"
d44 = erased
name50 = "Relation.Unary._.\8709-Empty"
d50 = erased
name54 = "Relation.Unary._.\65371_\65373"
d54 = erased
name58 = "Relation.Unary._.U"
d58 = erased
name64 = "Relation.Unary._.Universal"
d64 = erased
name70 = "Relation.Unary._.U-Universal"
d70 = erased
name76 = "Relation.Unary._.\8705"
d76 = erased
name82 = "Relation.Unary._.\8705\8709-Universal"
d82 = erased
name88 = "Relation.Unary._.\8705U-Empty"
d88 = erased
name98 = "Relation.Unary._._\8838_"
d98 = erased
name110 = "Relation.Unary._._\8839_"
d110 = erased
name120 = "Relation.Unary._._\8840_"
d120 = erased
name130 = "Relation.Unary._._\8841_"
d130 = erased
name140 = "Relation.Unary._._\8834_"
d140 = erased
name150 = "Relation.Unary._._\8835_"
d150 = erased
name160 = "Relation.Unary._._\8836_"
d160 = erased
name170 = "Relation.Unary._._\8837_"
d170 = erased
name180 = "Relation.Unary._._\8838\8242_"
d180 = erased
name192 = "Relation.Unary._._\8839\8242_"
d192 = erased
name202 = "Relation.Unary._._\8840\8242_"
d202 = erased
name212 = "Relation.Unary._._\8841\8242_"
d212 = erased
name222 = "Relation.Unary._._\8834\8242_"
d222 = erased
name232 = "Relation.Unary._._\8835\8242_"
d232 = erased
name242 = "Relation.Unary._._\8836\8242_"
d242 = erased
name252 = "Relation.Unary._._\8837\8242_"
d252 = erased
name262 = "Relation.Unary._.\8709-\8838"
d262 = MAlonzo.RTE.mazUnreachableError
name270 = "Relation.Unary._.\8838-U"
d270 = erased
name278 = "Relation.Unary._._\8812_"
d278 = erased
name290 = "Relation.Unary._._\8746_"
d290 = erased
name302 = "Relation.Unary._._\8745_"
d302 = erased
name314 = "Relation.Unary._._\8658_"
d314 = erased
name328 = "Relation.Unary._.\8899"
d328 = erased
name344 = "Relation.Unary._.\8898"
d344 = erased
name364 = "Relation.Unary._\8866_"
d364 = erased
name384 = "Relation.Unary._\10216\215\10217_"
d384 = erased
name406 = "Relation.Unary._\10216\8857\10217_"
d406 = erased
name426 = "Relation.Unary._\10216\8846\10217_"
d426 = erased
name444 = "Relation.Unary._\10216\8594\10217_"
d444 = erased
name468 = "Relation.Unary._\10216\183\10217_"
d468 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du468 v8 v9
du468 v0 v1
  = coe
      MAlonzo.Code.Data.Product.d28 v1
      (coe MAlonzo.Code.Data.Product.d26 v0)
      (coe MAlonzo.Code.Data.Product.d26 v1)
name488 = "Relation.Unary._~"
d488 = erased
name508 = "Relation.Unary._\10216\8728\10217_"
d508 = erased
name536 = "Relation.Unary._//_"
d536 = erased
name562 = "Relation.Unary._\\\\_"
d562 = erased
name576 = "Relation.Unary.Decidable"
d576 = erased
name590 = "Relation.Unary.\8705?"
d590 v0 v1 v2 v3 v4 v5 = du590 v4 v5
du590 v0 v1
  = let v2 = coe v0 v1 in
    case coe v2 of
      MAlonzo.Code.Relation.Nullary.C22 v3
        -> coe MAlonzo.Code.Relation.Nullary.C26
      MAlonzo.Code.Relation.Nullary.C26
        -> coe MAlonzo.Code.Relation.Nullary.C22 erased
      _ -> coe MAlonzo.RTE.mazUnreachableError