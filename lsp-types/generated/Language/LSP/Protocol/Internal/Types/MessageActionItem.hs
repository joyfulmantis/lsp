-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.MessageActionItem where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Data.Text
import qualified Language.LSP.Protocol.Types.Common

{-|

-}
data MessageActionItem = MessageActionItem 
  { {-|
  A short title like 'Retry', 'Open Log' etc.

  -}
  _title :: Data.Text.Text
  }
  deriving stock (Show, Eq, Ord, Generic)

instance DeepSeq.NFData MessageActionItem

instance Aeson.ToJSON MessageActionItem where
  toJSON (MessageActionItem arg0) = Aeson.object $ concat $  [["title" Aeson..= arg0]]

instance Aeson.FromJSON MessageActionItem where
  parseJSON = Aeson.withObject "MessageActionItem" $ \arg -> MessageActionItem <$> arg Aeson..: "title"