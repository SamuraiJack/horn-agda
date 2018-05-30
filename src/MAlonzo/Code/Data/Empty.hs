{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Empty where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified MAlonzo.RTE
import qualified Data.Text

data AgdaEmpty
name4 = "Data.Empty.\8869"
d4 = ()
type T4 = MAlonzo.Code.Data.Empty.AgdaEmpty
cover4 :: MAlonzo.Code.Data.Empty.AgdaEmpty -> ()
cover4 x = ()
name10 = "Data.Empty.\8869-elim"
d10 = MAlonzo.RTE.mazUnreachableError