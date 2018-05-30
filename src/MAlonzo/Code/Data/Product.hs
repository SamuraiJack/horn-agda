{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Product where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Function

name12 = "Data.Product.\931"
d12 a0 a1 a2 a3 = ()
data T12 a0 a1 = C30 a0 a1
name26 = "Data.Product.\931.proj\8321"
d26 v0
  = case coe v0 of
      C30 v1 v2 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name28 = "Data.Product.\931.proj\8322"
d28 v0
  = case coe v0 of
      C30 v1 v2 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name38 = "Data.Product.\931-syntax"
d38 = erased
name46 = "Data.Product.\8707"
d46 = erased
name54 = "Data.Product.\8707-syntax"
d54 = erased
name62 = "Data.Product.\8708"
d62 = erased
name72 = "Data.Product.\8708-syntax"
d72 = erased
name88 = "Data.Product.\8707\8322"
d88 = erased
name104 = "Data.Product._\215_"
d104 = erased
name120 = "Data.Product._,\8242_"
d120 v0 v1 v2 v3 = du120
du120 = C30
name130 = "Data.Product.\8707!"
d130 = erased
name150 = "Data.Product.,_"
d150 v0 v1 v2 v3 v4 v5 = du150 v4 v5
du150 v0 v1 = coe C30 v0 v1
name176 = "Data.Product.<_,_>"
d176 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du176 v6 v7 v8
du176 v0 v1 v2 = coe C30 (coe v0 v2) (coe v1 v2)
name204 = "Data.Product.map"
d204 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du204 v8 v9 v10
du204 v0 v1 v2
  = coe C30 (coe v0 (coe d26 v2)) (coe v1 (coe d26 v2) (coe d28 v2))
name244 = "Data.Product.zip"
d244 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
  = du244 v12 v13 v14 v15
du244 v0 v1 v2 v3
  = coe
      C30 (coe v0 (coe d26 v2) (coe d26 v3))
      (coe v1 (coe d26 v2) (coe d26 v3) (coe d28 v2) (coe d28 v3))
name266 = "Data.Product.swap"
d266 v0 v1 v2 v3 v4 = du266 v4
du266 v0 = coe C30 (coe d28 v0) (coe d26 v0)
name284 = "Data.Product._-\215-_"
d284 = erased
name306 = "Data.Product._-,-_"
d306 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du306 v8 v9
du306 v0 v1 = coe MAlonzo.Code.Function.du260 v0 C30 v1
name330 = "Data.Product.curry"
d330 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du330 v6 v7 v8
du330 v0 v1 v2 = coe v0 (coe C30 v1 v2)
name350 = "Data.Product.curry\8242"
d350 v0 v1 v2 v3 v4 v5 = du350
du350 = du330
name370 = "Data.Product.uncurry"
d370 v0 v1 v2 v3 v4 v5 v6 v7 = du370 v6 v7
du370 v0 v1 = coe v0 (coe d26 v1) (coe d28 v1)
name390 = "Data.Product.uncurry\8242"
d390 v0 v1 v2 v3 v4 v5 = du390
du390 = du370