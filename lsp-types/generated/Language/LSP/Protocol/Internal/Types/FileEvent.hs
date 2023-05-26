-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.FileEvent where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Language.LSP.Protocol.Internal.Types.FileChangeType
import qualified Language.LSP.Protocol.Types.Common
import qualified Language.LSP.Protocol.Types.Uri

{-|
An event describing a file change.

-}
data FileEvent = FileEvent 
  { {-|
  The file's uri.

  -}
  _uri :: Language.LSP.Protocol.Types.Uri.Uri
  , {-|
  The change type.

  -}
  _type_ :: Language.LSP.Protocol.Internal.Types.FileChangeType.FileChangeType
  }
  deriving stock (Show, Eq, Ord, Generic)

instance DeepSeq.NFData FileEvent

instance Aeson.ToJSON FileEvent where
  toJSON (FileEvent arg0 arg1) = Aeson.object $ concat $  [["uri" Aeson..= arg0]
    ,["type" Aeson..= arg1]]

instance Aeson.FromJSON FileEvent where
  parseJSON = Aeson.withObject "FileEvent" $ \arg -> FileEvent <$> arg Aeson..: "uri" <*> arg Aeson..: "type"