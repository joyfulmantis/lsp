-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.DidChangeWorkspaceFoldersParams where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Language.LSP.Protocol.Internal.Types.WorkspaceFoldersChangeEvent
import qualified Language.LSP.Protocol.Types.Common

{-|
The parameters of a `workspace/didChangeWorkspaceFolders` notification.

-}
data DidChangeWorkspaceFoldersParams = DidChangeWorkspaceFoldersParams 
  { {-|
  The actual workspace folder change event.

  -}
  _event :: Language.LSP.Protocol.Internal.Types.WorkspaceFoldersChangeEvent.WorkspaceFoldersChangeEvent
  }
  deriving stock (Show, Eq, Ord, Generic)

instance DeepSeq.NFData DidChangeWorkspaceFoldersParams

instance Aeson.ToJSON DidChangeWorkspaceFoldersParams where
  toJSON (DidChangeWorkspaceFoldersParams arg0) = Aeson.object $ concat $  [["event" Aeson..= arg0]]

instance Aeson.FromJSON DidChangeWorkspaceFoldersParams where
  parseJSON = Aeson.withObject "DidChangeWorkspaceFoldersParams" $ \arg -> DidChangeWorkspaceFoldersParams <$> arg Aeson..: "event"