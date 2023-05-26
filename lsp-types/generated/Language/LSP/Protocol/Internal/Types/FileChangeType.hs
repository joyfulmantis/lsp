-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.FileChangeType where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Data.Set
import qualified Data.String
import qualified Language.LSP.Protocol.Types.Common
import qualified Language.LSP.Protocol.Types.LspEnum

{-|
The file event type

-}
data FileChangeType = 
    {-|
  The file got created.

  -}
  FileChangeType_Created
  | {-|
  The file got changed.

  -}
  FileChangeType_Changed
  | {-|
  The file got deleted.

  -}
  FileChangeType_Deleted
  deriving stock (Show, Eq, Ord, Generic)
  deriving ( DeepSeq.NFData
  , Aeson.ToJSON
  , Aeson.FromJSON ) via (Language.LSP.Protocol.Types.LspEnum.AsLspEnum FileChangeType Language.LSP.Protocol.Types.Common.UInt)

instance Language.LSP.Protocol.Types.LspEnum.LspEnum FileChangeType where
  knownValues = Data.Set.fromList [FileChangeType_Created
    ,FileChangeType_Changed
    ,FileChangeType_Deleted]
  type EnumBaseType FileChangeType = Language.LSP.Protocol.Types.Common.UInt
  toEnumBaseType FileChangeType_Created = 1
  toEnumBaseType FileChangeType_Changed = 2
  toEnumBaseType FileChangeType_Deleted = 3
  fromEnumBaseType 1 = pure FileChangeType_Created
  fromEnumBaseType 2 = pure FileChangeType_Changed
  fromEnumBaseType 3 = pure FileChangeType_Deleted
  fromEnumBaseType _ = Nothing

