-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.TraceValues where

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
data TraceValues = 
    {-|
  Turn tracing off.

  -}
  TraceValues_Off
  | {-|
  Trace messages only.

  -}
  TraceValues_Messages
  | {-|
  Verbose message tracing.

  -}
  TraceValues_Verbose
  deriving stock (Show, Eq, Ord, Generic)
  deriving ( DeepSeq.NFData
  , Aeson.ToJSON
  , Aeson.FromJSON ) via (Language.LSP.Protocol.Types.LspEnum.AsLspEnum TraceValues Data.Text.Text)

instance Language.LSP.Protocol.Types.LspEnum.LspEnum TraceValues where
  knownValues = Data.Set.fromList [TraceValues_Off
    ,TraceValues_Messages
    ,TraceValues_Verbose]
  type EnumBaseType TraceValues = Data.Text.Text
  toEnumBaseType TraceValues_Off = "off"
  toEnumBaseType TraceValues_Messages = "messages"
  toEnumBaseType TraceValues_Verbose = "verbose"
  fromEnumBaseType "off" = pure TraceValues_Off
  fromEnumBaseType "messages" = pure TraceValues_Messages
  fromEnumBaseType "verbose" = pure TraceValues_Verbose
  fromEnumBaseType _ = Nothing

