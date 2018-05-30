{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Maybe.Base where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Relation.Nullary

type AgdaMaybe a b = Maybe b
name10 = "Data.Maybe.Base.Maybe"
d10 a0 a1 = ()
type T10 a0 a1 = MAlonzo.Code.Data.Maybe.Base.AgdaMaybe a0 a1
pattern C18 a0 = Just a0
pattern C20 = Nothing
check18 :: (forall xa. (forall xA. (xA -> (T10 xa xA))))
check18 = Just
check20 :: (forall xa. (forall xA. (T10 xa xA)))
check20 = Nothing
cover10 :: MAlonzo.Code.Data.Maybe.Base.AgdaMaybe a1 a2 -> ()
cover10 x
  = case x of
      Just _ -> ()
      Nothing -> ()
name30 = "Data.Maybe.Base.just-injective"
d30 = erased
name32 = "Data.Maybe.Base.boolToMaybe"
d32 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Bool.C8 -> coe C20
      MAlonzo.Code.Agda.Builtin.Bool.C10 -> coe C18 erased
      _ -> coe MAlonzo.RTE.mazUnreachableError
name38 = "Data.Maybe.Base.is-just"
d38 v0 v1 v2 = du38 v2
du38 v0
  = case coe v0 of
      C18 v1 -> coe MAlonzo.Code.Agda.Builtin.Bool.C10
      C20 -> coe MAlonzo.Code.Agda.Builtin.Bool.C8
      _ -> coe MAlonzo.RTE.mazUnreachableError
name44 = "Data.Maybe.Base.is-nothing"
d44 v0 v1 = du44
du44
  = coe
      MAlonzo.Code.Function.du38 (\ v0 -> MAlonzo.Code.Data.Bool.Base.d6)
      du38
name50 = "Data.Maybe.Base.decToMaybe"
d50 v0 v1 v2 = du50 v2
du50 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C22 v1 -> coe C18 v1
      MAlonzo.Code.Relation.Nullary.C26 -> coe C20
      _ -> coe MAlonzo.RTE.mazUnreachableError
name66 = "Data.Maybe.Base.maybe"
d66 v0 v1 v2 v3 v4 v5 v6 = du66 v4 v5 v6
du66 v0 v1 v2
  = case coe v2 of
      C18 v3 -> coe v0 v3
      C20 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name86 = "Data.Maybe.Base.maybe\8242"
d86 v0 v1 v2 v3 = du86
du86 = du66
name92 = "Data.Maybe.Base.From-just"
d92 = erased
name104 = "Data.Maybe.Base.from-just"
d104 v0
  = case coe v0 of
      C18 v1 -> coe v1
      C20 -> coe MAlonzo.Code.Level.C20 erased
      _ -> coe MAlonzo.RTE.mazUnreachableError
name116 = "Data.Maybe.Base.map"
d116 v0 v1 v2 v3 v4 = du116 v4
du116 v0
  = coe du66 (coe MAlonzo.Code.Function.du38 (\ v1 -> C18) v0) C20
name128 = "Data.Maybe.Base.Any"
d128 a0 a1 a2 a3 a4 = ()
data T128 a0 a1 = C142 a0 a1
name152 = "Data.Maybe.Base.All"
d152 a0 a1 a2 a3 a4 = ()
data T152 a0 a1 = C166 a0 a1 | C168
name174 = "Data.Maybe.Base.Is-just"
d174 = erased
name182 = "Data.Maybe.Base.Is-nothing"
d182 = erased
name192 = "Data.Maybe.Base.to-witness"
d192 v0 v1 v2 v3 = du192 v3
du192 v0
  = case coe v0 of
      C142 v1 v2 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name202 = "Data.Maybe.Base.to-witness-T"
d202 v0 v1 v2 v3 = du202 v2
du202 v0
  = case coe v0 of
      C18 v1 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError