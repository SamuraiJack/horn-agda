{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Agda.Builtin.Unit where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified MAlonzo.RTE
import qualified Data.Text

name6 = "Agda.Builtin.Unit.\8868"
d6 = ()
type T6 = ()
pattern C8 = ()
check8 :: T6
check8 = ()
cover6 :: () -> ()
cover6 x
  = case x of
      () -> ()