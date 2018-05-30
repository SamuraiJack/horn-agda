{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Nat.Base where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Relation.Nullary

name6 = "Data.Nat.Base._\8804_"
d6 a0 a1 = ()
data T6 a0 a1 a2 = C10 a0 | C18 a0 a1 a2
name20 = "Data.Nat.Base._<_"
d20 = erased
name26 = "Data.Nat.Base._\8805_"
d26 = erased
name32 = "Data.Nat.Base._>_"
d32 = erased
name38 = "Data.Nat.Base._\8816_"
d38 = erased
name44 = "Data.Nat.Base._\8814_"
d44 = erased
name50 = "Data.Nat.Base._\8817_"
d50 = erased
name56 = "Data.Nat.Base._\8815_"
d56 = erased
name64 = "Data.Nat.Base._\8804\8242_"
d64 a0 a1 = ()
data T64 a0 a1 = C68 | C74 a0 a1
name76 = "Data.Nat.Base._<\8242_"
d76 = erased
name82 = "Data.Nat.Base._\8805\8242_"
d82 = erased
name88 = "Data.Nat.Base._>\8242_"
d88 = erased
name98 = "Data.Nat.Base._\8804\8243_"
d98 a0 a1 = ()
newtype T98 a0 a1 = C112 a0
name108 = "Data.Nat.Base._\8804\8243_.k"
d108 v0
  = case coe v0 of
      C112 v1 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name110 = "Data.Nat.Base._\8804\8243_.proof"
d110 = erased
name114 = "Data.Nat.Base._<\8243_"
d114 = erased
name120 = "Data.Nat.Base._\8805\8243_"
d120 = erased
name126 = "Data.Nat.Base._>\8243_"
d126 = erased
name136 = "Data.Nat.Base.erase"
d136 v0 v1 v2 = du136 v2
du136 v0 = coe C112 (coe d108 v0)
name140 = "Data.Nat.Base.pred"
d140 v0
  = case coe v0 of
      0 -> 0 :: Integer
      _ -> coe subInt v0 (1 :: Integer)
name144 = "Data.Nat.Base._+\8910_"
d144 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           coe addInt (1 :: Integer) (coe d144 v1 v2)
name152 = "Data.Nat.Base._\8852_"
d152 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           case coe v1 of
             0 -> coe v0
             _ -> let v3 = coe subInt v1 (1 :: Integer) in
                  coe addInt (1 :: Integer) (coe d152 v2 v3)
name162 = "Data.Nat.Base._\8851_"
d162 v0 v1
  = case coe v0 of
      0 -> 0 :: Integer
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           case coe v1 of
             0 -> 0 :: Integer
             _ -> let v3 = coe subInt v1 (1 :: Integer) in
                  coe addInt (1 :: Integer) (coe d162 v2 v3)
name172 = "Data.Nat.Base.\8970_/2\8971"
d172 v0
  = case coe v0 of
      0 -> 0 :: Integer
      1 -> 0 :: Integer
      _ -> let v1 = coe subInt v0 (2 :: Integer) in
           coe addInt (1 :: Integer) (coe d172 v1)
name176 = "Data.Nat.Base.\8968_/2\8969"
d176 v0 = coe d172 (coe addInt (1 :: Integer) v0)
name180 = "Data.Nat.Base._^_"
d180 v0 v1
  = case coe v1 of
      0 -> 1 :: Integer
      _ -> let v2 = coe subInt v1 (1 :: Integer) in
           coe mulInt v0 (coe d180 v0 v2)
name188 = "Data.Nat.Base._\8799_"
d188 v0 v1
  = case coe v0 of
      0 -> case coe v1 of
             0 -> coe MAlonzo.Code.Relation.Nullary.C22 erased
             _ -> coe MAlonzo.Code.Relation.Nullary.C26
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           case coe v1 of
             0 -> coe MAlonzo.Code.Relation.Nullary.C26
             _ -> let v3 = coe subInt v1 (1 :: Integer) in coe d188 v2 v3
name218 = "Data.Nat.Base.\8804-pred"
d218 v0 v1 v2 = du218 v2
du218 v0
  = case coe v0 of
      C18 v1 v2 v3 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name222 = "Data.Nat.Base._\8804?_"
d222 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Relation.Nullary.C22 (coe C10 v1)
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           case coe v1 of
             0 -> coe MAlonzo.Code.Relation.Nullary.C26
             _ -> let v3 = coe subInt v1 (1 :: Integer) in
                  let v4 = coe d222 v2 v3 in
                  case coe v4 of
                    MAlonzo.Code.Relation.Nullary.C22 v5
                      -> coe MAlonzo.Code.Relation.Nullary.C22 (coe C18 v2 v3 v5)
                    MAlonzo.Code.Relation.Nullary.C26
                      -> coe MAlonzo.Code.Relation.Nullary.C26
                    _ -> coe MAlonzo.RTE.mazUnreachableError
name246 = "Data.Nat.Base.Ordering"
d246 a0 a1 = ()
data T246 a0 a1 = C252 a0 a1 | C256 a0 | C262 a0 a1
name268 = "Data.Nat.Base.compare"
d268 v0 v1
  = case coe v0 of
      0 -> case coe v1 of
             0 -> coe C256 (0 :: Integer)
             _ -> let v2 = coe subInt v1 (1 :: Integer) in
                  coe C252 (0 :: Integer) v2
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           case coe v1 of
             0 -> coe C262 (0 :: Integer) v2
             _ -> let v3 = coe subInt v1 (1 :: Integer) in
                  let v4 = coe d268 v2 v3 in
                  case coe v4 of
                    C252 v5 v6 -> coe C252 (coe addInt (1 :: Integer) v5) v6
                    C256 v5 -> coe C256 (coe addInt (1 :: Integer) v5)
                    C262 v5 v6 -> coe C262 (coe addInt (1 :: Integer) v5) v6
                    _ -> coe MAlonzo.RTE.mazUnreachableError
name509 = "Data.Nat.Base..absurdlambda"
d509 = erased
name529 = "Data.Nat.Base..absurdlambda"
d529 = erased
name1003 = "Data.Nat.Base..absurdlambda"
d1003 = erased