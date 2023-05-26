-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.ShowMessageRequestClientCapabilities where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row as Row
import qualified Data.Row.Aeson as Aeson
import qualified Language.LSP.Protocol.Types.Common

{-|
Show message request client capabilities

-}
data ShowMessageRequestClientCapabilities = ShowMessageRequestClientCapabilities 
  { {-|
  Capabilities specific to the `MessageActionItem` type.

  -}
  _messageActionItem :: (Maybe (Row.Rec ("additionalPropertiesSupport" Row..== (Maybe Bool) Row..+ Row.Empty)))
  }
  deriving stock (Show, Eq, Ord, Generic)

instance DeepSeq.NFData ShowMessageRequestClientCapabilities

instance Aeson.ToJSON ShowMessageRequestClientCapabilities where
  toJSON (ShowMessageRequestClientCapabilities arg0) = Aeson.object $ concat $  ["messageActionItem" Language.LSP.Protocol.Types.Common..=? arg0]

instance Aeson.FromJSON ShowMessageRequestClientCapabilities where
  parseJSON = Aeson.withObject "ShowMessageRequestClientCapabilities" $ \arg -> ShowMessageRequestClientCapabilities <$> arg Aeson..:! "messageActionItem"