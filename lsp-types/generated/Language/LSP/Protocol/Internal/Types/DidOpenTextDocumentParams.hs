-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.DidOpenTextDocumentParams where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Language.LSP.Protocol.Internal.Types.TextDocumentItem
import qualified Language.LSP.Protocol.Types.Common

{-|
The parameters sent in an open text document notification

-}
data DidOpenTextDocumentParams = DidOpenTextDocumentParams 
  { {-|
  The document that was opened.

  -}
  _textDocument :: Language.LSP.Protocol.Internal.Types.TextDocumentItem.TextDocumentItem
  }
  deriving stock (Show, Eq, Ord, Generic)

instance DeepSeq.NFData DidOpenTextDocumentParams

instance Aeson.ToJSON DidOpenTextDocumentParams where
  toJSON (DidOpenTextDocumentParams arg0) = Aeson.object $ concat $  [["textDocument" Aeson..= arg0]]

instance Aeson.FromJSON DidOpenTextDocumentParams where
  parseJSON = Aeson.withObject "DidOpenTextDocumentParams" $ \arg -> DidOpenTextDocumentParams <$> arg Aeson..: "textDocument"