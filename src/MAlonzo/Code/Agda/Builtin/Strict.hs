{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Agda.Builtin.Strict where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified MAlonzo.RTE
import qualified Data.Text

name18 = "Agda.Builtin.Strict.primForce"
d18 = \ _ _ _ _ x f -> f $! x
name34 = "Agda.Builtin.Strict.primForceLemma"
d34 = erased