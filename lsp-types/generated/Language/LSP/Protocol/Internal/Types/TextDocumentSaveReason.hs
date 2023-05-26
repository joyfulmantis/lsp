-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.TextDocumentSaveReason where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Data.Set
import qualified Data.String
import qualified Language.LSP.Protocol.Types.Common
import qualified Language.LSP.Protocol.Types.LspEnum

{-|
Represents reasons why a text document is saved.

-}
data TextDocumentSaveReason = 
    {-|
  Manually triggered, e.g. by the user pressing save, by starting debugging,
  or by an API call.

  -}
  TextDocumentSaveReason_Manual
  | {-|
  Automatic after a delay.

  -}
  TextDocumentSaveReason_AfterDelay
  | {-|
  When the editor lost focus.

  -}
  TextDocumentSaveReason_FocusOut
  deriving stock (Show, Eq, Ord, Generic)
  deriving ( DeepSeq.NFData
  , Aeson.ToJSON
  , Aeson.FromJSON ) via (Language.LSP.Protocol.Types.LspEnum.AsLspEnum TextDocumentSaveReason Language.LSP.Protocol.Types.Common.UInt)

instance Language.LSP.Protocol.Types.LspEnum.LspEnum TextDocumentSaveReason where
  knownValues = Data.Set.fromList [TextDocumentSaveReason_Manual
    ,TextDocumentSaveReason_AfterDelay
    ,TextDocumentSaveReason_FocusOut]
  type EnumBaseType TextDocumentSaveReason = Language.LSP.Protocol.Types.Common.UInt
  toEnumBaseType TextDocumentSaveReason_Manual = 1
  toEnumBaseType TextDocumentSaveReason_AfterDelay = 2
  toEnumBaseType TextDocumentSaveReason_FocusOut = 3
  fromEnumBaseType 1 = pure TextDocumentSaveReason_Manual
  fromEnumBaseType 2 = pure TextDocumentSaveReason_AfterDelay
  fromEnumBaseType 3 = pure TextDocumentSaveReason_FocusOut
  fromEnumBaseType _ = Nothing

