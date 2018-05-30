{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Sum where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.Level

type AgdaEither a b c d = Either c d
name12 = "Data.Sum._\8846_"
d12 a0 a1 a2 a3 = ()
type T12 a0 a1 a2 a3 = MAlonzo.Code.Data.Sum.AgdaEither a0 a1 a2 a3
pattern C24 a0 = Left a0
pattern C28 a0 = Right a0
check24 ::
  (forall xa. (forall xb. (forall xA. (forall xB. (xA -> (T12 xa xb xA xB))))))
check24 = Left
check28 ::
  (forall xa. (forall xb. (forall xA. (forall xB. (xB -> (T12 xa xb xA xB))))))
check28 = Right
cover12 :: MAlonzo.Code.Data.Sum.AgdaEither a1 a2 a3 a4 -> ()
cover12 x
  = case x of
      Left _ -> ()
      Right _ -> ()
name48 = "Data.Sum.[_,_]"
d48 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du48 v6 v7 v8
du48 v0 v1 v2
  = case coe v2 of
      C24 v3 -> coe v0 v3
      C28 v3 -> coe v1 v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name74 = "Data.Sum.[_,_]\8242"
d74 v0 v1 v2 v3 v4 v5 = du74
du74 = du48
name92 = "Data.Sum.map"
d92 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du92 v8 v9
du92 v0 v1
  = coe
      du48 (coe MAlonzo.Code.Function.du38 (\ v2 -> C24) v0)
      (coe MAlonzo.Code.Function.du38 (\ v2 -> C28) v1)
name110 = "Data.Sum._-\8846-_"
d110 = erased
name124 = "Data.Sum.isInj\8321"
d124 v0 v1 v2 v3 v4 = du124 v4
du124 v0
  = case coe v0 of
      C24 v1 -> coe MAlonzo.Code.Data.Maybe.Base.C18 v1
      C28 v1 -> coe MAlonzo.Code.Data.Maybe.Base.C20
      _ -> coe MAlonzo.RTE.mazUnreachableError
name138 = "Data.Sum.isInj\8322"
d138 v0 v1 v2 v3 v4 = du138 v4
du138 v0
  = case coe v0 of
      C24 v1 -> coe MAlonzo.Code.Data.Maybe.Base.C20
      C28 v1 -> coe MAlonzo.Code.Data.Maybe.Base.C18 v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name152 = "Data.Sum.From-inj\8321"
d152 = erased
name166 = "Data.Sum.from-inj\8321"
d166 v0
  = case coe v0 of
      C24 v1 -> coe v1
      C28 v1 -> coe MAlonzo.Code.Level.C20 erased
      _ -> coe MAlonzo.RTE.mazUnreachableError
name178 = "Data.Sum.From-inj\8322"
d178 = erased
name192 = "Data.Sum.from-inj\8322"
d192 v0
  = case coe v0 of
      C24 v1 -> coe MAlonzo.Code.Level.C20 erased
      C28 v1 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError