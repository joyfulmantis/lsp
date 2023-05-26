-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.TokenFormat where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Data.Set
import qualified Data.String
import qualified Data.Text
import qualified Language.LSP.Protocol.Types.LspEnum

{-|

-}
data TokenFormat = 
    {-|

  -}
  TokenFormat_Relative
  deriving stock (Show, Eq, Ord, Generic)
  deriving ( DeepSeq.NFData
  , Aeson.ToJSON
  , Aeson.FromJSON ) via (Language.LSP.Protocol.Types.LspEnum.AsLspEnum TokenFormat Data.Text.Text)

instance Language.LSP.Protocol.Types.LspEnum.LspEnum TokenFormat where
  knownValues = Data.Set.fromList [TokenFormat_Relative]
  type EnumBaseType TokenFormat = Data.Text.Text
  toEnumBaseType TokenFormat_Relative = "relative"
  fromEnumBaseType "relative" = pure TokenFormat_Relative
  fromEnumBaseType _ = Nothing

