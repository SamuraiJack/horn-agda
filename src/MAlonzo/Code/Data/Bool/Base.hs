{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Bool.Base where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Relation.Nullary

name6 = "Data.Bool.Base.not"
d6 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Bool.C8
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C10
      MAlonzo.Code.Agda.Builtin.Bool.C10
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C8
      _ -> coe MAlonzo.RTE.mazUnreachableError
name8 = "Data.Bool.Base.T"
d8 = erased
name14 = "Data.Bool.Base.if_then_else_"
d14 v0 v1 v2 v3 v4 = du14 v2 v3 v4
du14 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Bool.C8 -> coe v2
      MAlonzo.Code.Agda.Builtin.Bool.C10 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name24 = "Data.Bool.Base._\8743_"
d24 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Bool.C8
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C8
      MAlonzo.Code.Agda.Builtin.Bool.C10 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name30 = "Data.Bool.Base._\8744_"
d30 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Bool.C8 -> coe v1
      MAlonzo.Code.Agda.Builtin.Bool.C10
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C10
      _ -> coe MAlonzo.RTE.mazUnreachableError
name36 = "Data.Bool.Base._xor_"
d36 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Bool.C8 -> coe v1
      MAlonzo.Code.Agda.Builtin.Bool.C10 -> coe d6 v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name42 = "Data.Bool.Base._\8799_"
d42 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Bool.C8
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Bool.C8
               -> coe MAlonzo.Code.Relation.Nullary.C22 erased
             MAlonzo.Code.Agda.Builtin.Bool.C10
               -> coe MAlonzo.Code.Relation.Nullary.C26
             _ -> coe MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Bool.C10
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Bool.C8
               -> coe MAlonzo.Code.Relation.Nullary.C26
             MAlonzo.Code.Agda.Builtin.Bool.C10
               -> coe MAlonzo.Code.Relation.Nullary.C22 erased
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name117 = "Data.Bool.Base..absurdlambda"
d117 = erased
name121 = "Data.Bool.Base..absurdlambda"
d121 = erased