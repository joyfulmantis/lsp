-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.ShowMessageParams where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Data.Text
import qualified Language.LSP.Protocol.Internal.Types.MessageType
import qualified Language.LSP.Protocol.Types.Common

{-|
The parameters of a notification message.

-}
data ShowMessageParams = ShowMessageParams 
  { {-|
  The message type. See `MessageType`

  -}
  _type_ :: Language.LSP.Protocol.Internal.Types.MessageType.MessageType
  , {-|
  The actual message.

  -}
  _message :: Data.Text.Text
  }
  deriving stock (Show, Eq, Ord, Generic)

instance DeepSeq.NFData ShowMessageParams

instance Aeson.ToJSON ShowMessageParams where
  toJSON (ShowMessageParams arg0 arg1) = Aeson.object $ concat $  [["type" Aeson..= arg0]
    ,["message" Aeson..= arg1]]

instance Aeson.FromJSON ShowMessageParams where
  parseJSON = Aeson.withObject "ShowMessageParams" $ \arg -> ShowMessageParams <$> arg Aeson..: "type" <*> arg Aeson..: "message"